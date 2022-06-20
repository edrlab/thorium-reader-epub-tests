---
Title: Test epub for Thorium Reader 2.0 on windows 10
Author: EDRLab
Date: 2022/06/20
---

<!--{
    "name": "Thorium 2.0, windows10",
    "ref": "https://github.com/edrlab/thorium-reader/releases/tag/v2.0.0",
    "tests": {
-->
|N°|req.|report|Title|Comment|TestComment|Action|
|---|---|---|---|---|---|---|
|1|must|"cnt-css-fonts": pass,|CSS support for font resources||||
|2|must|"cnt-css-support": fail,|Acid2 test|picture not displayed as reference rendering|test is not specific enough|[Issue opened to request remove](https://github.com/w3c/epub-tests/issues/164)|
|3|must|"cnt-mathml-support": pass,|Support for Presentation MathML|with mathJax enabled / fail on Debian|||
|4|must|"cnt-svg-css": pass,|CSS in SVG content document||||
|5|must|"cnt-svg-css-inclusion": pass,|CSS applied to included SVG ||||
|6|must|"cnt-svg-css-reference": pass,|CSS not applied to referenced SVG||||
|7|must|"cnt-svg-embedded": pass,|SVG embedded in XHTML content||||
|8|must|"cnt-svg-support": pass,|SVG content document||||
|9|should|"cnt-xhtml-support": pass,|XHTML content document||||
|10|must|"css-epub-hyphens": fail,|EPUB CSS hyphens|no hyphens in section 3 |||
|11|must|"css-epub-line-break": pass,|EPUB CSS line-break||||
|12|must|"css-epub-text-align-last": fail,|EPUB CSS text-align-last|sections3 & 6|||
|13|must|"css-epub-text-combine-horizontal": fail,|EPUB CSS text-combine-horizontal |section 2|||
|14|must|"css-epub-text-emphasis": fail,|EPUB CSS text-emphasis|s6 & s14 (appears to the right)|||
|15|must|"css-epub-text-orientation": pass,|EPUB CSS text-orientation ||||
|16|must|"css-epub-text-transform": pass,|EPUB CSS text-transform||||
|17|must|"css-epub-text-underline-position": null,|EPUB CSS text-underline-position|(non is underlined) |||
|18|must|"css-epub-word-break": pass,|EPUB CSS word-break ||words break without hyphenation ?||
|19|must|"css-epub-writing-mode": pass,|EPUB CSS writing-mode||||
|20|must|"fxl-layout-duplication": n/a,|rendition:layout duplication||test TBD with epubcheck?||
|21|must|"fxl-layout-pre-paginated": n/a,|rendition:layout pre-paginated spine order|1 page displayed, but with text over text |missing a test pass information||
|22|must|"fxl-layout-pre-paginated-spreads": pass,|rendition:layout pre-paginated spreads||||
|23|should|"fxl-orientation-landscape": pass,|landscape is Thorium default ||||
|24|must|"fxl-orientation_default": pass,|rendition:orientation default|There is no way to set orientation to default in Thorium|||
|25|must|"fxl-orientation_duplication": null,|rendition:orientation duplicate|displayed by thorium|epubcheck (does that means the file shall not be rendered?||
|26|should|"fxl-page-spread-center": fail,|rendition:page-spread-center |displayed on the right|||
|27|should|"fxl-page-spread-combined": pass,|rendition:page-spread combined ||||
|28|should|"fxl-page-spread-left": pass,|rendition:page-spread-left ||||
|29|should|"fxl-page-spread-right": pass,|rendition:page-spread-right ||||
|30|may|"fxl-spread-auto": pass,|rendition:spread auto||||
|31|should|"fxl-spread-both": pass,|rendition:spread both||||
|32|must|"fxl-spread_default": pass,|rendition:spread default|There is no way to set orientation in Thorium|fxl-spread-default||
|33|should|"fxl-spread_landscape": pass,|rendition:spread landscape|There is no way to set orientation in Thorium|fxl-spread-landscape||
|34|must|"fxl-spread_none": null,|rendition:spread none|what does "not in a synthetic spread" means?|fxl-spread-none||
|35|must|"fxl-xhtml-icb": pass,|XHTML content clipped outside viewport||||
|36|must|"mol-audio": pass,|Rendering an audio track from clipBegin to clipEnd||||
|37|must|"mol-audio-exceeding-clipend": fail,|Audio track stops if clipEnd exceeds length|reading stop at the end of first section|||
|38|must|"mol-audio-no-clipbegin": pass,|Start at beginning of audio if clipBegin is missing||||
|39|must|"mol-audio-no-clipend": pass,|Audio track plays until end if clipEnd is missing||||
|40|must|"mol-audio_no_clipbegin": null,|||duplicate "mol-audio-no-clipbegin"? No such file found ||
|41|should|"mol-css": null,|Basic media overlay test with CSS styling|the rest of the text is NOT grayed out| _The text being read is highlighted with a green background; the rest of the text is grayed out_ media:playback-active-class est sensé faire ça ?  `<meta property="media:active-class">active-item</meta>    <meta property="media:playback-active-class">rendered-with-mo</meta>`||
|42|should|"mol-embed": fail,|Media overlay with embedded video|video don't start auto, no video control |||
|43|should|"mol-embed_deactivate_playback": fail,|Media overlay with embedded video; no playback control |audio plays auto, video does not start auto, video control are displayed|||
|44|should|"mol-embed_fxl": fail,|Media overlay with embedded video |video don't start auto, no video control|||
|45|must|"mol-navigation": pass,|Navigation with media overlays||||
|46|must|"mol-timing-synchronization": pass,|Basic media overlay||||
|47|must|"mol-timing-synchronization_fxl": pass,|Basic media overlay in fixed layout||||
|48|must|"mol-timing-synchronization_multiple_audio": pass,|Media overlay with two audio files||||
|49|should|"mol-tts_multi": fail,|Text-to-speech fallback for multiple fragments|does not read aloud|||
|50|should|"mol-tts_single": fail,|Text-to-speech fallback for a single fragment|does not read aloud|||
|51|must|"nav-access": pass,|Single link in navigation can be accessed ||||
|52|must|"nav-activation": pass,|Navigation relocates position while in spine||||
|53|must|"nav-spine_in-spine": pass,|Navigation accessible while in spine ||||
|54|must|"nav-spine_in-spine-no-list-style": pass,|TOC items ignore navigation list styling||||
|55|must|"nav-spine_not-in-spine": pass,|Navigation accessible while not in spine||||
|56|must|"ocf-metainf-inc": pass,|Extra configuration file in META-INF||||
|57|must|"ocf-metainf-manifest": pass,|Manifest information is ignored||||
|58|must|"ocf-package_arbitrary": pass,|Package in arbitrary directory||||
|59|must|"ocf-package_multiple": pass,|Multiple packages in container file||||
|60|must|"ocf-url_link-leaking-relative": fail,|Relative image reference exceeds depth of hierarchy ||||
|61|must|"ocf-url_link-path-absolute": fail,|Path-absolute link to an image||||
|62|must|"ocf-url_link-relative": pass,|Simple relative link to an image||||
|63|must|"ocf-url_manifest": pass,|Content in arbitrary directory||||
|64|must|"ocf-url_origin": pass,|Unique origin for each instance||||
|65|must|"ocf-url_parse-leaking-relative": fail,|Relative URL that exceeds depth of hierarchy, parsed by JS||||
|66|must|"ocf-url_parse-path-absolute": fail,|Root-relative URL, parsed by JS ||||
|67|must|"ocf-url_relative": pass,|Content in relative subdirectory||||
|68|should|"page-layout-both": null,|page-layout-both|reflow but text ends out of box (part of the text is not displayed) |||
|69|must|"page-layout-both-spread": fail,|page-layout-both spread|on the right when passing from page 1 to 2 and on the left when reading from page 3 to page 2|||
|70|must|"pkg-collections-unknown": pass,|Collection with unknown role ||||
|71|must|"pkg-creator-order": pass,|Creators listed in order||||
|72|must|"pkg-dir-auto_root-rtl": pass,|CSS: مغامرة جديدة! |pass in the catalog but strangely displayed in the windows heading (!مغامرة جديدة) |||
|73|must|"pkg-dir-auto_root-unset": pass,|CSS: הרפתקה חדשה| pass in the catalog but strangely displayed in the windows heading (!הרפתקה חדשה)|4 test with the same title |recheck|
|74|must|"pkg-dir_but_not_content": pass,|CSS: הרפתקה חדשה!||test with same title|recheck|
|75|must|"pkg-dir_creator-rtl": fail,|CSS: הרפתקה חדשה!||test with same title|recheck|
|76|must|"pkg-dir_rtl-root-ltr": fail,|CSS: הרפתקה חדשה!||test with same title|recheck|
|77|must|"pkg-dir_rtl-root-unset": fail,|CSS: مغامرة جديدة!|but correct in the window heading|test with same title|recheck|
|78|must|"pkg-dir_unset-root-rtl": fail,|CSS: مغامرة جديدة!||test with same title|recheck|
|79|must|"pkg-dir_unset-root-unset": pass,|CSS: مغامرة جديدة!|||recheck|
|80|should|"pkg-flow-paginated": pass,|rendition:flow set to paginated||||
|81|should|"pkg-flow-scrolled-continuous": pass,|rendition:flow set to scrolled-continuous|no way to set rendition to auto in thorium |||
|82|should|"pkg-flow-scrolled-doc": pass,|rendition:flow set to scrolled-doc |with display:layout set to scrollable|||
|83|must|"pkg-lang_but_not_content": pass,|Le contenu n'est pas automatiquement français||||
|84|must|"pkg-linked-records": pass,|Package metadata title! ||||
|85|must|"pkg-manifest-unknown": pass,|Manifest item with unknown properties||||
|86|must|"pkg-manifest-unlisted-resource": pass,|Resource not listed in manifest ||||
|87|must|"pkg-meta-unknown": pass,|Meta tag with unknown property ||||
|88|must|"pkg-meta-whitespace": pass,|hitespace removed from package metadata||||
|89|must|"pkg-spine-duplicate-item-hyperlink": pass,|Hyperlink to duplicate items in spine||||
|90|must|"pkg-spine-duplicate-item-rendering": fail,|Duplicate items in spine render |occurs 5 times instead of 3|||
|91|must|"pkg-spine-duplicate-item-ui": fail,|UI recognizes duplicate items in spine||||
|92|must|"pkg-spine-nonlinear-activation": pass,|Non-linear spine item is reachable||||
|93|must|"pkg-spine-order": pass,|Spine items in order||||
|94|must|"pkg-spine-order-svg": pass,|SVG spine items in order||||
|95|must|"pkg-spine-progression-default": pass,| RTL publication's spine has implicit 'page-progression-direction="default"'||||
|96|must|"pkg-spine-progression-pre-paginated": pass,|Pre-paginated publication's spine sets 'page-progression-direction="ltr"'||||
|97|must|"pkg-spine-progression_ltr": pass,|Spine sets 'page-progression-direction="ltr"||||
|98|must|"pkg-spine-progression_rtl": pass,|Spine sets 'page-progression-direction="rtl"||||
|99|must|"pkg-spine-unknown": pass,|Spine item with unknown properties||||
|100|must|"pkg-title-order": pass,|First title in package ||||
|101|must|"pkg-unique-id": pass,|Unique identifier not unique|||revérifier|
|102|must|"pkg-version-backward": pass,|Package version less than 3.0||||
|103|must|"pub-cmt-gif": pass,|GIF image||||
|104|must|"pub-cmt-jpeg": pass,|JPEG image ||||
|105|must|"pub-cmt-mp3": pass,|MP3 audio||||
|106|must|"pub-cmt-mp4": pass,|MP4 audio||||
|107|must|"pub-cmt-opus": pass,|OPUS audio||||
|108|must|"pub-cmt-png": pass,|PNG image ||||
|109|must|"pub-cmt-svg": pass,|SVG image||||
|110|must|"pub-cmt-webp": pass,|WEBP image||||
|111|must|"pub-data-urls_browsing-context": pass,|Data URL does not open in top-level context||||
|112|must|"pub-data-urls_top-level-content": pass,|Data URL not opening as a top-level content document|but displayed over text|||
|113|should|"pub-external-links": pass,|External Links open a new browser instance||||
|114|must|"pub-foreign_bad-fallback": null,|Manifest fallback with unsupported fallback |opens system file to save .dmg |what is the condition for passing the test ?||
|115|must|"pub-foreign_image": fail,|Manifest fallback with image ||||
|116|must|"pub-foreign_json-spine": fail,|Manifest fallback With JSON content document in spine||||
|117|must|"pub-foreign_xml-spine": null,|Manifest fallback with XML in spin|xml structure is displayed|||
|118|must|"pub-foreign_xml-suffix-spine": null,|Manifest fallback with XML with suffix in spine |opens system file to save .xml ||||
|119|must|"pub-xml-external-id": pass,|XML external entity not resolved||||
|120|must|"pub-xml-names": pass,|Invalid XML element name||||
|121|must|"pub-xml-non-validating_invalid": fail,|Invalid XML navigation document||||
|122|must|"pub-xml-non-validating_unclosed": pass,| Unclosed XML tag ||||
|123|must|"scr-readingsystem-features": pass,|epubReadingSystem object features||||
|124|must|"scr-readingsystem-support": pass,|epubReadingSystem object support||||
|125|must|"scr-readingsystem-support_iframe": pass,| epubReadingSystem object support in an iframe||||
|126|must|"scr-readingsystem-support_iframe_svg": fail,|epubReadingSystem object support in an SVG within an iframe||||
|127|must|"scr-readingsystem-support_svg": pass,|epubReadingSystem object support in a spine-level SVG ||||
|128|must|"scr-support": pass,|Scripting support||||
|129|should|"scr-support_iframe": pass,|Support for container-constrained scripts||||
|130|must|"scr-support_origin": pass,|Unique origin shared by spine-level scripted contents||||
|131|should|"scr-support_scrolled-continuous": pass,|rendition:flow set to scrolled-continuous when scripting is supported||||
|132|should|"scr-support_scrolled-doc": pass,|rendition:flow set to scrolled-doc when scripting is supported||||
|133|should|"scr-support_svg": pass|Scripting support in spine-level SVG||||
    }
}