// lyrics_repository.dart
import 'package:flutter/material.dart';

import 'lyric_line.dart';


class LyricsRepository {
  // Ganesh Aarti lyrics
  static final List<LyricLine> ganeshAarti = [
    LyricLine(text: "जय गणेश जय गणेश, जय गणेश देवा", start: Duration(seconds: 0), end: Duration(seconds: 24)),
    LyricLine(text: "माता जाकी पार्वती, पिता महादेव", start: Duration(seconds: 24), end: Duration(seconds: 35)),
    LyricLine(text: "जय गणेश जय गणेश, जय गणेश देवा", start: Duration(seconds: 35), end: Duration(seconds: 45)),
    LyricLine(text: "माता जाकी पार्वती, पिता महादेव", start: Duration(seconds: 45), end: Duration(seconds: 66)),
    LyricLine(text: "एक दंत दयावंत, चार भुजाधारी", start: Duration(seconds: 66), end: Duration(seconds: 77)),
    LyricLine(text: "माथे सिंदूर सोहे, मूसे की सवारी", start: Duration(seconds: 77), end: Duration(seconds: 87)),
    LyricLine(text: "एक दंत दयावंत, चार भुजाधारी", start: Duration(seconds: 87), end: Duration(seconds: 99)),
    LyricLine(text: "माथे सिंदूर सोहे, मूसे की सवारी", start: Duration(seconds: 99), end: Duration(seconds: 110)),
    LyricLine(text: "पान चढ़े फूल चढ़े और चढ़े मेवा", start: Duration(seconds: 110), end: Duration(seconds: 120)),
    LyricLine(text: "बड़वन का भोग लगे, संत करें सेवा", start: Duration(seconds: 120), end: Duration(seconds: 131)),
    LyricLine(text: "जय गणेश जय गणेश, जय गणेश देवा", start: Duration(seconds: 131), end: Duration(seconds: 141)),
    LyricLine(text: "माता जाकी पार्वती, पिता महादेव", start: Duration(seconds: 141), end: Duration(seconds: 162)),
    LyricLine(text: "अंधे को आँख दें, कोढ़िन को काया", start: Duration(seconds: 162), end: Duration(seconds: 173)),
    LyricLine(text: "बाँझन को पुत्र दें, निर्धन को माया", start: Duration(seconds: 173), end: Duration(seconds: 184)),
    LyricLine(text: "बाँझन को पुत्र दें, निर्धन को माया", start: Duration(seconds: 184), end: Duration(seconds: 194)),
    LyricLine(text: "सूर शाम शरण आएं, सपल करें सेवा", start: Duration(seconds: 194), end: Duration(seconds: 205)),
    LyricLine(text: "सूर शाम शरण आएं, सपल करें सेवा", start: Duration(seconds: 205), end: Duration(seconds: 215)),
    LyricLine(text: "माता जाकी पार्वती, पिता महादेव", start: Duration(seconds: 215), end: Duration(seconds: 227)),
    LyricLine(text: "जय गणेश जय गणेश, जय गणेश देवा", start: Duration(seconds: 227), end: Duration(seconds: 237)),
    LyricLine(text: "माता जाकी पार्वती, पिता महादेव", start: Duration(seconds: 237), end: Duration(seconds: 248)),
    LyricLine(text: "जय गणेश जय गणेश, जय गणेश देवा", start: Duration(seconds: 248), end: Duration(seconds: 253)),
    LyricLine(text: "माता जाकी पार्वती, पिता महादेव", start: Duration(seconds: 253), end: Duration(seconds: 258)),
  ];


  static final List<LyricLine> shivAartiLyrics = [
    LyricLine(text: "ॐ जय शिव ओंकारा, प्रभु हरि शिव ओंकारा", start: Duration(seconds: 0), end: Duration(seconds: 25)),
    LyricLine(text: "ब्रह्मा, विष्णु, सदाशिव, अर्द्धांगी धारा॥", start: Duration(seconds: 25), end: Duration(seconds: 37)),
    LyricLine(text: "ॐ जय शिव ओंकारा", start: Duration(seconds: 37), end: Duration(seconds: 42)),
    LyricLine(text: "ॐ जय शिव ओंकारा, प्रभु हरि शिव ओंकारा", start: Duration(seconds: 42), end: Duration(seconds: 52)),
    LyricLine(text: "ब्रह्मा, विष्णु, सदाशिव अर्द्धांगी धारा॥", start: Duration(seconds: 52), end: Duration(seconds: 64)),
    LyricLine(text: "ॐ जय शिव ओंकारा,", start: Duration(seconds: 64), end: Duration(seconds: 70)),
    LyricLine(text: "एकानन चतुरानन पञ्चानन राजे।", start: Duration(seconds: 70), end: Duration(seconds: 82)),
    LyricLine(text: "हंसासन गरूड़ासन वृषवाहन साजे॥", start: Duration(seconds: 82), end: Duration(seconds: 94)),
    LyricLine(text: "ॐ जय शिव ओंकारा। दो भुज चार चतुर्भुज दसभुज ते सोहे।", start: Duration(seconds: 94), end: Duration(seconds: 112)),
    LyricLine(text: "तीनो रूप निरखत त्रिभुवन मन मोहे।", start: Duration(seconds: 112), end: Duration(seconds: 124)),
    LyricLine(text: "ॐ जय शिव ओंकारा। अक्षमाला वनमाला मुण्डमालाधारी।", start: Duration(seconds: 124), end: Duration(seconds: 142)),
    LyricLine(text: "चंदन मृदमद चंदा भूले शुभ कारी", start: Duration(seconds: 142), end: Duration(seconds: 154)),
    LyricLine(text: "ॐ जय शिव ओंकारा। श्वेताम्बर पीताम्बर बाघंबर अंगे।", start: Duration(seconds: 154), end: Duration(seconds: 172)),
    LyricLine(text: "ब्रह्मादिक सनकादिक भूतादिक संगे।", start: Duration(seconds: 172), end: Duration(seconds: 184)),
    LyricLine(text: "ॐ जय शिव ओंकारा। कर्मधेचक कमण्डल चक्र त्रिशूल धरता।", start: Duration(seconds: 184), end: Duration(seconds: 202)),
    LyricLine(text: "जगकर्ता जगभर्ता जग पालन करता।", start: Duration(seconds: 202), end: Duration(seconds: 214)),
    LyricLine(text: "ॐ जय शिव ओंकारा। ब्रह्मा, विष्णु, सदाशिव जानत अविवेका।", start: Duration(seconds: 214), end: Duration(seconds: 232)),
    LyricLine(text: "प्रणवाक्षर के मद्धे ये तीनों एका।", start: Duration(seconds: 232), end: Duration(seconds: 244)),
    LyricLine(text: "ॐ जय शिव ओंकारा। त्रिगुण स्वामी जी की आरति जो कोई जन गावे", start: Duration(seconds: 244), end: Duration(seconds: 262)),
    LyricLine(text: "कहत शिवानंद स्वामी, मनवान्छित फल पावे।", start: Duration(seconds: 262), end: Duration(seconds: 274)),
    LyricLine(text: "ॐ जय शिव ओंकारा। ब्रह्मा विश्णु सदाशिव जानत अविवेका", start: Duration(seconds: 274), end: Duration(seconds: 280)),
  ];


  static final List<LyricLine> laxmiJilyrics = [
    LyricLine(text: "ओम जय लक्ष्मी माता| मैया जय लक्ष्मी माता।", start: Duration(seconds: 0), end: Duration(seconds: 25)),
    LyricLine(text: "तुमको निशिदिन सेवत। मैया जीको निशिदिन सेवत। हरि विष्णु विधाता।", start: Duration(seconds: 25), end: Duration(seconds: 37)),
    LyricLine(text: "ओम जय लक्ष्मी माता। ओम जय लक्ष्मी माता। मैया जय लक्ष्मी माता।", start: Duration(seconds: 37), end: Duration(seconds: 53)),
    LyricLine(text: "तुमको निशिदिन सेवत। मैया जीको निशिदिन सेवत। हरि विष्णु विधाता। ओम जय लक्ष्मी माता|", start: Duration(seconds: 53), end: Duration(seconds: 71)),
    LyricLine(text: "उमा, रमा, ब्रह्माणी, तुम ही जग-माता। मैया तुम ही जग-माता।। सूर्य-चंद्रमा ध्यावत, नारद ऋषि गाता॥", start: Duration(seconds: 71), end: Duration(seconds: 95)),
    LyricLine(text: "ओम जय लक्ष्मी माता| दुर्गा रूप निरंजनी सुख सम्पत्ति दाता। मैया सुख सम्पत्ति दाता।", start: Duration(seconds: 95), end: Duration(seconds: 113)),
    LyricLine(text: "जो कोई तुमको ध्याता, ऋद्धि-सिद्धि धन पाता। ओम जय लक्ष्मी माता| तुम पाताल-निवासिनि, तुम ही शुभदाता। मैया तुम ही शुभदाता॥", start: Duration(seconds: 113), end: Duration(seconds: 138)),
    LyricLine(text: "कर्म-प्रभाव-प्रकाशिनी, भवनिधी की त्राता। ओम जय लक्ष्मी माता|", start: Duration(seconds: 138), end: Duration(seconds: 160)),
    LyricLine(text: "जिस घर तुम रहतीं, सब सद्गुण आता। सब संभव हो जाता। मन नहीं घबराता।", start: Duration(seconds: 160), end: Duration(seconds: 186)),
    LyricLine(text: "ओम जय लक्ष्मी माता| तुम बिन यज्ञ न होते, वस्त्र न कोई पाता। खान पान का वैभव।", start: Duration(seconds: 186), end: Duration(seconds: 212)),
    LyricLine(text: "सब तुम से आता। ओम जय लक्ष्मी माता| शुभ गुण मंदिर सुंदर क्षीरोदधि-जाता।", start: Duration(seconds: 212), end: Duration(seconds: 234)),
    LyricLine(text: "रत्न चतुर्दश तुम बिन कोई नहीं पाता। ओम जय लक्ष्मी माता|", start: Duration(seconds: 234), end: Duration(seconds: 252)),
    LyricLine(text: "महालक्ष्मीजी  की आरति जो कोई नरगाता। पुर आनंद समाता। पाप उतर जाता।", start: Duration(seconds: 252), end: Duration(seconds: 276)),
    LyricLine(text: "ओम जय लक्ष्मी माता। मैया जय लक्ष्मी माता। तुमको निशिदिन सेवत। मैया जीको निशिदिन सेवत।", start: Duration(seconds: 276), end: Duration(seconds: 298)),
    LyricLine(text: "हरि विष्णु विधाता। ओम जय लक्ष्मी माता। ओम जय लक्ष्मी माता। मैया जय लक्ष्मी माता। तुमको निशिदिन सेवत। मैया जीको निशिदिन सेवत। हरि विष्णु विधाता।", start: Duration(seconds: 298), end: Duration(seconds: 327)),
    LyricLine(text: "ओम जय लक्ष्मी माता|", start: Duration(seconds: 327), end: Duration(seconds: 330)),
  ];

 static final List<LyricLine> SharashwatiJiAartilyrics = [
   LyricLine(text: "ॐ जय सरस्वती माता", start: Duration(seconds: 0), end: Duration(seconds: 47)),
   LyricLine(text: "जय जय सरस्वति माता", start: Duration(seconds: 47), end: Duration(seconds: 71)),
   LyricLine(text: "जय जय सरस्वति माता", start: Duration(seconds: 71), end: Duration(seconds: 76)),
   LyricLine(text: "सद्‍गुण वैभव शालिनी", start: Duration(seconds: 76), end: Duration(seconds: 84)),
   LyricLine(text: "त्रिभुवन विख्याता", start: Duration(seconds: 84), end: Duration(seconds: 89)),
   LyricLine(text: "जय जय सरस्वति माता", start: Duration(seconds: 89), end: Duration(seconds: 94)),
   LyricLine(text: "चंद्रवदनि पद्मासिनी", start: Duration(seconds: 94), end: Duration(seconds: 119)),
   LyricLine(text: "द्युति मंगलकारी", start: Duration(seconds: 119), end: Duration(seconds: 123)),
   LyricLine(text: "मया दुति मंगरकारी", start: Duration(seconds: 123), end: Duration(seconds: 128)),
   LyricLine(text: "सोहे शुभ हंस सवारी", start: Duration(seconds: 128), end: Duration(seconds: 136)),
   LyricLine(text: "अतुन तेज धारी", start: Duration(seconds: 136), end: Duration(seconds: 140)),
   LyricLine(text: "जय जय सरस्वति माता", start: Duration(seconds: 140), end: Duration(seconds: 153)),
   LyricLine(text: "बाएं कर में वीणा", start: Duration(seconds: 153), end: Duration(seconds: 170)),
   LyricLine(text: "दाएं कर में माला", start: Duration(seconds: 170), end: Duration(seconds: 175)),
   LyricLine(text: "मैया दाए करमाला", start: Duration(seconds: 175), end: Duration(seconds: 180)),
   LyricLine(text: "शीश मुकुट मणी सोहें", start: Duration(seconds: 180), end: Duration(seconds: 188)),
   LyricLine(text: "गल मोतियन माला", start: Duration(seconds: 188), end: Duration(seconds: 192)),
   LyricLine(text: "जय जय सरस्वति माता", start: Duration(seconds: 192), end: Duration(seconds: 210)),
   LyricLine(text: "देवी शरण जो आए", start: Duration(seconds: 210), end: Duration(seconds: 222)),
   LyricLine(text: "उनका उद्धार किया", start: Duration(seconds: 222), end: Duration(seconds: 232)),
   LyricLine(text: "पैठी मंथरा दासी", start: Duration(seconds: 232), end: Duration(seconds: 239)),
   LyricLine(text: "रावण संहार किया", start: Duration(seconds: 239), end: Duration(seconds: 244)),
   LyricLine(text: "जय जय सरस्वति माता", start: Duration(seconds: 244), end: Duration(seconds: 262)),
   LyricLine(text: "विद्या ज्ञान प्रदायिनी", start: Duration(seconds: 262), end: Duration(seconds: 273)),
   LyricLine(text: "ज्ञान प्रकाश भरो", start: Duration(seconds: 273), end: Duration(seconds: 283)),
   LyricLine(text: "मोह, अज्ञान, तिमिर का", start: Duration(seconds: 283), end: Duration(seconds: 291)),
   LyricLine(text: "जग से नाश करो", start: Duration(seconds: 291), end: Duration(seconds: 295)),
   LyricLine(text: "जय जय सरस्वति माता", start: Duration(seconds: 295), end: Duration(seconds: 300)),
   LyricLine(text: "धूप, दीप, फल, मेवा", start: Duration(seconds: 300), end: Duration(seconds: 324)),
   LyricLine(text: "मा सुपार करो", start: Duration(seconds: 324), end: Duration(seconds: 329)),
   LyricLine(text: "मा सुपार करो", start: Duration(seconds: 329), end: Duration(seconds: 334)),
   LyricLine(text: "ज्ञानचक्षु माता", start: Duration(seconds: 334), end: Duration(seconds: 341)),
   LyricLine(text: "जग निस्तार करो", start: Duration(seconds: 341), end: Duration(seconds: 345)),
   LyricLine(text: "जय जय सरस्वति माता", start: Duration(seconds: 345), end: Duration(seconds: 359)),
   LyricLine(text: "मा सरस्वति की आरती", start: Duration(seconds: 359), end: Duration(seconds: 375)),
   LyricLine(text: "जो कोई जन गावे", start: Duration(seconds: 375), end: Duration(seconds: 385)),
   LyricLine(text: "हित कारी सुख कारी", start: Duration(seconds: 385), end: Duration(seconds: 392)),
   LyricLine(text: "ज्ञान भक्ति पावे", start: Duration(seconds: 392), end: Duration(seconds: 396)),
   LyricLine(text: "जय जय सरस्वति माता", start: Duration(seconds: 396), end: Duration(seconds: 415)),
   LyricLine(text: "मा सरस्वति की आरती", start: Duration(seconds: 415), end: Duration(seconds: 425)),
   LyricLine(text: "जो कोई जन गावे,मैया जो कोई जन", start: Duration(seconds: 425), end: Duration(seconds: 435)),
   LyricLine(text: "हित कारी सुख कारी", start: Duration(seconds: 435), end: Duration(seconds: 443)),
   LyricLine(text: "ज्ञान भक्ति पावे", start: Duration(seconds: 443), end: Duration(seconds: 447)),
   LyricLine(text: "जय जय सरस्वति माता", start: Duration(seconds: 447), end: Duration(seconds: 455)),
 ];

