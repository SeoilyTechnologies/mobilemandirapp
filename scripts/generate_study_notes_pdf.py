from pathlib import Path
import re
import sys

from reportlab.lib import colors
from reportlab.lib.enums import TA_CENTER, TA_LEFT
from reportlab.lib.pagesizes import A4
from reportlab.lib.styles import ParagraphStyle, getSampleStyleSheet
from reportlab.lib.units import inch
from reportlab.platypus import (
    SimpleDocTemplate,
    Paragraph,
    Spacer,
    Preformatted,
    Table,
    TableStyle,
    PageBreak,
)


ROOT = Path(__file__).resolve().parents[1]
DEFAULT_SOURCE = ROOT / "study_notes" / "dart_async_isolate_stream_complete_notes_hinglish.md"
DEFAULT_OUTPUT_DIR = ROOT / "output" / "pdf"
DEFAULT_OUTPUT = DEFAULT_OUTPUT_DIR / "dart_async_isolate_stream_complete_notes_hinglish.pdf"


def escape(text: str) -> str:
    return (
        text.replace("&", "&amp;")
        .replace("<", "&lt;")
        .replace(">", "&gt;")
    )


def inline_format(text: str) -> str:
    text = escape(text)
    text = re.sub(r"`([^`]+)`", r"<font name='Courier'>\1</font>", text)
    text = re.sub(r"\*\*([^*]+)\*\*", r"<b>\1</b>", text)
    return text


def make_styles():
    base = getSampleStyleSheet()
    return {
        "title": ParagraphStyle(
            "Title",
            parent=base["Title"],
            fontName="Helvetica-Bold",
            fontSize=22,
            leading=28,
            textColor=colors.HexColor("#17324d"),
            alignment=TA_CENTER,
            spaceAfter=18,
        ),
        "h2": ParagraphStyle(
            "Heading2",
            parent=base["Heading2"],
            fontName="Helvetica-Bold",
            fontSize=14,
            leading=18,
            textColor=colors.HexColor("#17324d"),
            spaceBefore=14,
            spaceAfter=7,
            keepWithNext=True,
        ),
        "h3": ParagraphStyle(
            "Heading3",
            parent=base["Heading3"],
            fontName="Helvetica-Bold",
            fontSize=12,
            leading=15,
            textColor=colors.HexColor("#27506f"),
            spaceBefore=10,
            spaceAfter=5,
            keepWithNext=True,
        ),
        "body": ParagraphStyle(
            "Body",
            parent=base["BodyText"],
            fontName="Helvetica",
            fontSize=9.8,
            leading=14,
            textColor=colors.HexColor("#1f2933"),
            spaceAfter=6,
        ),
        "bullet": ParagraphStyle(
            "Bullet",
            parent=base["BodyText"],
            fontName="Helvetica",
            fontSize=9.8,
            leading=14,
            leftIndent=18,
            firstLineIndent=-8,
            spaceAfter=4,
        ),
        "code": ParagraphStyle(
            "Code",
            fontName="Courier",
            fontSize=8.3,
            leading=10,
            textColor=colors.HexColor("#182026"),
            backColor=colors.HexColor("#f3f6f8"),
            borderColor=colors.HexColor("#d8e0e6"),
            borderWidth=0.5,
            borderPadding=7,
            leftIndent=0,
            rightIndent=0,
            spaceBefore=4,
            spaceAfter=8,
        ),
        "small": ParagraphStyle(
            "Small",
            parent=base["BodyText"],
            fontName="Helvetica",
            fontSize=8,
            leading=10,
            textColor=colors.HexColor("#5f6b76"),
            alignment=TA_LEFT,
        ),
    }


def parse_table(lines, start):
    table_lines = []
    i = start
    while i < len(lines) and lines[i].strip().startswith("|"):
        table_lines.append(lines[i].strip())
        i += 1

    rows = []
    for row in table_lines:
        cells = [c.strip() for c in row.strip("|").split("|")]
        if all(set(c) <= {"-", ":", " "} for c in cells):
            continue
        rows.append(cells)
    return rows, i


