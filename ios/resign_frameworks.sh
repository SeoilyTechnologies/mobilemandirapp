#!/bin/sh
set -e

# Re-sign native assets frameworks (such as objective_c.framework) embedded by Flutter
# to ensure they match the active Xcode code signing identity on physical iOS devices.

SIGNING_IDENTITY="${EXPANDED_CODE_SIGN_IDENTITY:-${CODE_SIGN_IDENTITY:-}}"

if [ -z "$SIGNING_IDENTITY" ]; then
  SIGNING_IDENTITY="-"
fi

FRAMEWORKS_DIR="${TARGET_BUILD_DIR}/${FRAMEWORKS_FOLDER_PATH}"

if [ -d "$FRAMEWORKS_DIR" ]; then
  find "$FRAMEWORKS_DIR" -maxdepth 1 -type d -name "*.framework" | while read -r framework; do
    echo "[resign_frameworks] Re-signing $framework with $SIGNING_IDENTITY"
    /usr/bin/codesign --force --verbose --sign "$SIGNING_IDENTITY" --timestamp=none --preserve-metadata=identifier,entitlements "$framework" 2>&1 || true
  done
fi