  static final List<LyricLine> sunnyDevAartilyrics = [
    LyricLine(text: "जय जय श्री शनि देव भक्तन हितकारी", start: Duration(seconds: 0), end: Duration(seconds: 24)),
    LyricLine(text: "सूरज के पुत्र प्रभु छाया महतारी", start: Duration(seconds: 24), end: Duration(seconds: 28)),
    LyricLine(text: "जय देव जय देव", start: Duration(seconds: 28), end: Duration(seconds: 31)),

    LyricLine(text: "जय जय श्री शनि देव भक्तन हितकारी", start: Duration(seconds: 31), end: Duration(seconds: 35)),
    LyricLine(text: "सूरज के पुत्र प्रभु छाया महतारी", start: Duration(seconds: 35), end: Duration(seconds: 39)),
    LyricLine(text: "जय देव जय देव", start: Duration(seconds: 39), end: Duration(seconds: 50)),

    LyricLine(text: "श्याम अंक वक्र दृष्ट चतुर्भुज धारी", start: Duration(seconds: 50), end: Duration(seconds: 54)),
    LyricLine(text: "नीलांबर धार नाथ गज की आसवारी", start: Duration(seconds: 54), end: Duration(seconds: 58)),
    LyricLine(text: "श्याम अंक वक्र दृष्ट चतुर्भुज धारी", start: Duration(seconds: 58), end: Duration(seconds: 62)),
    LyricLine(text: "नीलांबर धार नाथ गज की आसवारी", start: Duration(seconds: 62), end: Duration(seconds: 66)),
    LyricLine(text: "जय देव जय देव", start: Duration(seconds: 66), end: Duration(seconds: 70)),
    LyricLine(text: "जय जय श्री शनि देव भक्तन हितकारी", start: Duration(seconds: 70), end: Duration(seconds: 74)),
    LyricLine(text: "सूरज के पुत्र प्रभु छाया महतारी", start: Duration(seconds: 74), end: Duration(seconds: 78)),
    LyricLine(text: "जय देव जय देव", start: Duration(seconds: 78), end: Duration(seconds: 94)),

    LyricLine(text: "क्रीट मुकुट शीश रजित दिपत है लिलारी", start: Duration(seconds: 94), end: Duration(seconds: 97)),
    LyricLine(text: "मुक्तन की माला गले शोभित बलिहारी", start: Duration(seconds: 97), end: Duration(seconds: 102)),
    LyricLine(text: "क्रीट मुकुट शीश रजित दिपत है लिलारी", start: Duration(seconds: 102), end: Duration(seconds: 106)),
    LyricLine(text: "मुक्तन की माला गले शोभित बलिहारी", start: Duration(seconds: 106), end: Duration(seconds: 109)),
    LyricLine(text: "जय देव जय देव", start: Duration(seconds: 109), end: Duration(seconds: 114)),
    LyricLine(text: "जय जय श्री शनि देव भक्तन हितकारी", start: Duration(seconds: 114), end: Duration(seconds: 117)),
    LyricLine(text: "सूरज के पुत्र प्रभु छाया महतारी", start: Duration(seconds: 117), end: Duration(seconds: 121)),
    LyricLine(text: "जय देव जय देव", start: Duration(seconds: 121), end: Duration(seconds: 133)),

    LyricLine(text: "मोदक मिष्टान पान चढ़त है सुपारी", start: Duration(seconds: 133), end: Duration(seconds: 137)),
    LyricLine(text: "लोहा तिल तेल उड़द महिषी अति प्यारी", start: Duration(seconds: 137), end: Duration(seconds: 140)),
    LyricLine(text: "मोदक मिष्टान पान चढ़त है सुपारी", start: Duration(seconds: 140), end: Duration(seconds: 145)),
    LyricLine(text: "लोहा तिल तेल उड़द महिषी अति प्यारी", start: Duration(seconds: 145), end: Duration(seconds: 148)),
    LyricLine(text: "जय देव जय देव", start: Duration(seconds: 148), end: Duration(seconds: 151)),
    LyricLine(text: "जय जय श्री शनि देव भक्तन हितकारी", start: Duration(seconds: 151), end: Duration(seconds: 156)),
    LyricLine(text: "सूरज के पुत्र प्रभु छाया महतारी", start: Duration(seconds: 156), end: Duration(seconds: 160)),
    LyricLine(text: "जय देव जय देव", start: Duration(seconds: 160), end: Duration(seconds: 176)),

    LyricLine(text: "देव दनुज ऋषि मुनि सुमरित हर नारी", start: Duration(seconds: 176), end: Duration(seconds: 180)),
    LyricLine(text: "विश्वनाथ धरत ध्यान शरण है तुम्हारी", start: Duration(seconds: 180), end: Duration(seconds: 184)),
    LyricLine(text: "देव दनुज ऋषि मुनि सुमरित हर नारी", start: Duration(seconds: 184), end: Duration(seconds: 187)),
    LyricLine(text: "विश्वनाथ धरत ध्यान शरण है तुम्हारी", start: Duration(seconds: 187), end: Duration(seconds: 191)),
    LyricLine(text: "जय देव जय देव", start: Duration(seconds: 191), end: Duration(seconds: 194)),
    LyricLine(text: "जय जय श्री शनि देव भक्तन हितकारी", start: Duration(seconds: 194), end: Duration(seconds: 199)),
    LyricLine(text: "सूरज के पुत्र प्रभु छाया महतारी", start: Duration(seconds: 199), end: Duration(seconds: 203)),
    LyricLine(text: "जय देव जय देव", start: Duration(seconds: 203), end: Duration(seconds: 210)),
  ];

  static final List<LyricLine> ramayanAartiLyrics = [
    LyricLine(text: "आरती श्री रामायण जी की", start: Duration(seconds: 0), end: Duration(seconds: 30)),
    LyricLine(text: "कीरति कलित ललित सिय पी की", start: Duration(seconds: 30), end: Duration(seconds: 41)),
    LyricLine(text: "आरती श्री रामायण जी की", start: Duration(seconds: 41), end: Duration(seconds: 59)),
    LyricLine(text: "कीरति कलित ललित सिय पी की", start: Duration(seconds: 59), end: Duration(seconds: 65)),
    LyricLine(text: "आरती श्री रामायण जी की", start: Duration(seconds: 65), end: Duration(seconds: 76)),

    LyricLine(text: "गावत ब्रहमादिक मुनि नारद", start: Duration(seconds: 76), end: Duration(seconds: 88)),
    LyricLine(text: "बाल्मीकि बिग्यान बिसारद", start: Duration(seconds: 88), end: Duration(seconds: 100)),
    LyricLine(text: "सुख सनकादिक शेष अरु शारद", start: Duration(seconds: 100), end: Duration(seconds: 112)),

    LyricLine(text: "बरनि पवनसुत कीरति नीकी", start: Duration(seconds: 112), end: Duration(seconds: 118)),
    LyricLine(text: "आरती श्री रामायण जी की", start: Duration(seconds: 118), end: Duration(seconds: 123)),
    LyricLine(text: "कीरति कलित ललित सिय पी की", start: Duration(seconds: 123), end: Duration(seconds: 129)),
    LyricLine(text: "आरती श्री रामायण जी की", start: Duration(seconds: 129), end: Duration(seconds: 141)),

    LyricLine(text: "संतन गावत संभुभवानी", start: Duration(seconds: 141), end: Duration(seconds: 164)),
    LyricLine(text: "अरुघट संभव मुनि विज्ञानी", start: Duration(seconds: 164), end: Duration(seconds: 176)),

    LyricLine(text: "ब्यास आदि कबिबर्ज बखानी", start: Duration(seconds: 176), end: Duration(seconds: 187)),
    LyricLine(text: "कागभुशुंडि गरुड़ के ही की", start: Duration(seconds: 187), end: Duration(seconds: 193)),
    LyricLine(text: "आरती श्री रामायण जी की", start: Duration(seconds: 193), end: Duration(seconds: 199)),
    LyricLine(text: "कीरति कलित ललित सिय पी की", start: Duration(seconds: 199), end: Duration(seconds: 205)),
    LyricLine(text: "आरती श्री रामायण जी की", start: Duration(seconds: 205), end: Duration(seconds: 210)),

    LyricLine(text: "चार युवेद पुरान अष्टदस", start: Duration(seconds: 210), end: Duration(seconds: 227)),
    LyricLine(text: "छहो शास्त्र सब ग्रन्थन को रस", start: Duration(seconds: 227), end: Duration(seconds: 239)),

    LyricLine(text: "तन मन धन संतन सरवस", start: Duration(seconds: 239), end: Duration(seconds: 251)),
    LyricLine(text: "सार अंस समात सबही", start: Duration(seconds: 251), end: Duration(seconds: 257)),
    LyricLine(text: "आरती श्री रामायण जी की", start: Duration(seconds: 257), end: Duration(seconds: 263)),
    LyricLine(text: "कीरति कलित ललित सिय पी की", start: Duration(seconds: 263), end: Duration(seconds: 269)),
    LyricLine(text: "आरती श्री रामायण जी की", start: Duration(seconds: 269), end: Duration(seconds: 274)),

    LyricLine(text: "कलि मल हरनि विषय रस फीकी", start: Duration(seconds: 274), end: Duration(seconds: 303)),
    LyricLine(text: "सुभग सिंगार मुक्ति जोती की", start: Duration(seconds: 303), end: Duration(seconds: 315)),
    LyricLine(text: "हरनी रोग भाव भूरी अमी की", start: Duration(seconds: 315), end: Duration(seconds: 327)),
    LyricLine(text: "तात मात सब बिधि तुलसी की", start: Duration(seconds: 327), end: Duration(seconds: 332)),
    LyricLine(text: "आरती श्री रामायण जी की", start: Duration(seconds: 332), end: Duration(seconds: 338)),
    LyricLine(text: "कीरति कलित ललित सिय पी की", start: Duration(seconds: 338), end: Duration(seconds: 344)),
    LyricLine(text: "आरती श्री रामायण जी की", start: Duration(seconds: 344), end: Duration(seconds: 349)),
    LyricLine(text: "कीरति कलित ललित सिय पी की", start: Duration(seconds: 349), end: Duration(seconds: 355)),
    LyricLine(text: "आरती श्री रामायण जी की", start: Duration(seconds: 355), end: Duration(seconds: 361)),
    LyricLine(text: "कीरति कलित ललित सिय पी की", start: Duration(seconds: 361), end: Duration(seconds: 367)),
  ];



  static final List<LyricLine> OmJayJadeeshlyrics = [
   LyricLine(text: "ओम जय जगदीश हरे", start: Duration(seconds: 0), end: Duration(seconds: 19)),
   LyricLine(text: "स्वामी जय जगदीश हरे", start: Duration(seconds: 19), end: Duration(seconds: 25)),
   LyricLine(text: "भक्त जनों के संकट", start: Duration(seconds: 25), end: Duration(seconds: 29)),
   LyricLine(text: "दास जनों के संकट", start: Duration(seconds: 29), end: Duration(seconds: 33)),
   LyricLine(text: "क्षण में दूर करे", start: Duration(seconds: 33), end: Duration(seconds: 37)),
   LyricLine(text: "ओम जय जगदीश हरे", start: Duration(seconds: 37), end: Duration(seconds: 42)),
   LyricLine(text: "ओम जय जगदीश हरे", start: Duration(seconds: 42), end: Duration(seconds: 47)),
   LyricLine(text: "स्वामी जय जगदीश हरे", start: Duration(seconds: 47), end: Duration(seconds: 53)),
   LyricLine(text: "भक्त जनों के संकट", start: Duration(seconds: 53), end: Duration(seconds: 57)),
   LyricLine(text: "दास जनों के संकट", start: Duration(seconds: 57), end: Duration(seconds: 61)),
   LyricLine(text: "क्षण में दूर करे", start: Duration(seconds: 61), end: Duration(seconds: 65)),
   LyricLine(text: "ओम जय जगदीश हरे", start: Duration(seconds: 65), end: Duration(seconds: 70)),
   LyricLine(text: "जो ध्यावे फल पावे", start: Duration(seconds: 70), end: Duration(seconds: 74)),
   LyricLine(text: "दुख विनसे मन का", start: Duration(seconds: 74), end: Duration(seconds: 78)),
   LyricLine(text: "स्वामी दुख बिन से मन का", start: Duration(seconds: 78), end: Duration(seconds: 82)),
   LyricLine(text: "सुख सम्पत्ति घर आवे", start: Duration(seconds: 82), end: Duration(seconds: 87)),
   LyricLine(text: "सुख सम्पत्ति घर आवे", start: Duration(seconds: 87), end: Duration(seconds: 91)),
   LyricLine(text: "कष्ट मिटे तन का", start: Duration(seconds: 91), end: Duration(seconds: 95)),
   LyricLine(text: "ओम जय जगदीश हरे", start: Duration(seconds: 95), end: Duration(seconds: 100)),
   LyricLine(text: "मात पिता तुम मेरे", start: Duration(seconds: 100), end: Duration(seconds: 104)),
   LyricLine(text: "शरण गहूं  किसकी", start: Duration(seconds: 104), end: Duration(seconds: 108)),
   LyricLine(text: "स्वामी शरण गहूं  किसकी", start: Duration(seconds: 108), end: Duration(seconds: 112)),
   LyricLine(text: "तुम बिन और न दूजा", start: Duration(seconds: 112), end: Duration(seconds: 117)),
   LyricLine(text: "तुम बिन और न दूजा", start: Duration(seconds: 117), end: Duration(seconds: 121)),
   LyricLine(text: "आस करूं जिसकी", start: Duration(seconds: 121), end: Duration(seconds: 125)),
   LyricLine(text: "ओम जय जगदीश हरे", start: Duration(seconds: 125), end: Duration(seconds: 131)),
   LyricLine(text: "तुम पूरण परमात्मा, तुम अन्तर्यामी,", start: Duration(seconds: 131), end: Duration(seconds: 138)),
   LyricLine(text: "स्वामी तुम अन्तर्यामी", start: Duration(seconds: 138), end: Duration(seconds: 143)),
   LyricLine(text: "पारब्रह्म परमेश्वर", start: Duration(seconds: 143), end: Duration(seconds: 146)),
   LyricLine(text: "पारब्रह्म परमेश्वर", start: Duration(seconds: 146), end: Duration(seconds: 151)),
   LyricLine(text: "तुम सबके स्वामी", start: Duration(seconds: 151), end: Duration(seconds: 155)),
   LyricLine(text: "ओम जय जगदीश हरे", start: Duration(seconds: 155), end: Duration(seconds: 160)),
   LyricLine(text: "तुम करुणा के सागर, तुम पालन-कर्ता", start: Duration(seconds: 160), end: Duration(seconds: 168)),
   LyricLine(text: "स्वामी तुम पालन-कर्ता", start: Duration(seconds: 168), end: Duration(seconds: 173)),
   LyricLine(text: "मैं मूरख खल कामी", start: Duration(seconds: 173), end: Duration(seconds: 177)),
   LyricLine(text: "मैं सेवत तुम स्वामी", start: Duration(seconds: 177), end: Duration(seconds: 181)),
   LyricLine(text: "कृपा करो भर्ता", start: Duration(seconds: 181), end: Duration(seconds: 185)),
   LyricLine(text: "ओम जय जगदीश हरे", start: Duration(seconds: 185), end: Duration(seconds: 190)),
   LyricLine(text: "तुम हो एक अगोचर, सबके प्राणपति", start: Duration(seconds: 190), end: Duration(seconds: 198)),
   LyricLine(text: "स्वामी सबके प्राणपति", start: Duration(seconds: 198), end: Duration(seconds: 203)),
   LyricLine(text: "किस विधि मिलूं दयामय", start: Duration(seconds: 203), end: Duration(seconds: 211)),
   LyricLine(text: "तुमको मैं कुमति", start: Duration(seconds: 211), end: Duration(seconds: 215)),
   LyricLine(text: "ओम जय जगदीश हरे", start: Duration(seconds: 215), end: Duration(seconds: 220)),
   LyricLine(text: "दीनबन्धु दुखहर्ता", start: Duration(seconds: 220), end: Duration(seconds: 225)),
   LyricLine(text: "तुम ठाकुर मेरे", start: Duration(seconds: 225), end: Duration(seconds: 228)),
   LyricLine(text: "स्वामी तुम ठाकुर मेरे", start: Duration(seconds: 228), end: Duration(seconds: 233)),
   LyricLine(text: "अपने हाथ उठाओ", start: Duration(seconds: 233), end: Duration(seconds: 237)),
   LyricLine(text: "अपनी शरण लकाओ", start: Duration(seconds: 237), end: Duration(seconds: 241)),
   LyricLine(text: "द्वार पड़ा तेरे", start: Duration(seconds: 241), end: Duration(seconds: 245)),
   LyricLine(text: "ओम जय जगदीश हरे", start: Duration(seconds: 245), end: Duration(seconds: 250)),
   LyricLine(text: "विषय-विकार मिटा‌ओ", start: Duration(seconds: 250), end: Duration(seconds: 255)),
   LyricLine(text: "पाप हरो देवा,स्वामी पाप हरो देवा", start: Duration(seconds: 255), end: Duration(seconds: 263)),
   LyricLine(text: "श्रद्धा-भक्ति बढ़ा‌ओ", start: Duration(seconds: 263), end: Duration(seconds: 271)),
   LyricLine(text: "संतन की सेवा", start: Duration(seconds: 271), end: Duration(seconds: 275)),
   LyricLine(text: "ओम जय जगदीश हरे", start: Duration(seconds: 275), end: Duration(seconds: 284)),
   LyricLine(text: "स्वामी जय जगगीश हरे", start: Duration(seconds: 284), end: Duration(seconds: 290)),
   LyricLine(text: "भक्त जनों के संकट", start: Duration(seconds: 290), end: Duration(seconds: 294)),
   LyricLine(text: "दास जनों के संकट", start: Duration(seconds: 294), end: Duration(seconds: 297)),
   LyricLine(text: "क्षण में दूर करे", start: Duration(seconds: 297), end: Duration(seconds: 301)),
   LyricLine(text: "ओम जय जगदीश हरे", start: Duration(seconds: 301), end: Duration(seconds: 306)),
   LyricLine(text: "ओम जय जगदीश हरे", start: Duration(seconds: 306), end: Duration(seconds: 310)),
   LyricLine(text: "स्वामी जय जगगीश हरे", start: Duration(seconds: 310), end: Duration(seconds: 315)),
   LyricLine(text: "भक्त जनों के संकट", start: Duration(seconds: 315), end: Duration(seconds: 318)),
   LyricLine(text: "दास जनों के संकट", start: Duration(seconds: 318), end: Duration(seconds: 322)),
   LyricLine(text: "क्षण में दूर करे", start: Duration(seconds: 322), end: Duration(seconds: 325)),
   LyricLine(text: "ओम जय जगदीश हरे", start: Duration(seconds: 325), end: Duration(seconds: 330)),
 ];