def build_story(source):
    styles = make_styles()
    lines = source.read_text(encoding="utf-8").splitlines()
    story = []
    in_code = False
    code_lines = []
    i = 0

    while i < len(lines):
        raw = lines[i]
        line = raw.rstrip()

        if line.startswith("```"):
            if in_code:
                story.append(Preformatted("\n".join(code_lines), styles["code"]))
                code_lines = []
                in_code = False
            else:
                in_code = True
            i += 1
            continue

        if in_code:
            code_lines.append(raw)
            i += 1
            continue

        stripped = line.strip()

        if not stripped:
            story.append(Spacer(1, 3))
            i += 1
            continue

        if stripped.startswith("|"):
            rows, next_i = parse_table(lines, i)
            if rows:
                data = [
                    [Paragraph(inline_format(cell), styles["body"]) for cell in row]
                    for row in rows
                ]
                table = Table(data, repeatRows=1, hAlign="LEFT")
                table.setStyle(
                    TableStyle(
                        [
                            ("BACKGROUND", (0, 0), (-1, 0), colors.HexColor("#e8f0f7")),
                            ("TEXTCOLOR", (0, 0), (-1, 0), colors.HexColor("#17324d")),
                            ("FONTNAME", (0, 0), (-1, 0), "Helvetica-Bold"),
                            ("GRID", (0, 0), (-1, -1), 0.35, colors.HexColor("#c9d5df")),
                            ("VALIGN", (0, 0), (-1, -1), "TOP"),
                            ("LEFTPADDING", (0, 0), (-1, -1), 6),
                            ("RIGHTPADDING", (0, 0), (-1, -1), 6),
                            ("TOPPADDING", (0, 0), (-1, -1), 5),
                            ("BOTTOMPADDING", (0, 0), (-1, -1), 5),
                        ]
                    )
                )
                story.append(table)
                story.append(Spacer(1, 8))
            i = next_i
            continue

        if stripped.startswith("# "):
            story.append(Paragraph(inline_format(stripped[2:]), styles["title"]))
            story.append(Paragraph("Generated from your study notes", styles["small"]))
            story.append(Spacer(1, 12))
        elif stripped.startswith("## "):
            if story and len(story) > 20 and stripped.startswith("## 9. "):
                story.append(PageBreak())
            story.append(Paragraph(inline_format(stripped[3:]), styles["h2"]))
        elif stripped.startswith("### "):
            story.append(Paragraph(inline_format(stripped[4:]), styles["h3"]))
        elif stripped.startswith("- "):
            story.append(Paragraph("• " + inline_format(stripped[2:]), styles["bullet"]))
        elif re.match(r"^\d+\. ", stripped):
            story.append(Paragraph(inline_format(stripped), styles["bullet"]))
        else:
            story.append(Paragraph(inline_format(stripped), styles["body"]))

        i += 1

    return story


def add_page(canvas, doc):
    canvas.saveState()
    width, height = A4
    canvas.setFont("Helvetica", 8)
    canvas.setFillColor(colors.HexColor("#6b7785"))
    canvas.drawString(0.65 * inch, 0.42 * inch, "Dart Async, Stream, Isolate - Complete Notes")
    canvas.drawRightString(width - 0.65 * inch, 0.42 * inch, f"Page {doc.page}")
    canvas.restoreState()


def main():
    source = Path(sys.argv[1]).resolve() if len(sys.argv) > 1 else DEFAULT_SOURCE
    output = Path(sys.argv[2]).resolve() if len(sys.argv) > 2 else DEFAULT_OUTPUT
    output.parent.mkdir(parents=True, exist_ok=True)
    doc = SimpleDocTemplate(
        str(output),
        pagesize=A4,
        rightMargin=0.62 * inch,
        leftMargin=0.62 * inch,
        topMargin=0.62 * inch,
        bottomMargin=0.72 * inch,
        title="Dart Async, Stream, Isolate - Complete Notes",
        author="Codex",
    )
    doc.build(build_story(source), onFirstPage=add_page, onLaterPages=add_page)
    print(output)


if __name__ == "__main__":
    main()
