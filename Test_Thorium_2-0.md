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
|<span id="N°">N°</span>|req.|report|Title|Comment|TestComment|Action|
|---|---|---|---|---|---|---|
|<span id="1">1</span>|must|"cnt-css-fonts": pass,|CSS support for font resources||||
|<span id="2">2</span>|must|"cnt-css-support": fail,|Acid2 test|picture not displayed as reference rendering|test is not specific enough|[Issue opened to request remove](https://github.com/w3c/epub-tests/issues/164)|
|<span id="3">3</span>|must|"cnt-mathml-support": pass,|Support for Presentation MathML|with mathJax enabled / fail on Debian|||
|<span id="4">4</span>|must|"cnt-svg-css": pass,|CSS in SVG content document||||
|<span id="5">5</span>|must|"cnt-svg-css-inclusion": pass,|CSS applied to included SVG ||||
|<span id="6">6</span>|must|"cnt-svg-css-reference": pass,|CSS not applied to referenced SVG||||
|<span id="7">7</span>|must|"cnt-svg-embedded": pass,|SVG embedded in XHTML content||||
|<span id="8">8</span>|must|"cnt-svg-support": pass,|SVG content document||||
|<span id="9">9</span>|should|"cnt-xhtml-support": pass,|XHTML content document||||
|<span id="10">10</span>|must|"css-epub-hyphens": fail,|EPUB CSS hyphens|no hyphens in section 3 |||
|<span id="11">11</span>|must|"css-epub-line-break": pass,|EPUB CSS line-break||||
|<span id="12">12</span>|must|"css-epub-text-align-last": fail,|EPUB CSS text-align-last|sections3 & 6|||
|<span id="13">13</span>|must|"css-epub-text-combine-horizontal": fail,|EPUB CSS text-combine-horizontal |section 2|||
|<span id="14">14</span>|must|"css-epub-text-emphasis": fail,|EPUB CSS text-emphasis|s6 & s14 (appears to the right)|||
|<span id="15">15</span>|must|"css-epub-text-orientation": pass,|EPUB CSS text-orientation ||||
|<span id="16">16</span>|must|"css-epub-text-transform": pass,|EPUB CSS text-transform||||
|<span id="17">17</span>|must|"css-epub-text-underline-position": null,|EPUB CSS text-underline-position|(non is underlined) |||
|<span id="18">18</span>|must|"css-epub-word-break": pass,|EPUB CSS word-break ||words break without hyphenation ?||
|<span id="19">19</span>|must|"css-epub-writing-mode": pass,|EPUB CSS writing-mode||||
|<span id="20">20</span>|must|"fxl-layout-duplication": n/a,|rendition:layout duplication||test TBD with epubcheck?||
|<span id="21">21</span>|must|"fxl-layout-pre-paginated": n/a,|rendition:layout pre-paginated spine order|1 page displayed, but with text over text |missing a test pass information||
|<span id="22">22</span>|must|"fxl-layout-pre-paginated-spreads": pass,|rendition:layout pre-paginated spreads||||
|<span id="23">23</span>|should|"fxl-orientation-landscape": pass,|landscape is Thorium default ||||
|<span id="24">24</span>|must|"fxl-orientation_default": pass,|rendition:orientation default|There is no way to set orientation to default in Thorium|||
|<span id="25">25</span>|must|"fxl-orientation_duplication": null,|rendition:orientation duplicate|displayed by thorium|epubcheck (does that means the file shall not be rendered?||
|<span id="26">26</span>|should|"fxl-page-spread-center": fail,|rendition:page-spread-center |displayed on the right|||
|<span id="27">27</span>|should|"fxl-page-spread-combined": pass,|rendition:page-spread combined ||||
|<span id="28">28</span>|should|"fxl-page-spread-left": pass,|rendition:page-spread-left ||||
|<span id="29">29</span>|should|"fxl-page-spread-right": pass,|rendition:page-spread-right ||||
|<span id="30">30</span>|ma|y"fxl-spread-auto": pass,|rendition:spread auto||||
|<span id="31">31</span>|should|"fxl-spread-both": pass,|rendition:spread both||||
|<span id="32">32</span>|must|"fxl-spread_default": pass,|rendition:spread default|There is no way to set orientation in Thorium|fxl-spread-default||
|<span id="33">33</span>|should|"fxl-spread_landscape": pass,|rendition:spread landscape|There is no way to set orientation in Thorium|fxl-spread-landscape||
|<span id="34">34</span>|must|"fxl-spread_none": null,|rendition:spread none|what does "not in a synthetic spread" means?|fxl-spread-none||
|<span id="35">35</span>|must|"fxl-xhtml-icb": pass,|XHTML content clipped outside viewport||||
|<span id="36">36</span>|must|"mol-audio": pass,|Rendering an audio track from clipBegin to clipEnd||||
|<span id="37">37</span>|must|"mol-audio-exceeding-clipend": fail,|Audio track stops if clipEnd exceeds length|reading stop at the end of first section|||
|<span id="38">38</span>|must|"mol-audio-no-clipbegin": pass,|Start at beginning of audio if clipBegin is missing||||
|<span id="39">39</span>|must|"mol-audio-no-clipend": pass,|Audio track plays until end if clipEnd is missing||||
|<span id="40">40</span>|must|"mol-audio_no_clipbegin": null,|||duplicate "mol-audio-no-clipbegin"? No such file found ||
|<span id="41">41</span>|should|"mol-css": null,|Basic media overlay test with CSS styling|the rest of the text is NOT grayed out| _The text being read is highlighted with a green background; the rest of the text is grayed out_ media:playback-active-class est sensé faire ça ?  `<meta property="media:active-class">active-item</meta>    <meta property="media:playback-active-class">rendered-with-mo</meta>`||
|<span id="42">42</span>|should|"mol-embed": fail,|Media overlay with embedded video|video don't start auto, no video control |||
|<span id="43">43</span>|should|"mol-embed_deactivate_playback": fail,|Media overlay with embedded video; no playback control |audio plays auto, video does not start auto, video control are displayed|||
|<span id="44">44</span>|should|"mol-embed_fxl": fail,|Media overlay with embedded video |video don't start auto, no video control|||
|<span id="45">45</span>|must|"mol-navigation": pass,|Navigation with media overlays||||
|<span id="46">46</span>|must|"mol-timing-synchronization": pass,|Basic media overla||||y
|<span id="47">47</span>|must|"mol-timing-synchronization_fxl": pass,|Basic media overlay in fixed layout||||
|<span id="48">48</span>|must|"mol-timing-synchronization_multiple_audio": pass,|Media overlay with two audio files||||
|<span id="49">49</span>|should|"mol-tts_multi": fail,|Text-to-speech fallback for multiple fragments|does not read aloud|||
|<span id="50">50</span>|should|"mol-tts_single": fail,|Text-to-speech fallback for a single fragment|does not read aloud|||
|<span id="51">51</span>|must|"nav-access": pass,|Single link in navigation can be accessed ||||
|<span id="52">52</span>|must|"nav-activation": pass,|Navigation relocates position while in spine||||
|<span id="53">53</span>|must|"nav-spine_in-spine": pass,|Navigation accessible while in spine ||||
|<span id="54">54</span>|must|"nav-spine_in-spine-no-list-style": pass,|TOC items ignore navigation list styling||||
|<span id="55">55</span>|must|"nav-spine_not-in-spine": pass,|Navigation accessible while not in spine||||
|<span id="56">56</span>|must|"ocf-metainf-inc": pass,|Extra configuration file in META-INF||||
|<span id="57">57</span>|must|"ocf-metainf-manifest": pass,|Manifest information is ignored||||
|<span id="58">58</span>|must|"ocf-package_arbitrary": pass,|Package in arbitrary director||||y
|<span id="59">59</span>|must|"ocf-package_multiple": pass,|Multiple packages in container file||||
|<span id="60">60</span>|must|"ocf-url_link-leaking-relative": fail,|Relative image reference exceeds depth of hierarchy ||||
|<span id="61">61</span>|must|"ocf-url_link-path-absolute": fail,|Path-absolute link to an image||||
|<span id="62">62</span>|must|"ocf-url_link-relative": pass,|Simple relative link to an image||||
|<span id="63">63</span>|must|"ocf-url_manifest": pass,|Content in arbitrary director||||y
|<span id="64">64</span>|must|"ocf-url_origin": pass,|Unique origin for each instance||||
|<span id="65">65</span>|must|"ocf-url_parse-leaking-relative": fail,|Relative URL that exceeds depth of hierarchy, parsed by JS||||
|<span id="66">66</span>|must|"ocf-url_parse-path-absolute": fail,|Root-relative URL, parsed by JS ||||
|<span id="67">67</span>|must|"ocf-url_relative": pass,|Content in relative subdirector||||y
|<span id="68">68</span>|should|"page-layout-both": null,|page-layout-both|reflow but text ends out of box (part of the text is not displayed) |||
|<span id="69">69</span>|must|"page-layout-both-spread": fail,|page-layout-both spread|on the right when passing from page 1 to 2 and on the left when reading from page 3 to page 2|||
|<span id="70">70</span>|must|"pkg-collections-unknown": pass,|Collection with unknown role ||||
|<span id="71">71</span>|must|"pkg-creator-order": pass,|Creators listed in order||||
|<span id="72">72</span>|must|"pkg-dir-auto_root-rtl": pass,|CSS: مغامرة جديدة! |pass in the catalog but strangely displayed in the windows heading (!مغامرة جديدة) |||
|<span id="73">73</span>|must|"pkg-dir-auto_root-unset": pass,|CSS: הרפתקה חדשה| pass in the catalog but strangely displayed in the windows heading (!הרפתקה חדשה)|4 test with the same title |recheck|
|<span id="74">74</span>|must|"pkg-dir_but_not_content": pass,|CSS: הרפתקה חדשה!||test with same title|recheck|
|<span id="75">75</span>|must|"pkg-dir_creator-rtl": fail,|CSS: הרפתקה חדשה!||test with same title|recheck|
|<span id="76">76</span>|must|"pkg-dir_rtl-root-ltr": fail,|CSS: הרפתקה חדשה!||test with same title|recheck|
|<span id="77">77</span>|must|"pkg-dir_rtl-root-unset": fail,|CSS: مغامرة جديدة!|but correct in the window heading|test with same title|recheck|
|<span id="78">78</span>|must|"pkg-dir_unset-root-rtl": fail,|CSS: مغامرة جديدة!||test with same title|recheck|
|<span id="79">79</span>|must|"pkg-dir_unset-root-unset": pass,|CSS: مغامرة جديدة!|||recheck|
|<span id="80">80</span>|should|"pkg-flow-paginated": pass,|rendition:flow set to paginated||||
|<span id="81">81</span>|should|"pkg-flow-scrolled-continuous": pass,|rendition:flow set to scrolled-continuous|no way to set rendition to auto in thorium |||
|<span id="82">82</span>|should|"pkg-flow-scrolled-doc": pass,|rendition:flow set to scrolled-doc |with display:layout set to scrollable|||
|<span id="83">83</span>|must|"pkg-lang_but_not_content": pass,|Le contenu n'est pas automatiquement français||||
|<span id="84">84</span>|must|"pkg-linked-records": pass,|Package metadata title! ||||
|<span id="85">85</span>|must|"pkg-manifest-unknown": pass,|Manifest item with unknown properties||||
|<span id="86">86</span>|must|"pkg-manifest-unlisted-resource": pass,|Resource not listed in manifest ||||
|<span id="87">87</span>|must|"pkg-meta-unknown": pass,|Meta tag with unknown property ||||
|<span id="88">88</span>|must|"pkg-meta-whitespace": pass,|hitespace removed from package metadata||||
|<span id="89">89</span>|must|"pkg-spine-duplicate-item-hyperlink": pass,|Hyperlink to duplicate items in spine||||
|<span id="90">90</span>|must|"pkg-spine-duplicate-item-rendering": fail,|Duplicate items in spine render |occurs 5 times instead of 3|||
|<span id="91">91</span>|must|"pkg-spine-duplicate-item-ui": fail,|UI recognizes duplicate items in spine||||
|<span id="92">92</span>|must|"pkg-spine-nonlinear-activation": pass,|Non-linear spine item is reachable||||
|<span id="93">93</span>|must|"pkg-spine-order": pass,|Spine items in order||||
|<span id="94">94</span>|must|"pkg-spine-order-svg": pass,|SVG spine items in order||||
|<span id="95">95</span>|must|"pkg-spine-progression-default": pass,| RTL publication's spine has implicit 'page-progression-direction="default"'||||
|<span id="96">96</span>|must|"pkg-spine-progression-pre-paginated": pass,|Pre-paginated publication's spine sets 'page-progression-direction="ltr"'||||
|<span id="97">97</span>|must|"pkg-spine-progression_ltr": pass,|Spine sets 'page-progression-direction="ltr"||||
|<span id="98">98</span>|must|"pkg-spine-progression_rtl": pass,|Spine sets 'page-progression-direction="rtl"||||
|<span id="99">99</span>|must|"pkg-spine-unknown": pass,|Spine item with unknown properties||||
|<span id="100">100</span>|must|"pkg-title-order": pass,|First title in package ||||
|<span id="101">101</span>|must|"pkg-unique-id": pass,|Unique identifier not unique|||revérifier|
|<span id="102">102</span>|must|"pkg-version-backward": pass,|Package version less than 3.0||||
|<span id="103">103</span>|must|"pub-cmt-gif": pass,|GIF image||||
|<span id="104">104</span>|must|"pub-cmt-jpeg": pass,|JPEG image ||||
|<span id="105">105</span>|must|"pub-cmt-mp3": pass,|MP3 audio||||
|<span id="106">106</span>|must|"pub-cmt-mp4": pass,|MP4 audio||||
|<span id="107">107</span>|must|"pub-cmt-opus": pass,|OPUS audio||||
|<span id="108">108</span>|must|"pub-cmt-png": pass,|PNG image ||||
|<span id="109">109</span>|must|"pub-cmt-svg": pass,|SVG image||||
|<span id="110">110</span>|must|"pub-cmt-webp": pass,|WEBP image||||
|<span id="111">111</span>|must|"pub-data-urls_browsing-context": pass,|Data URL does not open in top-level context||||
|<span id="112">112</span>|must|"pub-data-urls_top-level-content": pass,|Data URL not opening as a top-level content document|but displayed over text|||
|<span id="113">113</span>|should|"pub-external-links": pass,|External Links open a new browser instance||||
|<span id="114">114</span>|must|"pub-foreign_bad-fallback": null,|Manifest fallback with unsupported fallback |opens system file to save .dmg |what is the condition for passing the test ?||
|<span id="115">115</span>|must|"pub-foreign_image": fail,|Manifest fallback with image ||||
|<span id="116">116</span>|must|"pub-foreign_json-spine": fail,|Manifest fallback With JSON content document in spine||||
|<span id="117">117</span>|must|"pub-foreign_xml-spine": null,|Manifest fallback with XML in spin|xml structure is displayed|||
|<span id="118">118</span>|must|"pub-foreign_xml-suffix-spine": null,|Manifest fallback with XML with suffix in spine |opens system file to save .xml ||||
|<span id="119">119</span>|must|"pub-xml-external-id": pass,|XML external entity not resolved||||
|<span id="120">120</span>|must|"pub-xml-names": pass,|Invalid XML element name||||
|<span id="121">121</span>|must|"pub-xml-non-validating_invalid": fail,|Invalid XML navigation document||||
|<span id="122">122</span>|must|"pub-xml-non-validating_unclosed": pass,| Unclosed XML tag ||||
|<span id="123">123</span>|must|"scr-readingsystem-features": pass,|epubReadingSystem object features||||
|<span id="124">124</span>|must|"scr-readingsystem-support": pass,|epubReadingSystem object support||||
|<span id="125">125</span>|must|"scr-readingsystem-support_iframe": pass,| epubReadingSystem object support in an iframe||||
|<span id="126">126</span>|must|"scr-readingsystem-support_iframe_svg": fail,|epubReadingSystem object support in an SVG within an iframe||||
|<span id="127">127</span>|must|"scr-readingsystem-support_svg": pass,|epubReadingSystem object support in a spine-level SVG ||||
|<span id="128">128</span>|must|"scr-support": pass,|Scripting support||||
|<span id="129">129</span>|should|"scr-support_iframe": pass,|Support for container-constrained scripts||||
|<span id="130">130</span>|must|"scr-support_origin": pass,|Unique origin shared by spine-level scripted contents||||
|<span id="131">131</span>|should|"scr-support_scrolled-continuous": pass,|rendition:flow set to scrolled-continuous when scripting is supported||||
|<span id="132">132</span>|should|"scr-support_scrolled-doc": pass,|rendition:flow set to scrolled-doc when scripting is supported||||
|<span id="133">133</span>|should|"scr-support_svg": pass|Scripting support in spine-level SVG||||
<!--
    }
}
-->