  // Hanuman Chalisa lyrics (short example)
  static final List<LyricLine> hanumanChalisa = [
    LyricLine(text: "श्री गुरु चरन सरोज रजि निज मन मुकुरु सुधारि बरनऊं रघुबर बिमल जसु जो दायकु फल चारि", start: Duration(seconds: 0), end: Duration(seconds: 24)),
    LyricLine(text: "बुद्धि हीन तनु जानिके, सुमिरौं पवन कुमार", start: Duration(seconds: 24), end: Duration(seconds: 35)),
    LyricLine(text: "बल बुद्धि विद्या देहु मोहिं, हरहु कलेस बिकार", start: Duration(seconds: 35), end: Duration(seconds: 55)),
    LyricLine(text: "जय हनुमान ज्ञान गुण सागर, जय कपीस तिहुँ लोक उजागर", start: Duration(seconds: 55), end: Duration(seconds: 66)),
    LyricLine(text: "राम दूत अतुलित बलधामा, अंजनि पुत्र पवनसुत नामा", start: Duration(seconds: 66), end: Duration(seconds: 78)),
    LyricLine(text: "महाबीर विक्रम बजरंगी, कुमति निवार सुमति के संगी", start: Duration(seconds: 78), end: Duration(seconds: 93)),
    LyricLine(text: "कंचन वरन विराज सुवेसा, कानन कुंडल कुंचित केसा", start: Duration(seconds: 93), end: Duration(seconds: 103)),
    LyricLine(text: "हाथ बज्र और ध्वजा बिराजे, कांधे मूँज जनेऊ साजे", start: Duration(seconds: 103), end: Duration(seconds: 115)),
    LyricLine(text: "संकर सुवन केसरी नंदन, तेज प्रताप महा जग वंदन", start: Duration(seconds: 115), end: Duration(seconds: 130)),
    LyricLine(text: "विद्यावान गुनी अति चातुर, राम काज करिबे को आतुर", start: Duration(seconds: 130), end: Duration(seconds: 141)),
    LyricLine(text: "प्रभु चरित्र सुनिबे को रसिया, राम लखन सीता मन बसिया", start: Duration(seconds: 141), end: Duration(seconds: 151)),
    LyricLine(text: "सूक्ष्म रूप धरि सियहि दिखावा, विकट रूप धरि लंक जरावा", start: Duration(seconds: 151), end: Duration(seconds: 162)),
    LyricLine(text: "धिम रूप धरि असुर संहारे, रामचन्द्र के काज संवारे", start: Duration(seconds: 162), end: Duration(seconds: 177)),
    LyricLine(text: "लाय संजीवन लखन जियाये, श्रीरघुबीर हरषि उर लाये", start: Duration(seconds: 177), end: Duration(seconds: 188)),
    LyricLine(text: "रघुपति कीन्ही बहुत बड़ाई, तुम मम प्रिय भरतहि सम भाई", start: Duration(seconds: 188), end: Duration(seconds: 198)),
    LyricLine(text: "सहस बदन तुम्हरो यश गावैं, अस कहि श्रीपति कंठ लगावैं", start: Duration(seconds: 198), end: Duration(seconds: 209)),
    LyricLine(text: "संकादिक ब्रह्मादि मुनीसा, नारद सारद सहित अहीसा", start: Duration(seconds: 209), end: Duration(seconds: 225)),
    LyricLine(text: "जमकवेर दिगपाल जहाँ ते, कभी कोबिद कहि सके कहाँ ते", start: Duration(seconds: 225), end: Duration(seconds: 236)),
    LyricLine(text: "तुम उपकार सुग्रीवहीं कीन्हा, राम मिलाय राज पद दीन्हा", start: Duration(seconds: 236), end: Duration(seconds: 246)),
    LyricLine(text: "तुम्हरो मंत्र बिभीषन माना, लंकेस्वर भए सब जग जाना", start: Duration(seconds: 246), end: Duration(seconds: 257)),
    LyricLine(text: "जुग सहस्र जोजन पर भानू, लीलो ताहि मधुर फल जानू", start: Duration(seconds: 257), end: Duration(seconds: 273)),
    LyricLine(text: "प्रभु मुद्रिका मेली मुख माहीं, जलधि लांघि गये अचरज नाहीं", start: Duration(seconds: 273), end: Duration(seconds: 283)),
    LyricLine(text: "दुर्गम काज जगत के जेते, सुगम अनुग्रह तुम्हरे तेते", start: Duration(seconds: 283), end: Duration(seconds: 293)),
    LyricLine(text: "राम दुआरे तुम रखवारे, होत न आज्ञा बिनु पैसारे", start: Duration(seconds: 293), end: Duration(seconds: 305)),
    LyricLine(text: "सब सुख लहै तुम्हारी सरना, तुम रच्छक काहू को डर ना", start: Duration(seconds: 305), end: Duration(seconds: 321)),
    LyricLine(text: "आपन तेज सम्हारो आपे, तीनों लोक हांकते काँपे", start: Duration(seconds: 321), end: Duration(seconds: 331)),
    LyricLine(text: "भूत पिशाच निकट नहीं आवे, महावीर जब नाम सुनावे", start: Duration(seconds: 331), end: Duration(seconds: 341)),
    LyricLine(text: "नासै रोग हरे सब पीरा, जपत निरंतर हनुमत बीरा", start: Duration(seconds: 341), end: Duration(seconds: 353)),
    LyricLine(text: "संकट ते हनुमान छुडावै, मन क्रम बचन ध्यान जो लावै", start: Duration(seconds: 353), end: Duration(seconds: 368)),
    LyricLine(text: "सब पर राम तपस्वी राजा, तिन के काज सकल तुम साजा", start: Duration(seconds: 368), end: Duration(seconds: 379)),
    LyricLine(text: "और मनोरथ जो कोई लावै, सोय अमित जीवन फल पावै", start: Duration(seconds: 379), end: Duration(seconds: 390)),
    LyricLine(text: "चारों जुग पर ताप तुम्हारा, है परसिद्ध जगत उजियारा", start: Duration(seconds: 390), end: Duration(seconds: 400)),
    LyricLine(text: "साधु संत के तुम रखवारे, असुर निकंदन राम दुलारे", start: Duration(seconds: 400), end: Duration(seconds: 416)),
    LyricLine(text: "अष्ट सिद्धि नौ निधि के दाता, अस बर दीन्ह जानकी माता", start: Duration(seconds: 416), end: Duration(seconds: 426)),
    LyricLine(text: "राम रसायन तुम्हरे पासा, सदा रहो रघुपति के दासा", start: Duration(seconds: 426), end: Duration(seconds: 437)),
    LyricLine(text: "तुमhare भजन राम को पावै, जन्म जन्म के दुख बिसरावै", start: Duration(seconds: 437), end: Duration(seconds: 448)),
    LyricLine(text: "अंत काल रघुबर पुर जाई, जहाँ जन्म हरि भक्त कहाई", start: Duration(seconds: 448), end: Duration(seconds: 463)),
    LyricLine(text: "और देवता चितन धरई, हनुमत से सर्व सुख करई", start: Duration(seconds: 463), end: Duration(seconds: 474)),
    LyricLine(text: "संकट कटे मिटे सब पीरा, जो सुमिरै हनुमत बलबीरा", start: Duration(seconds: 474), end: Duration(seconds: 485)),
    LyricLine(text: "जय जय जय हनुमान गोसाईं, कृपा करहु गुरुदेव की नाई", start: Duration(seconds: 485), end: Duration(seconds: 495)),
    LyricLine(text: "जो सत बार पाठ कर कोई, छूटहि बंदि महा सुख होई", start: Duration(seconds: 495), end: Duration(seconds: 510)),
    LyricLine(text: "जो यह पढ़ै हनुमान चालीसा, होय सिद्धि साखी गौरीसा", start: Duration(seconds: 510), end: Duration(seconds: 521)),
    LyricLine(text: "तुलसी दास सदा हरी चेरा, कीजै नाथ हृदय महँ डेरा", start: Duration(seconds: 521), end: Duration(seconds: 532)),
    LyricLine(text: "पवन तनय संकट हरन, मंगल मूर्ति रूप", start: Duration(seconds: 532), end: Duration(seconds: 546)),
    LyricLine(text: "राम लक्षन सीता सहित, हृदय बसहु सुर भूप", start: Duration(seconds: 546), end: Duration(seconds: 555)),
  ];

  static final List<LyricLine> hanumanAartiLyrics = [
    LyricLine(text: "आरती कीजै हनुमान लला की। दुष्ट दलन रघुनाथ कला की।।", start: Duration(seconds: 0), end: Duration(seconds: 20)),
    LyricLine(text: "आरती कीजै हनुमान लला की। दुष्ट दलन रघुनाथ कला की।।", start: Duration(seconds: 20), end: Duration(seconds: 38)),
    LyricLine(text: "जाके बल से गिरिवर कांपे।", start: Duration(seconds: 38), end: Duration(seconds: 49)),
    LyricLine(text: "रोग दोष जाके निकट न झांके।।", start: Duration(seconds: 49), end: Duration(seconds: 59)),
    LyricLine(text: "अंजनि पुत्र महाबलदायी। संतान के प्रभु सदा सहाई।।", start: Duration(seconds: 59), end: Duration(seconds: 69)),
    LyricLine(text: "आरती कीजै हनुमान लला की।", start: Duration(seconds: 69), end: Duration(seconds: 78)),
    LyricLine(text: "दे बीरा रघुनाथ पठाए।", start: Duration(seconds: 78), end: Duration(seconds: 89)),
    LyricLine(text: "लंका जारी सिया सुध लाए।।", start: Duration(seconds: 89), end: Duration(seconds: 99)),
    LyricLine(text: "लंका सो कोट समुद्र सी खाई। जात पवनसुत बार न लाई।।", start: Duration(seconds: 99), end: Duration(seconds: 110)),
    LyricLine(text: "आरती कीजै हनुमान लला की।", start: Duration(seconds: 110), end: Duration(seconds: 117)),
    LyricLine(text: "लंका जारी असुर संहारे।", start: Duration(seconds: 117), end: Duration(seconds: 128)),
    LyricLine(text: "सियारामजी के काज संवारे।।", start: Duration(seconds: 128), end: Duration(seconds: 138)),
    LyricLine(text: "लक्ष्मण मूर्छित पड़े सकारे।", start: Duration(seconds: 138), end: Duration(seconds: 144)),
    LyricLine(text: "आनि संजीवन प्राण उबारे।।", start: Duration(seconds: 144), end: Duration(seconds: 149)),
    LyricLine(text: "आरती कीजै हनुमान लला की।", start: Duration(seconds: 149), end: Duration(seconds: 156)),
    LyricLine(text: "पैठी पताल तोरि जमकारे।", start: Duration(seconds: 156), end: Duration(seconds: 167)),
    LyricLine(text: "अहिरावण की भुजा उखाड़े।।", start: Duration(seconds: 167), end: Duration(seconds: 178)),
    LyricLine(text: "बाएं भुजा असुर दल मारे।", start: Duration(seconds: 178), end: Duration(seconds: 183)),
    LyricLine(text: "दाहिने भुजा संतजन तारे।।", start: Duration(seconds: 183), end: Duration(seconds: 188)),
    LyricLine(text: "आरती कीजै हनुमान लला की।", start: Duration(seconds: 188), end: Duration(seconds: 196)),
    LyricLine(text: "सुर-नर-मुनि आरती उतारे।", start: Duration(seconds: 196), end: Duration(seconds: 206)),
    LyricLine(text: "जै जै जै हनुमान उचारे।।", start: Duration(seconds: 206), end: Duration(seconds: 216)),
    LyricLine(text: "कंचन थार कपूर लौ छाई।", start: Duration(seconds: 216), end: Duration(seconds: 222)),
    LyricLine(text: "आरती करत अंजना माई।।", start: Duration(seconds: 222), end: Duration(seconds: 227)),
    LyricLine(text: "आरती कीजै हनुमान लला की।", start: Duration(seconds: 227), end: Duration(seconds: 234)),
    LyricLine(text: "जो हनुमान जी की आरती गावे", start: Duration(seconds: 234), end: Duration(seconds: 245)),
    LyricLine(text: "बसी बैकुंठ परमपद पावै।।", start: Duration(seconds: 245), end: Duration(seconds: 256)),
    LyricLine(text: "आरती कीजे हनुमान लला की।", start: Duration(seconds: 256), end: Duration(seconds: 261)),
    LyricLine(text: "दुष्ट दलन रघुनाथ कला की।।", start: Duration(seconds: 261), end: Duration(seconds: 266)),
    LyricLine(text: "आरती कीजे हनुमान लला की।", start: Duration(seconds: 266), end: Duration(seconds: 271)),
    LyricLine(text: "दुष्ट दलन रघुनाथ कला की।।", start: Duration(seconds: 271), end: Duration(seconds: 276)),
    LyricLine(text: "आरती कीजे हनुमान लला की।", start: Duration(seconds: 276), end: Duration(seconds: 282)),
  ];

  static final List<LyricLine> ambeGauriAartiLyrics = [
    LyricLine(text: "जैयं अम्बे गौरी मैया जैयं श्यामा गौरी", start: Duration(seconds: 0), end: Duration(seconds: 24)),
    LyricLine(text: "तुमको निशिदिन ध्यावत, हरि ब्रह्मा शिवरी", start: Duration(seconds: 24), end: Duration(seconds: 36)),
    LyricLine(text: "ओम जय अम्बे गौरी", start: Duration(seconds: 36), end: Duration(seconds: 42)),
    LyricLine(text: "जय अम्बे गौरी मैया जय श्यामा गौरी", start: Duration(seconds: 42), end: Duration(seconds: 52)),
    LyricLine(text: "तुमको निशिदिन ध्यावत हरि ब्रह्मा शिवरी", start: Duration(seconds: 52), end: Duration(seconds: 64)),
    LyricLine(text: "ओम जय अम्बे गौरी", start: Duration(seconds: 64), end: Duration(seconds: 69)),

    LyricLine(text: "मांग सिन्दूर विराजत, टीको मृगमद को। मैया टीको मृगमद को", start: Duration(seconds: 69), end: Duration(seconds: 81)),
    LyricLine(text: "उज्जवल से दो‌उ नैना, चन्द्रवदन नीको", start: Duration(seconds: 81), end: Duration(seconds: 94)),
    LyricLine(text: "ओम जय अम्बे गौरी", start: Duration(seconds: 94), end: Duration(seconds: 99)),

    LyricLine(text: "कनक समान कलेवर, रक्ताम्बर राजै। मैया रक्ताम्बर राजै", start: Duration(seconds: 99), end: Duration(seconds: 111)),
    LyricLine(text: "रक्तपुष्प की माला, कण्ठन पर साजै", start: Duration(seconds: 111), end: Duration(seconds: 123)),
    LyricLine(text: "ओम जय अम्बे गौरी", start: Duration(seconds: 123), end: Duration(seconds: 129)),

    LyricLine(text: "केहरि वाहन राजत, खड्ग खप्परधारी। मैया खड्ग खप्परधारी", start: Duration(seconds: 129), end: Duration(seconds: 141)),
    LyricLine(text: "सुर-नर-मुनि-जन सेवत, तिनके दुखहारी", start: Duration(seconds: 141), end: Duration(seconds: 153)),
    LyricLine(text: "ओम जय अम्बे गौरी", start: Duration(seconds: 153), end: Duration(seconds: 159)),

    LyricLine(text: "कानन कुण्डल शोभित, नासाग्रे मोती। मैया नासाग्रे मोती", start: Duration(seconds: 159), end: Duration(seconds: 171)),
    LyricLine(text: "कोटिक चन्द्र दिवाकर, राजत सम ज्योति", start: Duration(seconds: 171), end: Duration(seconds: 183)),
    LyricLine(text: "ओम जय अम्बे गौरी", start: Duration(seconds: 183), end: Duration(seconds: 189)),

    LyricLine(text: "शुम्भ-निशुम्भ बिदारे, महिषासुर घाती। मैया महिषासुर घाती", start: Duration(seconds: 189), end: Duration(seconds: 201)),
    LyricLine(text: "धूम्र विलोचन नैना, निशिदिन मदमाती", start: Duration(seconds: 201), end: Duration(seconds: 213)),
    LyricLine(text: "ओम जय अम्बे गौरी", start: Duration(seconds: 213), end: Duration(seconds: 219)),

    LyricLine(text: "चंद्र मुण्ड समभारे, शोणित बीच। मैया शोणित बीच।", start: Duration(seconds: 219), end: Duration(seconds: 231)),
    LyricLine(text: "मधु-कैटभ दो‌उ मारे, सुर भयहीन करे", start: Duration(seconds: 231), end: Duration(seconds: 243)),
    LyricLine(text: "ओम जय अम्बे गौरी", start: Duration(seconds: 243), end: Duration(seconds: 249)),

    LyricLine(text: "ब्रह्माणी रुद्राणी तुम कमला रानी। मैया तुम कमला रानी", start: Duration(seconds: 249), end: Duration(seconds: 261)),
    LyricLine(text: "आगम-निगम-बखानी, तुम शिव पटरानी", start: Duration(seconds: 261), end: Duration(seconds: 273)),
    LyricLine(text: "ओम जय अम्बे गौरी", start: Duration(seconds: 273), end: Duration(seconds: 279)),

    LyricLine(text: "चौंसठ योगिनी मंगल, नृत्य करत भैरूं। मैया नृत्य करत भैरूं", start: Duration(seconds: 279), end: Duration(seconds: 291)),
    LyricLine(text: "बाजत ताल मृदंगा, अरु बाजत डमरु", start: Duration(seconds: 291), end: Duration(seconds: 303)),
    LyricLine(text: "ओम जय अम्बे गौरी", start: Duration(seconds: 303), end: Duration(seconds: 309)),

    LyricLine(text: "तुम ही जग की माता, तुम ही हो भरता। मैया तुम ही हो भरता", start: Duration(seconds: 309), end: Duration(seconds: 321)),
    LyricLine(text: "भक्‍तन की दु:ख हरता, सुख सम्पत्ति करता", start: Duration(seconds: 321), end: Duration(seconds: 333)),
    LyricLine(text: "ओम जय अम्बे गौरी", start: Duration(seconds: 333), end: Duration(seconds: 338)),

    LyricLine(text: "भुजा चार अति शोभित, वर-मुद्रा धारी। मैया वर-मुद्रा धारी", start: Duration(seconds: 338), end: Duration(seconds: 350)),
    LyricLine(text: "मनवान्छित फल पावत, सेवत नर-नारी", start: Duration(seconds: 350), end: Duration(seconds: 362)),
    LyricLine(text: "ओम जय अम्बे गौरी", start: Duration(seconds: 362), end: Duration(seconds: 368)),

    LyricLine(text: "बंचन ठार विराजत, अगर कपूर बाती। मैया अगर कपूर बाती", start: Duration(seconds: 368), end: Duration(seconds: 380)),
    LyricLine(text: "श्रीमालकेतु में राजत, कोटि रतन ज्योति", start: Duration(seconds: 380), end: Duration(seconds: 392)),
    LyricLine(text: "ओम जय अम्बे गौरी", start: Duration(seconds: 392), end: Duration(seconds: 398)),

    LyricLine(text: "श्री अम्बेजी की आरती जो कोई नर गावे। मैया जो कोई नर गावे", start: Duration(seconds: 398), end: Duration(seconds: 410)),
    LyricLine(text: "कहते शिवानन्द स्वामी, सुख संपत्ति पावे", start: Duration(seconds: 410), end: Duration(seconds: 422)),
    LyricLine(text: "ओम जय अम्बे गौरी", start: Duration(seconds: 422), end: Duration(seconds: 427)),

    LyricLine(text: "जय अम्बे गौरी मय्या जैशामां गौरी", start: Duration(seconds: 427), end: Duration(seconds: 437)),
    LyricLine(text: "तुमको निसदिन ध्यावत हरि ब्रह्माशिवरी", start: Duration(seconds: 437), end: Duration(seconds: 448)),
    LyricLine(text: "ओम जय अम्बे गौरी", start: Duration(seconds: 448), end: Duration(seconds: 453)),

    LyricLine(text: "जय अम्बे गौरी मय्या जैशामां गौरी", start: Duration(seconds: 453), end: Duration(seconds: 462)),
    LyricLine(text: "तुमको निसदिन ध्यावत हरि ब्रह्माशिवरी", start: Duration(seconds: 462), end: Duration(seconds: 472)),
    LyricLine(text: "ओम जय अम्बे गौरी", start: Duration(seconds: 472), end: Duration(seconds: 480)),
  ];

  static final List<LyricLine> kunjBihariAartiLyrics = [
    LyricLine(text: "आरती कुंजबिहारी की, श्री गिरिधर कृष्ण मुरारी की", start: Duration(seconds: 30), end: Duration(seconds: 59)),
    LyricLine(text: "आरती कुंजबिहारी की, श्री गिरिधर कृष्ण मुरारी की", start: Duration(seconds: 59), end: Duration(seconds: 66)),
    LyricLine(text: "गले में बैजंती माला, बजावै मुरली मधुर बाला", start: Duration(seconds: 66), end: Duration(seconds: 74)),
    LyricLine(text: "श्रवण में कुण्डल झलकाला, नंद के आनंद नंदलाला", start: Duration(seconds: 74), end: Duration(seconds: 81)),
    LyricLine(text: "गगन सम अंग कांति काली, राधिका चमक रही आली", start: Duration(seconds: 81), end: Duration(seconds: 92)),
    LyricLine(text: "लतन में ठाढ़े बनमाली, भ्रमर सी अलक, कस्तूरी तिलक, चंद्र सी झलक, ललित छवि श्यामा प्यारी की", start: Duration(seconds: 92), end: Duration(seconds: 101)),
    LyricLine(text: "श्री गिरिधर कृष्ण मुरारी की, आरती कुंजबिहारी की, श्री गिरिधर कृष्ण मुरारी की", start: Duration(seconds: 101), end: Duration(seconds: 120)),

    LyricLine(text: "कनकमय मोर मुकुट बिलसै, देवता दरसन को तरसैं, गगन सों सुमन रासि बरसै", start: Duration(seconds: 120), end: Duration(seconds: 131)),
    LyricLine(text: "बजे मुरचंग, मधुर मिरदंग, ग्वालिन संग, अतुल रति गोप कुमारी की", start: Duration(seconds: 131), end: Duration(seconds: 140)),
    LyricLine(text: "श्री गिरिधर कृष्ण मुरारी की, आरती कुंजबिहारी की, श्री गिरिधर कृष्ण मुरारी की", start: Duration(seconds: 140), end: Duration(seconds: 157)),

    LyricLine(text: "जहां ते प्रकट भई गंगा, कलुष कलि हारिणि श्रीगंगा, स्मरन से ते होत मोह भंगा", start: Duration(seconds: 157), end: Duration(seconds: 168)),
    LyricLine(text: "बसी सिव सीस, जटा के बीच, हरै अघ कीच, चरन छवि श्रीबनवारी की", start: Duration(seconds: 168), end: Duration(seconds: 177)),
    LyricLine(text: "श्री गिरिधर कृष्ण मुरारी की, आरती कुंजबिहारी की, श्री गिरिधर कृष्ण मुरारी की", start: Duration(seconds: 177), end: Duration(seconds: 195)),

    LyricLine(text: "चमकती उज्ज्वल तट रेनू, बज रही वृंदावन बेनू, चहुं दिसि गोपि ग्वाल धेनू", start: Duration(seconds: 195), end: Duration(seconds: 206)),
    LyricLine(text: "हंसत मृदु मंद, चांदनी चंद, कटत भव फंद, टेर सुन दीन भिखारी की", start: Duration(seconds: 206), end: Duration(seconds: 215)),
    LyricLine(text: "श्री गिरिधर कृष्ण मुरारी की आरती कुंजबिहारी की", start: Duration(seconds: 215), end: Duration(seconds: 232)),
    LyricLine(text: "श्री गिरिधर कृष्ण मुरारी की आरती कुंजबिहारी की", start: Duration(seconds: 232), end: Duration(seconds: 240)),
  ];

  static final List<LyricLine> shantiMantraLyrics = [
    LyricLine(
      text: "ॐ द्यो शान्ति रंतरिक्षग्मुन् शान्ति पृथिवी शान्ति रापाः शान्ति रोषधयः शान्तिः वनस्पतयः शान्तिर्विश्वेदेवाः",
      start: Duration(seconds: 0),
      end: Duration(seconds: 30),
    ),
    LyricLine(
      text: "शान्तिर्ब्रम्हः शान्तिः",
      start: Duration(seconds: 30),
      end: Duration(seconds: 35),
    ),
    LyricLine(
      text: "सर्वग्वं शान्तिर्विष्वेदेवाः",
      start: Duration(seconds: 35),
      end: Duration(seconds: 39),
    ),
    LyricLine(
      text: "शान्तिरेवशान्तिहि",
      start: Duration(seconds: 39),
      end: Duration(seconds: 43),
    ),
    LyricLine(
      text: "सामा शान्तिरेधि",
      start: Duration(seconds: 43),
      end: Duration(seconds: 49),
    ),
    LyricLine(
      text: "ॐ शान्तिः",
      start: Duration(seconds: 49),
      end: Duration(seconds: 54),
    ),
    LyricLine(
      text: "शान्तिः",
      start: Duration(seconds: 54),
      end: Duration(seconds: 56),
    ),
    LyricLine(
      text: "शान्तिः",
      start: Duration(seconds: 56),
      end: Duration(seconds: 60),
    ),
  ];

  static final List<LyricLine> gayatriMantraLyrics = [
    LyricLine(
      text: "ॐ भूर्भुवः स्वः तत्स॑वि॒तुर्वरे॑ण्यं॒ भर्गो दे॒वस्य॑ धीमहि। धियो॒ यो नः॑ प्रचो॒दया॑त्॥",
      start: Duration(seconds: 0),
      end: Duration(seconds: 20),
    ),
  ];

  static final List<LyricLine> bhojanMantraLyrics = [
    LyricLine(
      text: "ॐ ब्रह्मार्पणं ब्रह्म हविः। ब्रह्माग्नौ ब्रह्मणा हुतम्। ब्रह्मैव तेन गन्तव्यं। ब्रह्मकर्मसमाधिना॥",
      start: Duration(seconds: 0),
      end: Duration(seconds: 22),
    ),
    LyricLine(
      text: "ॐ सहनाववतु। सह नौ भुनक्तु। सहवीर्यं करवावहै। तेजस्विनावधीतमस्तु मा विद्विषावहै॥",
      start: Duration(seconds: 22),
      end: Duration(seconds: 43),
    ),
    LyricLine(
      text: "ॐ शान्तिः शान्तिः शान्तिः॥",
      start: Duration(seconds: 43),
      end: Duration(seconds: 60),
    ),
  ];


  static final List<LyricLine> sankatMochanLyrics = [
    LyricLine(
      text: "बाल समय रवि भक्ष लियो तब, तीनहुं लोक भयो अंधियारों। ताहि सों त्रास भयो जग को, यह संकट काहु सों जात न टारो॥",
      start: Duration(seconds: 0),
      end: Duration(seconds: 24),
    ),
    LyricLine(
      text: "देवन आनि करी बिनती तब, छाड़ी दियो रवि कष्ट निवारो। को नहीं जानत है जग में कपि, संकटमोचन नाम तिहारो॥",
      start: Duration(seconds: 24),
      end: Duration(seconds: 51),
    ),
    LyricLine(
      text: "बालि की त्रास कपीस बसैं गिरि, जात महाप्रभु पंथ निहारो। चौंकि महामुनि साप दियो तब, चाहिए कौन बिचार बिचारो॥",
      start: Duration(seconds: 55),
      end: Duration(seconds: 72),
    ),
    LyricLine(
      text: "कै द्विज रूप लिवाय महाप्रभु, सो तुम दास के शोक निवारो। को नहीं जानत है जग में कपि, संकटमोचन नाम तिहारो॥",
      start: Duration(seconds: 72),
      end: Duration(seconds: 94),
    ),
    LyricLine(
      text: "अंगद के संग लेन गए सीता, खोज कपीस यह बैन उचारो। जीवत न बचिहौं हम सोझू, बिना सुधि लाय इहां पगु धारो॥",
      start: Duration(seconds: 94),
      end: Duration(seconds: 114),
    ),
    LyricLine(
      text: "हेरी थके तट सिन्धु सबे तब, लाय सिया-सुधि प्राण उबारो। को नहीं जानत है जग में कपि, संकटमोचन नाम तिहारो॥",
      start: Duration(seconds: 114),
      end: Duration(seconds: 144),
    ),
    LyricLine(
      text: "रावण त्रास दई सिय को सब, राक्षसी सों कही शोक निवारो। ताहि समय हनुमान महाप्रभु, जाय महा रजनीचर मारो॥",
      start: Duration(seconds: 144),
      end: Duration(seconds: 161),
    ),

    LyricLine(
      text: "चाहत सिया असोक सों आगि सु, दै प्रभु मुद्रिका शोक निवारो। को नहीं जानत है जग में कपि, संकटमोचन नाम तिहारो॥",
      start: Duration(seconds: 161),
      end: Duration(seconds: 182),
    ),

    LyricLine(
      text: "बान लाग्यो उर लछिमन के तब, प्राण तजे सूत रावण मारो। लै गृह बैद्य सुषेन समेत, तबै गिरि द्रोण सु बीर उपारो॥",
      start: Duration(seconds: 182),
      end: Duration(seconds: 203),
    ),
    LyricLine(
      text: "आनि सजीवन हाथ दिए तब, लछिमन के तुम प्रान उबारो। को नहीं जानत है जग में कपि, संकटमोचन नाम तिहारो॥",
      start: Duration(seconds: 203),
      end: Duration(seconds: 231),
    ),
    LyricLine(
      text: "रावण युद्ध अजान कियो तब, नाग की फांस सबै सिर डारो। श्रीरघुनाथ समेत सबै दल, मोह भयो यह संकट भारो॥",
      start: Duration(seconds: 231),
      end: Duration(seconds: 249),
    ),
    LyricLine(
      text: "आनि खगेस तबै हनुमान जु, बंधन काटि सु त्रास निवारो। को नहीं जानत है जग में कपि, संकटमोचन नाम तिहारो॥",
      start: Duration(seconds: 249),
      end: Duration(seconds: 274),
    ),
    LyricLine(
      text: "बंधू समेत जबै अहिरावन, लै रघुनाथ पाताल सिधारो। देबिन्हीं पूजि भलि विधि सों बलि, देउ सबै मिलि मंत्र विचारो॥",
      start: Duration(seconds: 274),
      end: Duration(seconds: 294),
    ),
    LyricLine(
      text: "जाय सहाए भयो तब ही, अहिरावन सैन्य समेत संहारो। को नहीं जानत है जग में कपि, संकटमोचन नाम तिहारो॥",
      start: Duration(seconds: 294),
      end: Duration(seconds: 313),
    ),
    LyricLine(
      text: "काज किये बड़ देवन के तुम, बीर महाप्रभु देखि बिचारो। कौन सो संकट मोर गरीब को, जो तुमसे नहीं जात है टारो॥",
      start: Duration(seconds: 313),
      end: Duration(seconds: 331),
    ),
    LyricLine(
      text: "बेगि हरो हनुमान महाप्रभु, जो कछु संकट होए हमारो। को नहीं जानत है जग में कपि, संकटमोचन नाम तिहारो॥",
      start: Duration(seconds: 331),
      end: Duration(seconds: 360),
    ),
  ];

  static final List<LyricLine> bajrangBaanLyrics = [
    LyricLine(
      text: "निश्चय प्रेम प्रतीति ते, विनय करैं सनमान । तेहि के कारज सकल शुभ, सिद्ध करें हनुमान ॥",
      start: Duration(seconds: 0),
      end: Duration(seconds: 15),
    ),
    LyricLine(
      text: "जय हनुमन्त संत हितकारी। सुन लीजै प्रभु बिनय हमारी ।। जन के काज बिलम्ब न कीजै। आतुर दौरि महासुख दीजै ।।",
      start: Duration(seconds: 15),
      end: Duration(seconds: 53),
    ),
    LyricLine(
      text: "जैसे कुदी सिंधु के पारा। सुरसा बदन पैठी विस्तारा ।।",
      start: Duration(seconds: 54),
      end: Duration(seconds: 69),
    ),
    LyricLine(
      text: "आगे जाय लंकिनी रोका । मारेहु लात गई सुर लोका ।। जाय विभीषण को सुख दीन्हा । सीता निरखि परम-पद लीना ।।",
      start: Duration(seconds: 69),
      end: Duration(seconds: 91),
    ),
    LyricLine(
      text: "बाग उजारि सिन्धु मह बोरा । अति आतुर जमकातर तोरा ।। अक्षय कुमार मारि संहारा । लूम लपेटि लंक को जारा ।।",
      start: Duration(seconds: 91),
      end: Duration(seconds: 117),
    ),
    LyricLine(
      text: "लाह समान लंक जरि गई । जय-जय धुनि सुरपुर में भई ।। अब बिलम्ब केहि कारन स्वामी । कृपा करहु उर अन्तर्यामी ।।",
      start: Duration(seconds: 117),
      end: Duration(seconds: 137),
    ),
    LyricLine(
      text: "जय जय लखन प्रान के दाता । आतुर होई दु:ख करहु निपाता ।। जय हनुमान जयती बल सागर । सुर समूह समरथ भट नागर ।।",
      start: Duration(seconds: 137),
      end: Duration(seconds: 164),
    ),
    LyricLine(
      text: "ओम हनु हनु हनु हनुमंत हठीले । बैरिहि मारु बज्र की कीले॥ ओम ह्नीं ह्नीं ह्नीं हनुमंत कपीसा । ओम हुं हुं हुं हनु अरि उर-सीसा॥",
      start: Duration(seconds: 164),
      end: Duration(seconds: 185),
    ),
    LyricLine(
      text: "जय अंजनी कुमार बलवंता । शंकर सुवन वीर हनुमंता ।। बदन कराल काल कुलघालक। राम सहाय सदा प्रतिपालक ।।",
      start: Duration(seconds: 185),
      end: Duration(seconds: 213),
    ),
    LyricLine(
      text: "भूत प्रेत पिसाच निसाचर। अगिन वैताल काल मारी मर ।। इन्हें मारु, तोहि शपथ राम की । राखउ नाथ मरजाद नाम की ।।",
      start: Duration(seconds: 213),
      end: Duration(seconds: 242),
    ),
    LyricLine(
      text: "सत्य होहु हरी शपथ पायके । राम दूत धरु मारू जायके जय जय जय हनुमन्त अगाधा । दुःख पावत जन केहि अपराधा ।।",
      start: Duration(seconds: 242),
      end: Duration(seconds: 269),
    ),
    LyricLine(
      text: "पूजा जप-तप नेम अचारा ।  नहिं जानत कछु दास तुम्हारा ।। वन उपवन मग गिरि गृह मांहीं । तुम्हरे बल हम डरपत नाहीं ।।",
      start: Duration(seconds: 269),
      end: Duration(seconds: 300),
    ),
    LyricLine(
      text: "जनकसुता हरि दास कहावो । ताकी शपथ विलम्ब न लावो ।। जय जय जय धूनी होती आकासा । सुमिरत होत दुसह दुःख नासा ।।",
      start: Duration(seconds: 300),
      end: Duration(seconds: 326),
    ),
    LyricLine(
      text: "चरन पकरी कर जोरी मनाओं । यही अवसर अब केही गोहराओं ।। उठ उठ चलू तोही राम दोहाई । पाय परौं कर जोरी मनाई ।।",
      start: Duration(seconds: 326),
      end: Duration(seconds: 351),
    ),
    LyricLine(
      text: "ओम चं चं चं चं चपल चलंता । ओम हनु हनु हनु हनु हनुमन्ता ।। ओम हं हं हाँक देत कपि चंचल । ओम सं सं सहमि पराने खल-दल ।।",
      start: Duration(seconds: 351),
      end: Duration(seconds: 374),
    ),
    LyricLine(
      text: "अपने जन को तुरत उबारो। सुमिरत हो या अनंद हमारो। यह बजरंग बान जेही मारे। ताही कहो फिरी कवन उबारे।।",
      start: Duration(seconds: 374),
      end: Duration(seconds: 395),
    ),
    LyricLine(
      text: "पाठ करै बजरंग बाण की । हनुमत रक्षा करैं प्रान की ।। यह बजरंग बाण जो जापैं । ताते भूत-प्रेत सब कापैं ।।",
      start: Duration(seconds: 395),
      end: Duration(seconds: 420),
    ),
    LyricLine(
      text: "धूप देय अरु जपै हमेशा । ताके तन नहिं रहै कलेसा ।। उर प्रतीति दृढ़, सरन ह्वै, पाठ करै धरि ध्यान। बाधा सब हर । करैं सब काम सफल हनुमान॥",
      start: Duration(seconds: 420),
      end: Duration(seconds: 449),
    ),
  ];

  static final List<LyricLine> durgaChalisa = [
    LyricLine(
      text: "नमो नमो दुर्गे सुख करनी। नमो नमो दुर्गे दुःख हरनी॥",
      start: Duration(seconds: 00),
      end: Duration(seconds: 42),
    ),
    LyricLine(
      text: "निरंकार है ज्योति तुम्हारी। तिहूं लोक फैली उजियारी॥",
      start: Duration(seconds: 42),
      end: Duration(seconds: 48),
    ),
    LyricLine(
      text: "शशि ललाट मुख महाविशाला। नेत्र लाल भृकुटि विकराला॥",
      start: Duration(seconds: 48),
      end: Duration(seconds: 55),
    ),
    LyricLine(
      text: "रूप मातु को अधिक सुहावे। दरश करत जन अति सुख पावे॥",
      start: Duration(seconds: 55),
      end: Duration(seconds: 62),
    ),
    LyricLine(
      text: "नमो नमो नमो नमो नमो नमो नमो नमो",
      start: Duration(seconds: 62),
      end: Duration(seconds: 76),
    ),
    LyricLine(
      text: "तुम संसार शक्ति लै कीना। पालन हेतु अन्न धन दीना॥",
      start: Duration(seconds: 76),
      end: Duration(seconds: 89),
    ),
    LyricLine(
      text: "अन्नपूर्णा हुई जग पाला। तुम ही आदि सुन्दरी बाला॥",
      start: Duration(seconds: 89),
      end: Duration(seconds: 96),
    ),
    LyricLine(
      text: "प्रलयकाल सब नाशन हारी। तुम गौरी शिवशंकर प्यारी॥",
      start: Duration(seconds: 96),
      end: Duration(seconds: 103),
    ),
    LyricLine(
      text: "शिव योगी तुम्हरे गुण गावें। ब्रह्मा विष्णु तुम्हें नित ध्यावें॥",
      start: Duration(seconds: 103),
      end: Duration(seconds: 110),
    ),
    LyricLine(
      text: "नमो नमो नमो नमो नमो नमो",
      start: Duration(seconds: 110),
      end: Duration(seconds: 124),
    ),
    LyricLine(
      text: "रूप सरस्वती को तुम धारा। दे सुबुद्धि ऋषि मुनिन उबारा॥",
      start: Duration(seconds: 124),
      end: Duration(seconds: 137),
    ),
    LyricLine(
      text: "धरयो रूप नरसिंह को अम्बा। परगट भई फाड़कर खम्बा॥",
      start: Duration(seconds: 137),
      end: Duration(seconds: 144),
    ),
    LyricLine(
      text: "रक्षा करि प्रह्लाद बचायो। हिरण्याक्ष को स्वर्ग पठायो॥",
      start: Duration(seconds: 144),
      end: Duration(seconds: 151),
    ),
    LyricLine(
      text: "लक्ष्मी रूप धरो जग माहीं। श्री नारायण अंग समाहीं॥",
      start: Duration(seconds: 151),
      end: Duration(seconds: 158),
    ),
    LyricLine(
      text: "नमो नमो नमो नमो नमो नमो",
      start: Duration(seconds: 158),
      end: Duration(seconds: 172),
    ),
    LyricLine(
      text: "क्षीरसिन्धु में करत विलासा। दयासिन्धु दीजै मन आसा॥",
      start: Duration(seconds: 172),
      end: Duration(seconds: 185),
    ),
    LyricLine(
      text: "हिंगलाज में तुम्हीं भवानी। महिमा अमित न जात बखानी॥",
      start: Duration(seconds: 185),
      end: Duration(seconds: 192),
    ),
    LyricLine(
      text: "मातंगी अरु धूमावति माता। भुवनेश्वरी बगला सुख दाता॥",
      start: Duration(seconds: 192),
      end: Duration(seconds: 199),
    ),
    LyricLine(
      text: "श्री भैरव तारा जग तारिणी। छिन्न भाल भव दुःख निवारिणी॥",
      start: Duration(seconds: 199),
      end: Duration(seconds: 206),
    ),
    LyricLine(
      text: "नमो नमो नमो नमो नमो",
      start: Duration(seconds: 206),
      end: Duration(seconds: 220),
    ),
    LyricLine(
      text: "केहरि वाहन सोह भवानी। लांगुर वीर चलत अगवानी॥",
      start: Duration(seconds: 220),
      end: Duration(seconds: 233),
    ),
    LyricLine(
      text: "कर में खप्पर खड्ग विराजै। जाको देख काल डर भाजै॥",
      start: Duration(seconds: 233),
      end: Duration(seconds: 240),
    ),
    LyricLine(
      text: "सोहै अस्त्र और त्रिशूला। जाते उठत शत्रु हिय शूला॥",
      start: Duration(seconds: 240),
      end: Duration(seconds: 247),
    ),
    LyricLine(
      text: "नगरकोट में तुम्हीं विराजत। तिहुँलोक में डंका बाजत॥",
      start: Duration(seconds: 247),
      end: Duration(seconds: 254),
    ),
    LyricLine(
      text: "नमो नमो नमो नमो नमो",
      start: Duration(seconds: 254),
      end: Duration(seconds: 267),
    ),
    LyricLine(
      text: "शुम्भ निशुम्भ दानव तुम मारे। रक्तन बीज शंखन संहारे॥",
      start: Duration(seconds: 267),
      end: Duration(seconds: 281),
    ),
    LyricLine(
      text: "महिषासुर नृप अति अभिमानी। जेहि अघ भार मही अकुलानी॥",
      start: Duration(seconds: 281),
      end: Duration(seconds: 288),
    ),
    LyricLine(
      text: "रूप कराल कालिका धारा। सेन सहित तुम तिहि संहारा॥",
      start: Duration(seconds: 288),
      end: Duration(seconds: 294),
    ),
    LyricLine(
      text: "परी गाढ़ सन्तन पर जब जब। भई सहाय मातु तुम तब तब॥",
      start: Duration(seconds: 294),
      end: Duration(seconds: 301),
    ),
    LyricLine(
      text: "नमो नमो नमो नमो",
      start: Duration(seconds: 301),
      end: Duration(seconds: 318),
    ),
    LyricLine(
      text: "अमर पुरी अरु बासव लोका। तब महिमा सब रहें अशोका॥",
      start: Duration(seconds: 318),
      end: Duration(seconds: 328),
    ),
    LyricLine(
      text: "ज्वाला में है ज्योति तुम्हारी। तुम्हें सदा पूजें नर-नारी॥",
      start: Duration(seconds: 328),
      end: Duration(seconds: 335),
    ),
    LyricLine(
      text: "प्रेम भक्ति से जो यश गावें। दुःख दारिद्र निकट नहिं आवें॥",
      start: Duration(seconds: 335),
      end: Duration(seconds: 343),
    ),
    LyricLine(
      text: "ध्यावे तुम्हें जो नर मन लाई। जन्म-मरण ताकौ छुटि जाई॥",
      start: Duration(seconds: 343),
      end: Duration(seconds: 349),
    ),
    LyricLine(
      text: "नमो नमो नमो नमो",
      start: Duration(seconds: 349),
      end: Duration(seconds: 362),
    ),
    LyricLine(
      text: "जोगी सुर मुनि कहत पुकारी। योग न हो बिन शक्ति तुम्हारी॥",
      start: Duration(seconds: 362),
      end: Duration(seconds: 376),
    ),
    LyricLine(
      text: "शंकर आचारज तप कीनो। काम क्रोध जीति सब लीनो॥",
      start: Duration(seconds: 376),
      end: Duration(seconds: 383),
    ),
    LyricLine(
      text: "निशिदिन ध्यान धरो शंकर को। काहु काल नहिं सुमिरो तुमको॥",
      start: Duration(seconds: 383),
      end: Duration(seconds: 390),
    ),
    LyricLine(
      text: "शक्ति रूप का मरम न पायो। शक्ति गई तब मन पछितायो॥",
      start: Duration(seconds: 390),
      end: Duration(seconds: 396),
    ),
    LyricLine(
      text: "नमो नमो नमो नमो",
      start: Duration(seconds: 396),
      end: Duration(seconds: 410),
    ),
    LyricLine(
      text: "शरणागत हुई कीर्ति बखानी। जय जय जय जगदम्ब भवानी॥",
      start: Duration(seconds: 410),
      end: Duration(seconds: 423),
    ),
    LyricLine(
      text: "भई प्रसन्न आदि जगदम्बा। दई शक्ति नहिं कीन विलम्बा॥",
      start: Duration(seconds: 423),
      end: Duration(seconds: 430),
    ),
    LyricLine(
      text: "मोको मातु कष्ट अति घेरो। तुम बिन कौन हरै दुःख मेरो॥",
      start: Duration(seconds: 430),
      end: Duration(seconds: 437),
    ),
    LyricLine(
      text: "आशा तृष्णा निपट सतावें। रिपु मुरख मोही डरपावे॥",
      start: Duration(seconds: 437),
      end: Duration(seconds: 444),
    ),
    LyricLine(
      text: "नमो नमो नमो नमो",
      start: Duration(seconds: 444),
      end: Duration(seconds: 457),
    ),
    LyricLine(
      text: "शत्रु नाश कीजै महारानी। सुमिरौं इकचित तुम्हें भवानी॥",
      start: Duration(seconds: 457),
      end: Duration(seconds: 470),
    ),
    LyricLine(
      text: "करो कृपा हे मातु दयाला। ऋद्धि-सिद्धि दै करहु निहाला॥",
      start: Duration(seconds: 470),
      end: Duration(seconds: 477),
    ),
    LyricLine(
      text: "जब लगि जियऊं दया फल पाऊं। तुम्हरो यश मैं सदा सुनाऊं॥",
      start: Duration(seconds: 477),
      end: Duration(seconds: 484),
    ),
    LyricLine(
      text: "श्री दुर्गा चालीसा जो कोई गावै। सब सुख भोग परमपद पावै॥",
      start: Duration(seconds: 484),
      end: Duration(seconds: 491),
    ),
    LyricLine(
      text: "देवीदास शरण निज जानी। करहु कृपा जगदम्ब भवानी॥",
      start: Duration(seconds: 491),
      end: Duration(seconds: 518),
    ),
    LyricLine(
      text: "नमो नमो",
      start: Duration(seconds: 518),
      end: Duration(seconds: 548),
    ),
  ];

  static final List<LyricLine> shivChalisa = [
    LyricLine(
      text: "श्री गणेश गिरिजा सुवन , मंगल मूल सुजान।",
      start: Duration(seconds: 0),
      end: Duration(seconds: 16),
    ),
    LyricLine(
      text: "कहत अयोध्यादास तुम, देहु अभय वरदान॥",
      start: Duration(seconds: 16),
      end: Duration(seconds: 47),
    ),
    LyricLine(
      text: "जय गिरिजा पति दीन दयाला । सदा करत सन्तन प्रतिपाला ॥",
      start: Duration(seconds: 47),
      end: Duration(seconds: 59),
    ),
    LyricLine(
      text: "भाल चन्द्रमा सोहत नीके । कानन कुण्डल नागफनी के ॥",
      start: Duration(seconds: 59),
      end: Duration(seconds: 71),
    ),
    LyricLine(
      text: "अंग गौर शिर गंग बहाये । मुण्डमाल तन क्षार लगाए ॥",
      start: Duration(seconds: 71),
      end: Duration(seconds: 83),
    ),
    LyricLine(
      text: "वस्त्र खाल बाघम्बर सोहे । छवि को देखि नाग मन मोहे ॥",
      start: Duration(seconds: 83),
      end: Duration(seconds: 95),
    ),
    LyricLine(
      text: "मैना मातु की हवे दुलारी । बाम अंग सोहत छवि न्यारी ॥",
      start: Duration(seconds: 95),
      end: Duration(seconds: 107),
    ),
    LyricLine(
      text: "कर त्रिशूल सोहत छवि भारी । करत सदा शत्रुन क्षयकारी ॥",
      start: Duration(seconds: 107),
      end: Duration(seconds: 130),
    ),
    LyricLine(
      text: "नन्दि गणेश सोहै तहँ कैसे । सागर मध्य कमल हैं जैसे ॥",
      start: Duration(seconds: 130),
      end: Duration(seconds: 142),
    ),
    LyricLine(
      text: "कार्तिक श्याम और गणराऊ । या छवि को कहि जात न काऊ ॥",
      start: Duration(seconds: 142),
      end: Duration(seconds: 154),
    ),
    LyricLine(
      text: "देवन जबहीं जाय पुकारा । तब ही दुख प्रभु आप निवारा ॥",
      start: Duration(seconds: 154),
      end: Duration(seconds: 166),
    ),
    LyricLine(
      text: "किया उपद्रव तारक भारी । देवन सब मिलि तुमहिं जुहारी ॥",
      start: Duration(seconds: 166),
      end: Duration(seconds: 177),
    ),
    LyricLine(
      text: "तुरत षडानन आप पठायउ । लवनिमेष महँ मारि गिरायउ ॥",
      start: Duration(seconds: 177),
      end: Duration(seconds: 189),
    ),
    LyricLine(
      text: "आप जलंधर असुर संहारा । सुयश तुम्हार विदित संसारा ॥",
      start: Duration(seconds: 189),
      end: Duration(seconds: 212),
    ),
    LyricLine(
      text: "त्रिपुरासुर सन युद्ध मचाई । सबहिं कृपा कर लीन बचाई ॥",
      start: Duration(seconds: 212),
      end: Duration(seconds: 224),
    ),
    LyricLine(
      text: "किया तपहिं भागीरथ भारी । पुरब प्रतिज्ञा तासु पुरारी ॥",
      start: Duration(seconds: 224),
      end: Duration(seconds: 236),
    ),
    LyricLine(
      text: "दानिन महँ तुम सम कोउ नाहीं । सेवक स्तुति करत सदाहीं ॥",
      start: Duration(seconds: 236),
      end: Duration(seconds: 247),
    ),
    LyricLine(
      text: "वेद नाम महिमा तव गाई । अकथ अनादि भेद नहिं पाई ॥",
      start: Duration(seconds: 247),
      end: Duration(seconds: 259),
    ),
    LyricLine(
      text: "प्रकटी उदधि मंथन में ज्वाला । जरत सुरासुर भए विहाला ॥",
      start: Duration(seconds: 259),
      end: Duration(seconds: 271),
    ),
    LyricLine(
      text: "कीन्ही दया तहं करी सहाई । नीलकण्ठ तब नाम कहाई ॥",
      start: Duration(seconds: 271),
      end: Duration(seconds: 294),
    ),
    LyricLine(
      text: "पूजन रामचन्द्र जब कीन्हा । जीत के लंक विभीषण दीन्हा ॥",
      start: Duration(seconds: 294),
      end: Duration(seconds: 306),
    ),
    LyricLine(
      text: "सहस कमल में हो रहे धारी । कीन्ह परीक्षा तबहिं पुरारी ॥",
      start: Duration(seconds: 306),
      end: Duration(seconds: 317),
    ),
    LyricLine(
      text: "एक कमल प्रभु राखेउ जोई । कमल नयन पूजन चहं सोई ॥",
      start: Duration(seconds: 317),
      end: Duration(seconds: 329),
    ),
    LyricLine(
      text: "कठिन भक्ति देखी प्रभु शंकर । भए प्रसन्न दिए इच्छित वर ॥",
      start: Duration(seconds: 329),
      end: Duration(seconds: 340),
    ),
    LyricLine(
      text: "जय जय जय अनन्त अविनाशी । करत कृपा सब के घटवासी ॥",
      start: Duration(seconds: 340),
      end: Duration(seconds: 352),
    ),
    LyricLine(
      text: "दुष्ट सकल नित मोहि सतावै । भ्रमत रहौं मोहि चैन न आवै ॥",
      start: Duration(seconds: 352),
      end: Duration(seconds: 375),
    ),
    LyricLine(
      text: "त्राहि त्राहि मैं नाथ पुकारो । येहि अवसर मोहि आन उबारो ॥",
      start: Duration(seconds: 375),
      end: Duration(seconds: 387),
    ),
    LyricLine(
      text: "लै त्रिशूल शत्रुन को मारो । संकट से मोहि आन उबारो ॥",
      start: Duration(seconds: 387),
      end: Duration(seconds: 398),
    ),
    LyricLine(
      text: "मात-पिता भ्राता सब कोई । संकट में पूछत नहिं कोई ॥",
      start: Duration(seconds: 398),
      end: Duration(seconds: 410),
    ),
    LyricLine(
      text: "स्वामी एक है आस तुम्हारी । आय हरहु मम संकट भारी ॥",
      start: Duration(seconds: 410),
      end: Duration(seconds: 421),
    ),
    LyricLine(
      text: "धन निर्धन को देत सदा हीं । जो कोई जांचे सो फल पाहीं ॥",
      start: Duration(seconds: 421),
      end: Duration(seconds: 432),
    ),
    LyricLine(
      text: "अस्तुति केहि विधि करैं तुम्हारी । क्षमहु नाथ अब चूक हमारी ॥",
      start: Duration(seconds: 432),
      end: Duration(seconds: 456),
    ),
    LyricLine(
      text: "शंकर हो संकट के नाशन । मंगल कारण विघ्न विनाशन ॥",
      start: Duration(seconds: 456),
      end: Duration(seconds: 468),
    ),
    LyricLine(
      text: "योगी यति मुनि ध्यान लगावैं । शारद नारद शीश नवावैं ॥",
      start: Duration(seconds: 468),
      end: Duration(seconds: 479),
    ),
    LyricLine(
      text: "नमो नमो जय नमः शिवाय । सुर ब्रह्मादिक पार न पाय ॥",
      start: Duration(seconds: 479),
      end: Duration(seconds: 491),
    ),
    LyricLine(
      text: "जो यह पाठ करे मन लाई । ता पर होत है शम्भु सहाई ॥",
      start: Duration(seconds: 491),
      end: Duration(seconds: 501),
    ),
    LyricLine(
      text: "ॠनियां जो कोई हो अधिकारी । पाठ करे सो पावन हारी ॥",
      start: Duration(seconds: 501),
      end: Duration(seconds: 513),
    ),
    LyricLine(
      text: "पुत्र हीन कर इच्छा जोई । निश्चय शिव प्रसाद तेहि होई ॥",
      start: Duration(seconds: 513),
      end: Duration(seconds: 536),
    ),
    LyricLine(
      text: "पण्डित त्रयोदशी को लावे । ध्यान पूर्वक होम करावे ॥",
      start: Duration(seconds: 536),
      end: Duration(seconds: 548),
    ),
    LyricLine(
      text: "त्रयोदशी व्रत करै हमेशा । तन नहीं ताके रहै कलेशा ॥",
      start: Duration(seconds: 548),
      end: Duration(seconds: 559),
    ),
    LyricLine(
      text: "धूप दीप नैवेद्य चढ़ावे । शंकर सम्मुख पाठ सुनावे ॥",
      start: Duration(seconds: 559),
      end: Duration(seconds: 571),
    ),
    LyricLine(
      text: "जन्म जन्म के पाप नसावे । अन्त धाम शिवपुर में पावे ॥",
      start: Duration(seconds: 571),
      end: Duration(seconds: 582),
    ),
    LyricLine(
      text: "कहैं अयोध्यादास आस तुम्हारी । जानि सकल दुःख हरहु हमारी ॥",
      start: Duration(seconds: 582),
      end: Duration(seconds: 594),
    ),
    LyricLine(
      text: "नित नेम कर प्रातः ही, पाठ करौ चालीसा। तुम मेरी मनोकामना",
      start: Duration(seconds: 594),
      end: Duration(seconds: 617),
    ),
    LyricLine(
      text: "पूर्ण, करो जगदीश॥ मगसर छठि हेमन्त ॠतु, संवत चौसठ जान ।",
      start: Duration(seconds: 617),
      end: Duration(seconds: 638),
    ),
    LyricLine(
      text: "अस्तुति चालीसा शिवहि, पूर्ण कीन कल्याण ॥",
      start: Duration(seconds: 638),
      end: Duration(seconds: 660),
    ),
  ];
  /// 🔥 Map to link string key → actual lyrics list
  static final Map<String, List<LyricLine>> lyricsMap = {
    "ganeshAarti": ganeshAarti,
    "SharashwatiJiAartilyrics": SharashwatiJiAartilyrics,
    "ganeshAarti": ganeshAarti,
    "shivAartiLyrics": shivAartiLyrics,
    "laxmiJilyrics": laxmiJilyrics,
    "sunnyDevAartilyrics": sunnyDevAartilyrics,
    "ramayanAartiLyrics": ramayanAartiLyrics,
    "ambeGauriAartiLyrics": ambeGauriAartiLyrics,
    "hanumanChalisa": hanumanChalisa,
    "OmJayJadeeshlyrics": OmJayJadeeshlyrics,
    "hanumanAartiLyrics": hanumanAartiLyrics,
    "shivChalisa": shivChalisa,
    "durgaChalisa": durgaChalisa,
    "bajrangBaanLyrics": bajrangBaanLyrics,
    "sankatMochanLyrics": sankatMochanLyrics,
    "bhojanMantraLyrics": bhojanMantraLyrics,
    "gayatriMantraLyrics": gayatriMantraLyrics,
    "shantiMantraLyrics": shantiMantraLyrics,
    "kunjBihariAartiLyrics": kunjBihariAartiLyrics,
  };

  static final List<LyricLine> newshivChalisaLyrics = [
    LyricLine(
      text: "श्री गणेश गिरिजा सुवन ,",
      start: Duration(seconds: 0, milliseconds: 0),
      end: Duration(seconds: 5, milliseconds: 0),
    ),
    LyricLine(
      text: "मंगल मूल सुजान।",
      start: Duration(seconds: 5, milliseconds: 0),
      end: Duration(seconds: 10, milliseconds: 0),
    ),
    LyricLine(
      text: "कहत अयोध्यादास तुम,",
      start: Duration(seconds: 10, milliseconds: 0),
      end: Duration(seconds: 15, milliseconds: 0),
    ),
    LyricLine(
      text: "देहु अभय वरदान॥",
      start: Duration(seconds: 15, milliseconds: 0),
      end: Duration(seconds: 18, milliseconds: 0),
    ),
    LyricLine(
      text: "जय गिरिजा पति दीन दयाला ।",
      start: Duration(seconds: 18, milliseconds: 0),
      end: Duration(seconds: 31, milliseconds: 0),
    ),
    LyricLine(
      text: "सदा करत सन्तन प्रतिपाला ॥",
      start: Duration(seconds: 31, milliseconds: 0),
      end: Duration(seconds: 34, milliseconds: 0),
    ),
    LyricLine(
      text: "भाल चन्द्रमा सोहत नीके ।",
      start: Duration(seconds: 34, milliseconds: 0),
      end: Duration(seconds: 37, milliseconds: 0),
    ),
    LyricLine(
      text: "कानन कुण्डल नागफनी के ॥",
      start: Duration(seconds: 37, milliseconds: 0),
      end: Duration(seconds: 40, milliseconds: 0),
    ),
    LyricLine(
      text: "अंग गौर शिर गंग बहाये ।",
      start: Duration(seconds: 40, milliseconds: 0),
      end: Duration(seconds: 45, milliseconds: 0),
    ),
    LyricLine(
      text: "मुण्डमाल तन क्षार लगाए ॥",
      start: Duration(seconds: 45, milliseconds: 0),
      end: Duration(seconds: 47, milliseconds: 0),
    ),
    LyricLine(
      text: "वस्त्र खाल बाघम्बर सोहे ।",
      start: Duration(seconds: 47, milliseconds: 0),
      end: Duration(seconds: 50, milliseconds: 0),
    ),
    LyricLine(
      text: "छवि को देखि नाग मन मोहे ॥",
      start: Duration(seconds: 50, milliseconds: 0),
      end: Duration(seconds: 58, milliseconds: 0),
    ),
    LyricLine(
      text: "मैना मातु की हवे दुलारी ।",
      start: Duration(seconds: 58, milliseconds: 0),
      end: Duration(seconds: 63, milliseconds: 0),
    ),
    LyricLine(
      text: "बाम अंग सोहत छवि न्यारी ॥",
      start: Duration(seconds: 63, milliseconds: 0),
      end: Duration(seconds: 68, milliseconds: 0),
    ),
    LyricLine(
      text: "कर त्रिशूल सोहत छवि भारी ।",
      start: Duration(seconds: 68, milliseconds: 0),
      end: Duration(seconds: 71, milliseconds: 0),
    ),
    LyricLine(
      text: "करत सदा शत्रुन क्षयकारी ॥",
      start: Duration(seconds: 71, milliseconds: 0),
      end: Duration(seconds: 75, milliseconds: 0),
    ),
    LyricLine(
      text: "नन्दि गणेश सोहै तहँ कैसे ।",
      start: Duration(seconds: 75, milliseconds: 0),
      end: Duration(seconds: 79, milliseconds: 0),
    ),
    LyricLine(
      text: "सागर मध्य कमल हैं जैसे ॥",
      start: Duration(seconds: 79, milliseconds: 0),
      end: Duration(seconds: 82, milliseconds: 0),
    ),
    LyricLine(
      text: "कार्तिक श्याम और गणराऊ ।",
      start: Duration(seconds: 82, milliseconds: 0),
      end: Duration(seconds: 85, milliseconds: 0),
    ),
    LyricLine(
      text: "या छवि को कहि जात न काऊ ॥",
      start: Duration(seconds: 85, milliseconds: 0),
      end: Duration(seconds: 89, milliseconds: 0),
    ),
    LyricLine(
      text: "देवन जबहीं जाय पुकारा ।",
      start: Duration(seconds: 89, milliseconds: 0),
      end: Duration(seconds: 92, milliseconds: 0),
    ),
    LyricLine(
      text: "तब ही दुख प्रभु आप निवारा ॥",
      start: Duration(seconds: 92, milliseconds: 0),
      end: Duration(seconds: 95, milliseconds: 0),
    ),
    LyricLine(
      text: "किया उपद्रव तारक भारी ।",
      start: Duration(seconds: 95, milliseconds: 0),
      end: Duration(seconds: 98, milliseconds: 0),
    ),
    LyricLine(
      text: "देवन सब मिलि तुमहिं जुहारी ॥",
      start: Duration(seconds: 98, milliseconds: 0),
      end: Duration(seconds: 100, milliseconds: 0),
    ),
    LyricLine(
      text: "तुरत षडानन आप पठायउ ।",
      start: Duration(seconds: 100, milliseconds: 0),
      end: Duration(seconds: 103, milliseconds: 0),
    ),
    LyricLine(
      text: "लवनिमेष महँ मारि गिरायउ ॥",
      start: Duration(seconds: 103, milliseconds: 0),
      end: Duration(seconds: 106, milliseconds: 0),
    ),
    LyricLine(
      text: "आप जलंधर असुर संहारा ।",
      start: Duration(seconds: 106, milliseconds: 0),
      end: Duration(seconds: 109, milliseconds: 0),
    ),
    LyricLine(
      text: "सुयश तुम्हार विदित संसारा ॥",
      start: Duration(seconds: 109, milliseconds: 0),
      end: Duration(seconds: 113, milliseconds: 0),
    ),
    LyricLine(
      text: "त्रिपुरासुर सन युद्ध मचाई ।",
      start: Duration(seconds: 113, milliseconds: 0),
      end: Duration(seconds: 116, milliseconds: 0),
    ),
    LyricLine(
      text: "सबहिं कृपा कर लीन बचाई ॥",
      start: Duration(seconds: 116, milliseconds: 0),
      end: Duration(seconds: 119, milliseconds: 0),
    ),
    LyricLine(
      text: "किया तपहिं भागीरथ भारी ।",
      start: Duration(seconds: 119, milliseconds: 0),
      end: Duration(seconds: 122, milliseconds: 0),
    ),
    LyricLine(
      text: "पुरब प्रतिज्ञा तासु पुरारी ॥",
      start: Duration(seconds: 122, milliseconds: 0),
      end: Duration(seconds: 125, milliseconds: 0),
    ),
    LyricLine(
      text: "दानिन महँ तुम सम कोउ नाहीं ।",
      start: Duration(seconds: 125, milliseconds: 0),
      end: Duration(seconds: 128, milliseconds: 0),
    ),
    LyricLine(
      text: "सेवक स्तुति करत सदाहीं ॥",
      start: Duration(seconds: 128, milliseconds: 0),
      end: Duration(seconds: 135, milliseconds: 0),
    ),
    LyricLine(
      text: "वेद नाम महिमा तव गाई।",
      start: Duration(seconds: 135, milliseconds: 0),
      end: Duration(seconds: 138, milliseconds: 0),
    ),
    LyricLine(
      text: "अकथ अनादि भेद नहिं पाई ॥",
      start: Duration(seconds: 138, milliseconds: 0),
      end: Duration(seconds: 143, milliseconds: 0),
    ),
    LyricLine(
      text: "प्रकटी उदधि मंथन में ज्वाला ।",
      start: Duration(seconds: 143, milliseconds: 0),
      end: Duration(seconds: 146, milliseconds: 0),
    ),
    LyricLine(
      text: "जरत सुरासुर भए विहाला ॥",
      start: Duration(seconds: 146, milliseconds: 0),
      end: Duration(seconds: 148, milliseconds: 0),
    ),
    LyricLine(
      text: "कीन्ही दया तहं करी सहाई ।",
      start: Duration(seconds: 148, milliseconds: 0),
      end: Duration(seconds: 151, milliseconds: 0),
    ),
    LyricLine(
      text: "नीलकण्ठ तब नाम कहाई ॥",
      start: Duration(seconds: 151, milliseconds: 0),
      end: Duration(seconds: 156, milliseconds: 0),
    ),
    LyricLine(
      text: "पूजन रामचन्द्र जब कीन्हा ।",
      start: Duration(seconds: 156, milliseconds: 0),
      end: Duration(seconds: 159, milliseconds: 0),
    ),
    LyricLine(
      text: "जीत के लंक विभीषण दीन्हा ॥",
      start: Duration(seconds: 159, milliseconds: 0),
      end: Duration(seconds: 162, milliseconds: 0),
    ),
    LyricLine(
      text: "सहस कमल में हो रहे धारी ।",
      start: Duration(seconds: 162, milliseconds: 0),
      end: Duration(seconds: 165, milliseconds: 0),
    ),
    LyricLine(
      text: "कीन्ह परीक्षा तबहिं पुरारी ॥",
      start: Duration(seconds: 165, milliseconds: 0),
      end: Duration(seconds: 172, milliseconds: 0),
    ),
    LyricLine(
      text: "एक कमल प्रभु राखेउ जोई ।",
      start: Duration(seconds: 172, milliseconds: 0),
      end: Duration(seconds: 175, milliseconds: 0),
    ),
    LyricLine(
      text: "कमल नयन पूजन चहं सोई ॥",
      start: Duration(seconds: 175, milliseconds: 0),
      end: Duration(seconds: 178, milliseconds: 0),
    ),
    LyricLine(
      text: "कठिन भक्ति देखी प्रभु शंकर ।",
      start: Duration(seconds: 178, milliseconds: 0),
      end: Duration(seconds: 181, milliseconds: 0),
    ),
    LyricLine(
      text: "भए प्रसन्न दिए इच्छित वर ॥",
      start: Duration(seconds: 181, milliseconds: 0),
      end: Duration(seconds: 184, milliseconds: 0),
    ),
    LyricLine(
      text: "जय जय जय अनन्त अविनाशी ।",
      start: Duration(seconds: 184, milliseconds: 0),
      end: Duration(seconds: 187, milliseconds: 0),
    ),
    LyricLine(
      text: "करत कृपा सब के घटवासी ॥",
      start: Duration(seconds: 187, milliseconds: 0),
      end: Duration(seconds: 190, milliseconds: 0),
    ),
    LyricLine(
      text: "दुष्ट सकल नित मोहि सतावै ।",
      start: Duration(seconds: 190, milliseconds: 0),
      end: Duration(seconds: 193, milliseconds: 0),
    ),
    LyricLine(
      text: "भ्रमत रहौं मोहि चैन न आवै ॥",
      start: Duration(seconds: 193, milliseconds: 0),
      end: Duration(seconds: 196, milliseconds: 0),
    ),
    LyricLine(
      text: "त्राहि त्राहि मैं नाथ पुकारो ।",
      start: Duration(seconds: 196, milliseconds: 0),
      end: Duration(seconds: 199, milliseconds: 0),
    ),
    LyricLine(
      text: "लै त्रिशूल शत्रुन को मारो ।",
      start: Duration(seconds: 199, milliseconds: 0),
      end: Duration(seconds: 202, milliseconds: 0),
    ),
    LyricLine(
      text: "संकट से मोहि आन उबारो ॥",
      start: Duration(seconds: 202, milliseconds: 0),
      end: Duration(seconds: 205, milliseconds: 0),
    ),
    LyricLine(
      text: "मात-पिता भ्राता सब होई ।",
      start: Duration(seconds: 205, milliseconds: 0),
      end: Duration(seconds: 208, milliseconds: 0),
    ),
    LyricLine(
      text: "संकट में पूछत नहिं कोई ॥",
      start: Duration(seconds: 208, milliseconds: 0),
      end: Duration(seconds: 211, milliseconds: 0),
    ),
    LyricLine(
      text: "स्वामी एक है आस तुम्हारी ।",
      start: Duration(seconds: 211, milliseconds: 0),
      end: Duration(seconds: 214, milliseconds: 0),
    ),
    LyricLine(
      text: "आय हरहु मम संकट भारी ॥",
      start: Duration(seconds: 214, milliseconds: 0),
      end: Duration(seconds: 221, milliseconds: 0),
    ),
    LyricLine(
      text: "धन निर्धन को देत सदा हीं ।",
      start: Duration(seconds: 221, milliseconds: 0),
      end: Duration(seconds: 224, milliseconds: 0),
    ),
    LyricLine(
      text: "जो कोई जांचे सो फल पाहीं ॥",
      start: Duration(seconds: 224, milliseconds: 0),
      end: Duration(seconds: 226, milliseconds: 0),
    ),
    LyricLine(
      text: "जो कोई जांचे सो फल पाहीं ॥",
      start: Duration(seconds: 226, milliseconds: 0),
      end: Duration(seconds: 229, milliseconds: 0),
    ),
    LyricLine(
      text: "अस्तुति केहि विधि करैं तुम्हारी ।",
      start: Duration(seconds: 229, milliseconds: 0),
      end: Duration(seconds: 232, milliseconds: 0),
    ),
    LyricLine(
      text: "क्षमहु नाथ अब चूक हमारी ॥",
      start: Duration(seconds: 232, milliseconds: 0),
      end: Duration(seconds: 235, milliseconds: 0),
    ),
    LyricLine(
      text: "शंकर हो संकट के नाशन ।",
      start: Duration(seconds: 235, milliseconds: 0),
      end: Duration(seconds: 238, milliseconds: 0),
    ),
    LyricLine(
      text: "मंगल कारण विघ्न विनाशन ॥",
      start: Duration(seconds: 238, milliseconds: 0),
      end: Duration(seconds: 241, milliseconds: 0),
    ),
    LyricLine(
      text: "योगी यति मुनि ध्यान लगावैं ।",
      start: Duration(seconds: 241, milliseconds: 0),
      end: Duration(seconds: 244, milliseconds: 0),
    ),
    LyricLine(
      text: "शारद नारद शीश नवावैं ॥",
      start: Duration(seconds: 244, milliseconds: 0),
      end: Duration(seconds: 250, milliseconds: 0),
    ),
    LyricLine(
      text: "नमो नमो जय नमः शिवाय ।",
      start: Duration(seconds: 250, milliseconds: 0),
      end: Duration(seconds: 252, milliseconds: 0),
    ),
    LyricLine(
      text: "सुर ब्रह्मादिक पार न पाय ॥",
      start: Duration(seconds: 252, milliseconds: 0),
      end: Duration(seconds: 257, milliseconds: 0),
    ),
    LyricLine(
      text: "जो यह पाठ करे मन लाई ।",
      start: Duration(seconds: 257, milliseconds: 0),
      end: Duration(seconds: 260, milliseconds: 0),
    ),
    LyricLine(
      text: "ता पर होत है शम्भु सहाई ॥",
      start: Duration(seconds: 260, milliseconds: 0),
      end: Duration(seconds: 263, milliseconds: 0),
    ),
    LyricLine(
      text: "ॠनियां जो कोई हो अधिकारी ।",
      start: Duration(seconds: 263, milliseconds: 0),
      end: Duration(seconds: 266, milliseconds: 0),
    ),
    LyricLine(
      text: "पाठ करे सो पावन हारी ॥",
      start: Duration(seconds: 266, milliseconds: 0),
      end: Duration(seconds: 269, milliseconds: 0),
    ),
    LyricLine(
      text: "पुत्र हीन कर इच्छा जोई ।",
      start: Duration(seconds: 269, milliseconds: 0),
      end: Duration(seconds: 272, milliseconds: 0),
    ),
    LyricLine(
      text: "निश्चय शिव प्रसाद तेहि होई ॥",
      start: Duration(seconds: 272, milliseconds: 0),
      end: Duration(seconds: 275, milliseconds: 0),
    ),
    LyricLine(
      text: "पण्डित त्रयोदशी को लावे ।",
      start: Duration(seconds: 275, milliseconds: 0),
      end: Duration(seconds: 277, milliseconds: 0),
    ),
    LyricLine(
      text: "ध्यान पूर्वक होम करावे ॥",
      start: Duration(seconds: 277, milliseconds: 0),
      end: Duration(seconds: 282, milliseconds: 0),
    ),
    LyricLine(
      text: "त्रयोदशी व्रत करै हमेशा ।",
      start: Duration(seconds: 282, milliseconds: 0),
      end: Duration(seconds: 285, milliseconds: 0),
    ),
    LyricLine(
      text: "ताके तन नहीं रहै कलेशा ॥",
      start: Duration(seconds: 285, milliseconds: 0),
      end: Duration(seconds: 288, milliseconds: 0),
    ),
    LyricLine(
      text: "धूप दीप नैवेद्य चढ़ावे ।",
      start: Duration(seconds: 288, milliseconds: 0),
      end: Duration(seconds: 291, milliseconds: 0),
    ),
    LyricLine(
      text: "शंकर सम्मुख पाठ सुनावे ॥",
      start: Duration(seconds: 291, milliseconds: 0),
      end: Duration(seconds: 294, milliseconds: 0),
    ),
    LyricLine(
      text: "जन्म जन्म के पाप नसावे ।",
      start: Duration(seconds: 294, milliseconds: 0),
      end: Duration(seconds: 297, milliseconds: 0),
    ),
    LyricLine(
      text: "अन्त धाम शिवपुर में पावे ॥",
      start: Duration(seconds: 297, milliseconds: 0),
      end: Duration(seconds: 300, milliseconds: 0),
    ),
    LyricLine(
      text: "कहैं अयोध्यादास आस तुम्हारी ।",
      start: Duration(seconds: 300, milliseconds: 0),
      end: Duration(seconds: 302, milliseconds: 0),
    ),
    LyricLine(
      text: "जानि सकल दुःख हरहु हमारी ॥",
      start: Duration(seconds: 302, milliseconds: 0),
      end: Duration(seconds: 302, milliseconds: 0),
    ),
  ];



  static final List<LyricLine> newShivAartiLyricss = [
    LyricLine(
      text: "ॐ जय शिव ओंकारा",
      start: Duration(seconds: 0, milliseconds: 0),
      end: Duration(seconds: 10, milliseconds: 480),
    ),
    LyricLine(
      text: "स्वामी जय शिव ओंकारा।",
      start: Duration(seconds: 10, milliseconds: 480),
      end: Duration(seconds: 13, milliseconds: 980),
    ),
    LyricLine(
      text: "ब्रह्मा, विष्णु, सदाशिव, अर्द्धांगी धारा॥",
      start: Duration(seconds: 13, milliseconds: 980),
      end: Duration(seconds: 18, milliseconds: 880),
    ),
    LyricLine(
      text: "ओम जय शिव ओंकारा॥",
      start: Duration(seconds: 18, milliseconds: 880),
      end: Duration(seconds: 22, milliseconds: 400),
    ),
    LyricLine(
      text: "एकानन चतुरानन पञ्चानन राजे।",
      start: Duration(seconds: 22, milliseconds: 400),
      end: Duration(seconds: 26, milliseconds: 600),
    ),
    LyricLine(
      text: "हंसासन गरूड़ासन वृषवाहन साजे॥",
      start: Duration(seconds: 26, milliseconds: 600),
      end: Duration(seconds: 30, milliseconds: 760),
    ),
    LyricLine(
      text: "ओम जय शिव ओंकारा॥",
      start: Duration(seconds: 30, milliseconds: 760),
      end: Duration(seconds: 36, milliseconds: 320),
    ),
    LyricLine(
      text: "दो भुज चार चतुर्भुज दसभुज अति सोहे।",
      start: Duration(seconds: 36, milliseconds: 320),
      end: Duration(seconds: 40, milliseconds: 520),
    ),
    LyricLine(
      text: "त्रिगुण रूप निरखत त्रिभुवन जन मोहे॥",
      start: Duration(seconds: 40, milliseconds: 520),
      end: Duration(seconds: 44, milliseconds: 720),
    ),
    LyricLine(
      text: "ओम जय शिव ओंकारा॥",
      start: Duration(seconds: 44, milliseconds: 720),
      end: Duration(seconds: 48, milliseconds: 200),
    ),
    LyricLine(
      text: "अक्षमाला वनमाला मुण्डमालाधारी।",
      start: Duration(seconds: 48, milliseconds: 200),
      end: Duration(seconds: 53, milliseconds: 40),
    ),
    LyricLine(
      text: "त्रिपुरारी कंसारी कर माला धारी॥",
      start: Duration(seconds: 53, milliseconds: 40),
      end: Duration(seconds: 57, milliseconds: 200),
    ),
    LyricLine(
      text: "ओम जय शिव ओंकारा॥",
      start: Duration(seconds: 57, milliseconds: 200),
      end: Duration(seconds: 62, milliseconds: 480),
    ),
    LyricLine(
      text: "श्वेताम्बर पीताम्बर बाघंबर अंगे।",
      start: Duration(seconds: 62, milliseconds: 480),
      end: Duration(seconds: 67, milliseconds: 360),
    ),
    LyricLine(
      text: "सनकादिक गरुड़ादिक भूतादिक संगे॥",
      start: Duration(seconds: 67, milliseconds: 360),
      end: Duration(seconds: 72, milliseconds: 200),
    ),
    LyricLine(
      text: "ओम जय शिव ओंकारा॥",
      start: Duration(seconds: 72, milliseconds: 200),
      end: Duration(seconds: 77, milliseconds: 840),
    ),
    LyricLine(
      text: "कर के मध्य कमण्डल चक्र त्रिशूलधारी।",
      start: Duration(seconds: 77, milliseconds: 840),
      end: Duration(seconds: 82, milliseconds: 240),
    ),
    LyricLine(
      text: "जगकर्ता जगभर्ता जगसंहारकर्ता॥",
      start: Duration(seconds: 82, milliseconds: 240),
      end: Duration(seconds: 86, milliseconds: 440),
    ),
    LyricLine(
      text: "ओम जय शिव ओंकारा॥",
      start: Duration(seconds: 86, milliseconds: 440),
      end: Duration(seconds: 91, milliseconds: 880),
    ),
    LyricLine(
      text: "ब्रह्मा विष्णु सदाशिव जानत अविवेका।",
      start: Duration(seconds: 91, milliseconds: 880),
      end: Duration(seconds: 96, milliseconds: 160),
    ),
    LyricLine(
      text: "प्रणवाक्षर के मध्ये ये तीनों एका॥",
      start: Duration(seconds: 96, milliseconds: 160),
      end: Duration(seconds: 100, milliseconds: 480),
    ),
    LyricLine(
      text: "ओम जय शिव ओंकारा॥",
      start: Duration(seconds: 100, milliseconds: 480),
      end: Duration(seconds: 106, milliseconds: 80),
    ),
    LyricLine(
      text: "पर्वत सोहैं पार्वती, शंकर कैलासा।",
      start: Duration(seconds: 106, milliseconds: 80),
      end: Duration(seconds: 110, milliseconds: 320),
    ),
    LyricLine(
      text: "भांग धतूरे का भोजन, भस्मी में वासा॥",
      start: Duration(seconds: 110, milliseconds: 320),
      end: Duration(seconds: 114, milliseconds: 520),
    ),
    LyricLine(
      text: "ओम जय शिव ओंकारा॥",
      start: Duration(seconds: 114, milliseconds: 520),
      end: Duration(seconds: 119, milliseconds: 840),
    ),
    LyricLine(
      text: "जटा में गंग बहत है, गल मुण्डन माला।",
      start: Duration(seconds: 119, milliseconds: 840),
      end: Duration(seconds: 124, milliseconds: 120),
    ),
    LyricLine(
      text: "शेष नाग लिपटावत, ओढ़त मृगछाला॥",
      start: Duration(seconds: 124, milliseconds: 120),
      end: Duration(seconds: 128, milliseconds: 400),
    ),
    LyricLine(
      text: "ओम जय शिव ओंकारा॥",
      start: Duration(seconds: 128, milliseconds: 400),
      end: Duration(seconds: 133, milliseconds: 960),
    ),
    LyricLine(
      text: "काशी में विराजे विश्वनाथ, नन्दी ब्रह्मचारी।",
      start: Duration(seconds: 133, milliseconds: 960),
      end: Duration(seconds: 138, milliseconds: 200),
    ),
    LyricLine(
      text: "कहत शिवानन्द स्वामी,मनवान्छित फल पावे॥",
      start: Duration(seconds: 138, milliseconds: 200),
      end: Duration(seconds: 142, milliseconds: 400),
    ),
    LyricLine(
      text: "ओम जय शिव ओंकारा॥",
      start: Duration(seconds: 142, milliseconds: 400),
      end: Duration(seconds: 144, milliseconds: 800),
    ),
    LyricLine(
      text: "स्वामी ओम जय शिव ओंकारा॥",
      start: Duration(seconds: 144, milliseconds: 800),
      end: Duration(seconds: 144, milliseconds: 800),
    ),
  ];

  static final List<LyricLine> newShivAartiLyrics = [
    LyricLine(
      text: "ॐ जय शिव ओंकारा",
      start: Duration(seconds: 0, milliseconds: 0),
      end: Duration(seconds: 10, milliseconds: 480),
    ),
    LyricLine(
      text: "स्वामी जय शिव ओंकारा",
      start: Duration(seconds: 10, milliseconds: 480),
      end: Duration(seconds: 13, milliseconds: 980),
    ),
    LyricLine(
      text: "ब्रह्मा विष्णु सदाशिव अर्द्धांगी धारा",
      start: Duration(seconds: 13, milliseconds: 980),
      end: Duration(seconds: 18, milliseconds: 880),
    ),
    LyricLine(
      text: "ॐ जय शिव ओंकारा",
      start: Duration(seconds: 18, milliseconds: 880),
      end: Duration(seconds: 22, milliseconds: 400),
    ),
    LyricLine(
      text: "एकानन चतुरानन पञ्चानन राजे",
      start: Duration(seconds: 22, milliseconds: 400),
      end: Duration(seconds: 26, milliseconds: 600),
    ),
    LyricLine(
      text: "हंसासन गरूड़ासन वृषवाहन साजे",
      start: Duration(seconds: 26, milliseconds: 600),
      end: Duration(seconds: 30, milliseconds: 760),
    ),
    LyricLine(
      text: "ॐ जय शिव ओंकारा",
      start: Duration(seconds: 30, milliseconds: 760),
      end: Duration(seconds: 36, milliseconds: 320),
    ),
    LyricLine(
      text: "दो भुज चार चतुर्भुज दसभुज अति सोहे",
      start: Duration(seconds: 36, milliseconds: 320),
      end: Duration(seconds: 40, milliseconds: 520),
    ),
    LyricLine(
      text: "त्रिगुण रूप निरखत त्रिभुवन जन मोहे",
      start: Duration(seconds: 40, milliseconds: 520),
      end: Duration(seconds: 44, milliseconds: 720),
    ),
    LyricLine(
      text: "ॐ जय शिव ओंकारा",
      start: Duration(seconds: 44, milliseconds: 720),
      end: Duration(seconds: 48, milliseconds: 200),
    ),
    LyricLine(
      text: "अक्षमाला वनमाला मुण्डमालाधारी",
      start: Duration(seconds: 48, milliseconds: 200),
      end: Duration(seconds: 53, milliseconds: 40),
    ),
    LyricLine(
      text: "त्रिपुरारी कंसारी कर माला धारी",
      start: Duration(seconds: 53, milliseconds: 40),
      end: Duration(seconds: 57, milliseconds: 200),
    ),
    LyricLine(
      text: "ॐ जय शिव ओंकारा",
      start: Duration(seconds: 57, milliseconds: 200),
      end: Duration(seconds: 62, milliseconds: 480),
    ),
    LyricLine(
      text: "श्वेताम्बर पीताम्बर बाघंबर अंगे",
      start: Duration(seconds: 62, milliseconds: 480),
      end: Duration(seconds: 67, milliseconds: 360),
    ),
    LyricLine(
      text: "सनकादिक गरुड़ादिक भूतादिक संगे",
      start: Duration(seconds: 67, milliseconds: 360),
      end: Duration(seconds: 72, milliseconds: 200),
    ),
    LyricLine(
      text: "ॐ जय शिव ओंकारा",
      start: Duration(seconds: 72, milliseconds: 200),
      end: Duration(seconds: 77, milliseconds: 840),
    ),
    LyricLine(
      text: "कर के मध्य कमण्डल चक्र त्रिशूलधारी",
      start: Duration(seconds: 77, milliseconds: 840),
      end: Duration(seconds: 82, milliseconds: 240),
    ),
    LyricLine(
      text: "जगकर्ता जगभर्ता जगसंहारकर्ता",
      start: Duration(seconds: 82, milliseconds: 240),
      end: Duration(seconds: 86, milliseconds: 440),
    ),
    LyricLine(
      text: "ॐ जय शिव ओंकारा",
      start: Duration(seconds: 86, milliseconds: 440),
      end: Duration(seconds: 91, milliseconds: 880),
    ),
    LyricLine(
      text: "ब्रह्मा विष्णु सदाशिव जानत अविवेका",
      start: Duration(seconds: 91, milliseconds: 880),
      end: Duration(seconds: 96, milliseconds: 160),
    ),
    LyricLine(
      text: "प्रणवाक्षर के मध्ये ये तीनों एका",
      start: Duration(seconds: 96, milliseconds: 160),
      end: Duration(seconds: 100, milliseconds: 480),
    ),
    LyricLine(
      text: "ॐ जय शिव ओंकारा",
      start: Duration(seconds: 100, milliseconds: 480),
      end: Duration(seconds: 106, milliseconds: 80),
    ),
    LyricLine(
      text: "पर्वत सोहैं पार्वती शंकर कैलासा",
      start: Duration(seconds: 106, milliseconds: 80),
      end: Duration(seconds: 110, milliseconds: 320),
    ),
    LyricLine(
      text: "भांग धतूरे का भोजन भस्मी में वासा",
      start: Duration(seconds: 110, milliseconds: 320),
      end: Duration(seconds: 114, milliseconds: 520),
    ),
    LyricLine(
      text: "ॐ जय शिव ओंकारा",
      start: Duration(seconds: 114, milliseconds: 520),
      end: Duration(seconds: 119, milliseconds: 840),
    ),
    LyricLine(
      text: "जटा में गंग बहत है गल मुण्डन माला",
      start: Duration(seconds: 119, milliseconds: 840),
      end: Duration(seconds: 124, milliseconds: 120),
    ),
    LyricLine(
      text: "शेष नाग लिपटावत ओढ़त मृगछाला",
      start: Duration(seconds: 124, milliseconds: 120),
      end: Duration(seconds: 128, milliseconds: 400),
    ),
    LyricLine(
      text: "ॐ जय शिव ओंकारा",
      start: Duration(seconds: 128, milliseconds: 400),
      end: Duration(seconds: 133, milliseconds: 960),
    ),
    LyricLine(
      text: "काशी में विराजे विश्वनाथ नन्दी ब्रह्मचारी",
      start: Duration(seconds: 133, milliseconds: 960),
      end: Duration(seconds: 138, milliseconds: 200),
    ),
    LyricLine(
      text: "कहत शिवानन्द स्वामी मनवान्छित फल पावे",
      start: Duration(seconds: 138, milliseconds: 200),
      end: Duration(seconds: 142, milliseconds: 400),
    ),
    LyricLine(
      text: "ॐ जय शिव ओंकारा",
      start: Duration(seconds: 142, milliseconds: 400),
      end: Duration(seconds: 144, milliseconds: 800),
    ),
    LyricLine(
      text: "स्वामी ॐ जय शिव ओंकारा",
      start: Duration(seconds: 144, milliseconds: 800),
      end: Duration(seconds: 144, milliseconds: 800),
    ),
  ];

  static final List<LyricLine> mahamrityunjayaMantraLyrics = [
    LyricLine(
      text: "ॐ त्र्यम्बकं यजामहे।",
      start: Duration(seconds: 0, milliseconds: 0),
      end: Duration(seconds: 8, milliseconds: 0),
    ),
    LyricLine(
      text: "सुगन्धिं पुष्टिवर्धनम् उर्वारुकमिव बन्धना",
      start: Duration(seconds: 8, milliseconds: 0),
      end: Duration(seconds: 19, milliseconds: 0),
    ),
    LyricLine(
      text: "न्मृत्योर्मुक्षीय माऽमृतात्॥",
      start: Duration(seconds: 19, milliseconds: 0),
      end: Duration(seconds: 60, milliseconds: 4),
    ),
  ];


  /// 🔥 Function to get lyrics safely
  static List<LyricLine> getLyrics(String key) {
    return lyricsMap[key] ?? []; // fallback empty list
  }

}
