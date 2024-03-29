---
Title: Test epub for Thorium Reader 2.0 on windows 10
Author: EDRLab
Date: 2022/10/31
---


| <span id="N°">N°</span> | req. | Title | report Th22 | Comment | TestComment | Action |
|---|---|---|---|---|---|---|
| <span id="1">1</span> | must | <a href="https://w3c.github.io/epub-tests/#cnt-css-fonts">cnt-css-fonts</a> | true | | CSS support for font resources | |
| <span id="3">3</span> | must | <a href="https://w3c.github.io/epub-tests/#cnt-mathml-support">cnt-mathml-support</a> | true | | Support for Presentation MathML | |
| <span id="4">4</span> | must | <a href="https://w3c.github.io/epub-tests/#cnt-svg-css">cnt-svg-css</a> | true | | CSS in SVG content document | |
| <span id="5">5</span> | must | <a href="https://w3c.github.io/epub-tests/#cnt-svg-css-inclusion">cnt-svg-css-inclusion</a> | true | | CSS applied to included SVG | |
| <span id="6">6</span> | must | <a href="https://w3c.github.io/epub-tests/#cnt-svg-css-reference">cnt-svg-css-reference</a> | true | | CSS not applied to referenced SVG | |
| <span id="7">7</span> | must | <a href="https://w3c.github.io/epub-tests/#cnt-svg-embedded">cnt-svg-embedded</a> | true | | SVG embedded in XHTML content | |
| <span id="8">8</span> | must | <a href="https://w3c.github.io/epub-tests/#cnt-svg-support">cnt-svg-support</a> | true | | SVG content document | |
| <span id="9">9</span> | should | <a href="https://w3c.github.io/epub-tests/#cnt-xhtml-support">cnt-xhtml-support</a> | true | | XHTML content document| |
| <span id="10">10</span> | must | <a href="https://w3c.github.io/epub-tests/#css-epub-hyphens">css-epub-hyphens</a> | <span style="color:red">false</span> | no hyphens in section 3 | EPUB CSS hyphens | Won't fix [#2](https://github.com/edrlab/thorium-reader-epub-tests/issues/2) |
| <span id="11">11</span> | must | <a href="https://w3c.github.io/epub-tests/#css-epub-line-break">css-epub-line-break</a> | true | | EPUB CSS line-break | |
| <span id="12">12</span> | must | <a href="https://w3c.github.io/epub-tests/#css-epub-text-align-last">css-epub-text-align-last</a> | <span style="color:red">false</span> | sections3 & 6 | EPUB CSS text-align-last | [#3](https://github.com/edrlab/thorium-reader-epub-tests/issues/3) |
| <span id="13">13</span> | must | <a href="https://w3c.github.io/epub-tests/#css-epub-text-combine-horizontal">css-epub-text-combine-horizontal</a> | <span style="color:red">false</span> | section 2 | EPUB CSS text-combine-horizontal | Won't Fix [#4](https://github.com/edrlab/thorium-reader-epub-tests/issues/4) |
| <span id="14">14</span> | must | <a href="https://w3c.github.io/epub-tests/#css-epub-text-emphasis">css-epub-text-emphasis</a> | true | | EPUB CSS text-emphasis| [#5](https://github.com/edrlab/thorium-reader-epub-tests/issues/5) |
| <span id="15">15</span> | must | <a href="https://w3c.github.io/epub-tests/#css-epub-text-orientation">css-epub-text-orientation</a> | true | | EPUB CSS text-orientation | |
| <span id="16">16</span> | must | <a href="https://w3c.github.io/epub-tests/#css-epub-text-transform">css-epub-text-transform</a> | true | | EPUB CSS text-transform | |
| <span id="17">17</span> | must | <a href="https://w3c.github.io/epub-tests/#css-epub-text-underline-position">css-epub-text-underline-position</a> | true | | EPUB CSS text-underline-position | |
| <span id="18">18</span> | must | <a href="https://w3c.github.io/epub-tests/#css-epub-word-break">css-epub-word-break</a> | true | words break without hyphenation ? | EPUB CSS word-break | |
| <span id="19">19</span> | must | <a href="https://w3c.github.io/epub-tests/#css-epub-writing-mode">css-epub-writing-mode</a> | true | | EPUB CSS writing-mode | |
| <span id="20">20</span> | must | <a href="https://w3c.github.io/epub-tests/#lay-fxl-layout-duplication">lay-fxl-layout-duplication</a> | n/a, | | rendition:layout duplication | test TBD with epubcheck? |
| <span id="21">21</span> | must | <a href="https://w3c.github.io/epub-tests/#lay-fxl-layout-pre-paginated">lay-fxl-layout-pre-paginated</a> | true | | rendition:layout pre-paginated spine order | |
| <span id="22">22</span> | must | <a href="https://w3c.github.io/epub-tests/#lay-fxl-layout-pre-paginated-spreads">lay-fxl-layout-pre-paginated-spreads</a> | true | lay-fxl-layout-pre-paginated-spreads | rendition:layout pre-paginated spreads | |
| <span id="23">23</span> | should | <a href="https://w3c.github.io/epub-tests/#lay-fxl-orientation-landscape">lay-fxl-orientation-landscape</a> | true | | landscape is Thorium default | |
| <span id="24">24</span> | must | <a href="https://w3c.github.io/epub-tests/#lay-fxl-orientation_default">lay-fxl-orientation_default</a> | true | rendition:orientation default | There is no way to set orientation to default in Thorium | |
| <span id="25">25</span> | must | <a href="https://w3c.github.io/epub-tests/#lay-fxl-orientation_duplication">lay-fxl-orientation_duplication</a> | "n/a" | rendition:orientation duplicate | displayed by thorium | epubcheck (does that means the file shall not be rendered?) |
| <span id="26">26</span> | should | <a href="https://w3c.github.io/epub-tests/#lay-fxl-page-spread-center">lay-fxl-page-spread-center</a> | <span style="color:red">false</span> | rendition:page-spread-center| displayed on the right| [#6](https://github.com/edrlab/thorium-reader-epub-tests/issues/6) |
| <span id="27">27</span> | should | <a href="https://w3c.github.io/epub-tests/#lay-fxl-page-spread-combined">lay-fxl-page-spread-combined d</a>| true | | rendition:page-spread combined | |
| <span id="28">28</span> | should | <a href="https://w3c.github.io/epub-tests/#lay-fxl-page-spread-left">lay-fxl-page-spread-left</a> | true | | rendition:page-spread-left | |
| <span id="29">29</span> | should | <a href="https://w3c.github.io/epub-tests/#lay-fxl-page-spread-right">lay-fxl-page-spread-right</a> | true | | rendition:page-spread-right | |
| <span id="30">30</span> | may | <a href="https://w3c.github.io/epub-tests/#lay-fxl-spread-auto">lay-fxl-spread-auto</a> | true | | rendition:spread auto | |
| <span id="31">31</span> | should | <a href="https://w3c.github.io/epub-tests/#lay-fxl-spread-both">lay-fxl-spread-both</a> | true | | rendition:spread both | |
| <span id="32">32</span> | must | <a href="https://w3c.github.io/epub-tests/#lay-fxl-spread_default">lay-fxl-spread_default</a> | true | rendition:spread default | There is no way to set orientation in Thorium | |
| <span id="33">33</span> | should | <a href="https://w3c.github.io/epub-tests/#flay-fxl-spread_landscape">lay-fxl-spread_landscape</a> | true | rendition:spread landscape | There is no way to set orientation in Thorium | |
| <span id="34">34</span> | must | <a href="https://w3c.github.io/epub-tests/#lay-fxl-spread_nonee">lay-fxl-spread_none</a> | "n/a" | rendition:spread none | what does "not in a synthetic spread" means? | |
| <span id="35">35</span> | must | <a href="https://w3c.github.io/epub-tests/#lay-fxl-xhtml-icb">lay-fxl-xhtml-icb</a> | true | | XHTML content clipped outside viewport | |
| <span id="36">36</span> | must | <a href="https://w3c.github.io/epub-tests/#mol-audio">mol-audio</a> | true | | Rendering an audio track from clipBegin to clipEnd | |
| <span id="37">37</span> | must | <a href="https://w3c.github.io/epub-tests/#mol-audio-exceeding-clipend">mol-audio-exceeding-clipend</a> | <span style="color:red">false</span> | Audio track stops if clipEnd exceeds length | reading stop at the end of first section | [#7](https://github.com/edrlab/thorium-reader-epub-tests/issues/7) |
| <span id="38">38</span> | must | <a href="https://w3c.github.io/epub-tests/#mol-audio-no-clipbegin">mol-audio-no-clipbegin</a> | true | | Start at beginning of audio if clipBegin is missing | |
| <span id="39">39</span> | must | <a href="https://w3c.github.io/epub-tests/#mol-audio-no-clipend">mol-audio-no-clipend</a> | true | | Audio track plays until end if clipEnd is missing | |
| <span id="41">41</span> | should | <a href="https://w3c.github.io/epub-tests/#mol-css">mol-css</a> | "n/a" | | Basic media overlay test with CSS styling | the rest of the text is NOT grayed out |
| <span id="45">45</span> | must | <a href="https://w3c.github.io/epub-tests/#mol-navigation">mol-navigation</a> | true | | Navigation with media overlays | |
| <span id="46">46</span> | must | <a href="https://w3c.github.io/epub-tests/#mol-timing-synchronization">mol-timing-synchronization</a> | true | | Basic media overlay | |
| <span id="47">47</span> | must | <a href="https://w3c.github.io/epub-tests/#mol-timing-synchronization_fxl">mol-timing-synchronization_fxl</a> | true | | Basic media overlay in fixed layout | |
| <span id="48">48</span> | must | <a href="https://w3c.github.io/epub-tests/#mol-timing-synchronization_multiple_audio">mol-timing-synchronization_multiple_audio</a> | true | | Media overlay with two audio files | |
| <span id="49">49</span> | should | <a href="https://w3c.github.io/epub-tests/#mol-tts_multi">mol-tts_multi</a> | <span style="color:red">false</span> | Text-to-speech fallback for multiple fragments | does not read aloud | [#9](https://github.com/edrlab/thorium-reader-epub-tests/issues/9) |
| <span id="50">50</span> | should | <a href="https://w3c.github.io/epub-tests/#mol-tts_single">mol-tts_single</a> | <span style="color:red">false</span> | Text-to-speech fallback for a single fragment | does not read aloud | [#10](https://github.com/edrlab/thorium-reader-epub-tests/issues/10) |
| <span id="51">51</span> | must | <a href="https://w3c.github.io/epub-tests/#nav-access">nav-access</a> | true | | Single link in navigation can be accessed | |
| <span id="52">52</span> | must | <a href="https://w3c.github.io/epub-tests/#nav-activation">nav-activation</a> | true | | Navigation relocates position while in spine | |
| <span id="53">53</span> | must | <a href="https://w3c.github.io/epub-tests/#nav-spine_in-spine">nav-spine_in-spine</a> | true | | Navigation accessible while in spine | |
| <span id="54">54</span> | must | <a href="https://w3c.github.io/epub-tests/#nav-spine_in-spine-no-list-style">nav-spine_in-spine-no-list-style</a> | true | | TOC items ignore navigation list styling | |
| <span id="55">55</span> | must | <a href="https://w3c.github.io/epub-tests/#nav-spine_not-in-spine">nav-spine_not-in-spine</a> | true | | Navigation accessible while not in spine | |
| <span id="56">56</span> | must | <a href="https://w3c.github.io/epub-tests/#ocf-metainf-inc">ocf-metainf-inc</a> | true | | Extra configuration file in META-INF | |
| <span id="57">57</span> | must | <a href="https://w3c.github.io/epub-tests/#ocf-metainf-manifest">ocf-metainf-manifest</a> | true | | Manifest information is ignored | |
| <span id="58">58</span> | must | <a href="https://w3c.github.io/epub-tests/#ocf-package_arbitrary">ocf-package_arbitrary</a> | true | | Package in arbitrary directory | |
| <span id="59">59</span> | must | <a href="https://w3c.github.io/epub-tests/#ocf-package_multiple">ocf-package_multiple</a> | true | | Multiple packages in container file | |
| <span id="60">60</span> | must | <a href="https://w3c.github.io/epub-tests/#ocf-url_link-leaking-relative">ocf-url_link-leaking-relative</a> | <span style="color:red">false</span> | Relative image reference exceeds depth of hierarchy | | [#14](https://github.com/edrlab/thorium-reader-epub-tests/issues/14) |
| <span id="61">61</span> | must | <a href="https://w3c.github.io/epub-tests/#ocf-url_link-path-absolute">ocf-url_link-path-absolute</a> | <span style="color:red">false</span> | | Path-absolute link to an image | [#15](https://github.com/edrlab/thorium-reader-epub-tests/issues/13) |
| <span id="62">62</span> | must | <a href="https://w3c.github.io/epub-tests/#ocf-url_link-relative">ocf-url_link-relative</a> | true | | Simple relative link to an image | |
| <span id="63">63</span> | must | <a href="https://w3c.github.io/epub-tests/#ocf-url_manifest">ocf-url_manifest</a> | true | | Content in arbitrary director | |
| <span id="64">64</span> | must | <a href="https://w3c.github.io/epub-tests/#ocf-url_origin">ocf-url_origin</a> | true | | Unique origin for each instance | |
| <span id="65">65</span> | must | <a href="https://w3c.github.io/epub-tests/#ocf-url_parse-leaking-relative">ocf-url_parse-leaking-relative</a> | <span style="color:red">false</span> | | Relative URL that exceeds depth of hierarchy, parsed by JS | [#13](https://github.com/edrlab/thorium-reader-epub-tests/issues/13) |
| <span id="66">66</span> | must | <a href="https://w3c.github.io/epub-tests/#ocf-url_parse-path-absolute">ocf-url_parse-path-absolute</a> | <span style="color:red">false</span> | Root-relative URL, parsed by JS | | [#12](https://github.com/edrlab/thorium-reader-epub-tests/issues/12) |
| <span id="67">67</span> | must | <a href="https://w3c.github.io/epub-tests/#ocf-url_relative">ocf-url_relative</a> | true | | Content in relative subdirector | |
| <span id="68">68</span> | should | <a href="https://w3c.github.io/epub-tests/#page-layout-both">page-layout-both</a> | <span style="color:red">false</span> | lay-page-layout-both | reflow but text ends out of box (part of the text is not displayed) | |
| <span id="69">69</span> | must | <a href="https://w3c.github.io/epub-tests/#page-layout-both-spread">page-layout-both-spread</a> | <span style="color:red">false</span> | lay-page-layout-both-spread | on the right when passing from page 1 to 2 and on the left when reading from page 3 to page 2 | [#16](https://github.com/edrlab/thorium-reader-epub-tests/issues/16) |
| <span id="70">70</span> | must | <a href="https://w3c.github.io/epub-tests/#pkg-collections-unknown">pkg-collections-unknown</a> | true | 16 with unknown role | | |
| <span id="71">71</span> | must | <a href="https://w3c.github.io/epub-tests/#pkg-creator-order">pkg-creator-order</a> | true | Creators listed in order | | |
| <span id="72">72</span> | must | <a href="https://w3c.github.io/epub-tests/#pkg-dir-auto_root-rtl">pkg-dir-auto_root-rtl</a> | true | CSS: مغامرة جديدة! | pass in the catalog but strangely displayed in the windows heading (!مغامرة جديدة) | |
| <span id="73">73</span> | must | <a href="https://w3c.github.io/epub-tests/#pkg-dir-auto_root-unset">pkg-dir-auto_root-unset</a> | true | CSS: הרפתקה חדשה | pass in the catalog but strangely displayed in the windows heading (!הרפתקה חדשה) | recheck |
| <span id="74">74</span> | must | <a href="https://w3c.github.io/epub-tests/#pkg-dir_but_not_content">pkg-dir_but_not_content</a> | <span style="color:red">false</span> | CSS: הרפתקה חדשה | test with same title | |
| <span id="75">75</span> | must | <a href="https://w3c.github.io/epub-tests/#pkg-dir_creator-rtl">pkg-dir_creator-rtl</a> | <span style="color:red">false</span> | 'dir=rtl' on the creator | displays right to left| [#17](https://github.com/edrlab/thorium-reader-epub-tests/issues/17)|
|<span id="76">76</span> | must | <a href="https://w3c.github.io/epub-tests/#pkg-dir_rtl-root-ltr">pkg-dir_rtl-root-ltr</a> | <span style="color:red">false</span>| CSS: הרפתקה חדשה | test with same title | Fixed [#18](https://github.com/edrlab/thorium-reader-epub-tests/issues/18) | true|
|<span id="77">77</span>|must|<a href="https://w3c.github.io/epub-tests/#pkg-dir_rtl-root-unset">pkg-dir_rtl-root-unset</a>| <span style="color:red">false</span>|CSS: הרפתקה חדשה|but correct in the window heading|test with same title|Fixed true[#19](https://github.com/edrlab/thorium-reader-epub-tests/issues/19)||
|<span id="78">78</span>|must|<a href="https://w3c.github.io/epub-tests/#pkg-dir_unset-root-rtl">pkg-dir_unset-root-rtl</a>| <span style="color:red">false</span>|CSS: مغامرة جديدة|test with same title|[#20](https://github.com/edrlab/thorium-reader-epub-tests/issues/20)||
|<span id="79">79</span>|must|<a href="https://w3c.github.io/epub-tests/#pkg-dir_unset-root-unset">pkg-dir_unset-root-unset</a>| true||CSS: مغامرة جديدة|recheck||
|<span id="83">83</span>|must|<a href="https://w3c.github.io/epub-tests/#pkg-lang_but_not_content">pkg-lang_but_not_content</a>| true||Le contenu n'est pas automatiquement français||
|<span id="84">84</span>|must|<a href="https://w3c.github.io/epub-tests/#pkg-linked-records">pkg-linked-records</a>| true||Package metadata title! ||
|<span id="85">85</span>|must|<a href="https://w3c.github.io/epub-tests/#pkg-manifest-unknown">pkg-manifest-unknown</a>| true||Manifest item with unknown properties||
|<span id="86">86</span>|must|<a href="https://w3c.github.io/epub-tests/#pkg-manifest-unlisted-resource">pkg-manifest-unlisted-resource</a>| true||Resource not listed in manifest ||
|<span id="87">87</span>|must|<a href="https://w3c.github.io/epub-tests/#pkg-meta-unknown">pkg-meta-unknown</a>| true||Meta tag with unknown property ||
|<span id="88">88</span>|must|<a href="https://w3c.github.io/epub-tests/#pkg-meta-whitespace">pkg-meta-whitespace</a>| true||whitespace removed from package metadata||
|<span id="89">89</span>|must|<a href="https://w3c.github.io/epub-tests/#pkg-spine-duplicate-item-hyperlink">pkg-spine-duplicate-item-hyperlink</a>| true||Hyperlink to duplicate items in spine||
|<span id="90">90</span>|must|<a href="https://w3c.github.io/epub-tests/#pkg-spine-duplicate-item-rendering">pkg-spine-duplicate-item-rendering</a>| <span style="color:red">false</span>|Duplicate items in spine render |only one page is dispalyed|[#21](https://github.com/edrlab/thorium-reader-epub-tests/issues/21)||
|<span id="91">91</span>|must|<a href="https://w3c.github.io/epub-tests/#pkg-spine-duplicate-item-ui">pkg-spine-duplicate-item-ui</a>| <span style="color:red">false</span>|UI recognizes duplicate items in spine|It looks like 4 pages are recognized but i can reach only the first one|[#22](https://github.com/edrlab/thorium-reader-epub-tests/issues/22)||
|<span id="92">92</span>|must|<a href="https://w3c.github.io/epub-tests/#pkg-spine-nonlinear-activation">pkg-spine-nonlinear-activation</a>| true||Non-linear spine item is reachable||
|<span id="93">93</span>|must|<a href="https://w3c.github.io/epub-tests/#pkg-spine-order">pkg-spine-order</a>| true||Spine items in order||
|<span id="94">94</span>|must|<a href="https://w3c.github.io/epub-tests/#pkg-spine-order-svg">pkg-spine-order-svg</a>| true||SVG spine items in order||
|<span id="95">95</span>|must|<a href="https://w3c.github.io/epub-tests/#pkg-spine-progression-default">pkg-spine-progression-default</a>| true|| RTL publication's spine has implicit 'page-progression-direction="default"'||
|<span id="96">96</span>|must|<a href="https://w3c.github.io/epub-tests/#pkg-spine-progression-pre-paginated">pkg-spine-progression-pre-paginated</a>| true||Pre-paginated publication's spine sets 'page-progression-direction="ltr"'||
|<span id="97">97</span>|must|<a href="https://w3c.github.io/epub-tests/#pkg-spine-progression_ltr">pkg-spine-progression_ltr</a>| true||Spine sets 'page-progression-direction="ltr||true|
|<span id="98">98</span>|must|<a href="https://w3c.github.io/epub-tests/#pkg-spine-progression_rtl">pkg-spine-progression_rtl</a>| true||Spine sets 'page-progression-direction="rtl||
|<span id="99">99</span>|must|<a href="https://w3c.github.io/epub-tests/#pkg-spine-unknown">pkg-spine-unknown</a>| true||Spine item with unknown properties||
|<span id="100">100</span>|must|<a href="https://w3c.github.io/epub-tests/#pkg-title-order">pkg-title-order</a>| true||First title in package ||
|<span id="101">101</span>|must|<a href="https://w3c.github.io/epub-tests/#pkg-unique-id">pkg-unique-id</a>| true|Unique identifier not unique||revérifier|
|<span id="102">102</span>|must|<a href="https://w3c.github.io/epub-tests/#pkg-version-backward">pkg-version-backward</a>| true||Package version less than 3.0||
|<span id="103">103</span>|must|<a href="https://w3c.github.io/epub-tests/#pub-cmt-gif">pub-cmt-gif</a>| true||GIF image||
|<span id="104">104</span>|must|<a href="https://w3c.github.io/epub-tests/#pub-cmt-jpeg">pub-cmt-jpeg</a>| true||JPEG image ||
|<span id="105">105</span>|must|<a href="https://w3c.github.io/epub-tests/#pub-cmt-mp3">pub-cmt-mp3</a>| true||MP3 audio||
|<span id="106">106</span>|must|<a href="https://w3c.github.io/epub-tests/#pub-cmt-mp4">pub-cmt-mp4</a>| true||MP4 audio||
|<span id="107">107</span>|must|<a href="https://w3c.github.io/epub-tests/#pub-cmt-opus">pub-cmt-opus</a>| true||OPUS audio||
|<span id="108">108</span>|must|<a href="https://w3c.github.io/epub-tests/#pub-cmt-png">pub-cmt-png</a>| true||PNG image ||
|<span id="109">109</span>|must|<a href="https://w3c.github.io/epub-tests/#pub-cmt-svg">pub-cmt-svg</a>| true||SVG image||
|<span id="110">110</span>|must|<a href="https://w3c.github.io/epub-tests/#pub-cmt-webp">pub-cmt-webp</a>| true||WEBP image||
|<span id="111">111</span>|must|<a href="https://w3c.github.io/epub-tests/#pub-data-urls_browsing-context">pub-data-urls_browsing-context</a>| true||Data URL does not open in top-level context||
|<span id="112">112</span>|must|<a href="https://w3c.github.io/epub-tests/#pub-data-urls_top-level-content">pub-data-urls_top-level-content</a>| true||Data URL not opening as a top-level content document|but displayed over text||
|<span id="113">113</span>|should|<a href="https://w3c.github.io/epub-tests/#pub-external-links">pub-external-links</a>| true||External Links open a new browser instance||
|<span id="114">114</span>|must|<a href="https://w3c.github.io/epub-tests/#pub-foreign_bad-fallback">pub-foreign_bad-fallback</a>| "n/a"||Manifest fallback with unsupported fallback |opens system file to save .dmg |what is the condition for passing the test ?|
|<span id="115">115</span>|must|<a href="https://w3c.github.io/epub-tests/#pub-foreign_image">pub-foreign_image</a>| <span style="color:red">false</span>|Manifest fallback with image ||[#23](https://github.com/edrlab/thorium-reader-epub-tests/issues/23)|
|<span id="116">116</span>|must|<a href="https://w3c.github.io/epub-tests/#pub-foreign_json-spine">pub-foreign_json-spine</a>| N/A,||Manifest fallback With JSON content document in spine|Json is displayed (raw) on Windows, nothing on Debian|Should we support raw JSON display?[#](https://github.com/edrlab/thorium-reader-epub-tests/issues/)|
|<span id="117">117</span>|must|<a href="https://w3c.github.io/epub-tests/#pub-foreign_xml-spine">pub-foreign_xml-spine</a>| N/A,||Manifest fallback with XML in spin|xml structure is displayed|Should we support raw XML display?[#](https://github.com/edrlab/thorium-reader-epub-tests/issues/)||
|<span id="118">118</span>|must|<a href="https://w3c.github.io/epub-tests/#pub-foreign_xml-suffix-spine">pub-foreign_xml-suffix-spine</a>|<span style="color:red">false</span>| |Manifest fallback with XML with suffix in spine opens system file to save .xml |We open dialog and prompt for xml download while we should display xhtml fallback|#TODO open issue [#27](https://github.com/edrlab/thorium-reader-epub-tests/issues/27)|
|<span id="119">119</span>|must|<a href="https://w3c.github.io/epub-tests/#pub-xml-external-id">pub-xml-external-id</a>| true||XML external entity not resolved||
|<span id="120">120</span>|must|<a href="https://w3c.github.io/epub-tests/#pub-xml-names">pub-xml-names</a>| true||Invalid XML element name||
|<span id="121">121</span>|must|<a href="https://w3c.github.io/epub-tests/#pub-xml-non-validating_invalid">pub-xml-non-validating_invalid</a>| <span style="color:red">false</span>||Invalid XML navigation document|SPINE does not looks false. Test may be broken.|[#24](https://github.com/edrlab/thorium-reader-epub-tests/issues/24)|<span style="color:red">false</span>|
|<span id="122">122</span>|must|<a href="https://w3c.github.io/epub-tests/#pub-xml-non-validating_unclosed">pub-xml-non-validating_unclosed</a>| true|| Unclosed XML tag ||true|
|<span id="123">123</span>|must|<a href="https://w3c.github.io/epub-tests/#scr-readingsystem-features">scr-readingsystem-features</a>| true||epubReadingSystem object features||true|
|<span id="124">124</span>|must|<a href="https://w3c.github.io/epub-tests/#scr-readingsystem-support">scr-readingsystem-support</a>| true||epubReadingSystem object support||true|
|<span id="125">125</span>|must|<a href="https://w3c.github.io/epub-tests/#scr-readingsystem-support_iframe">scr-readingsystem-support_iframe</a>| <span style="color:red">false</span>|| epubReadingSystem object support in an iframe||
|<span id="126">126</span>|must|<a href="https://w3c.github.io/epub-tests/#scr-readingsystem-support_iframe_svg">scr-readingsystem-support_iframe_svg</a>|false||epubReadingSystem object support in an SVG within an iframe|[#25](https://github.com/edrlab/thorium-reader-epub-tests/issues/25)||
|<span id="127">127</span>|must|<a href="https://w3c.github.io/epub-tests/#scr-readingsystem-support_svg">scr-readingsystem-support_svg</a>| true||epubReadingSystem object support in a spine-level SVG ||true|
|<span id="128">128</span>|must|<a href="https://w3c.github.io/epub-tests/#scr-support">scr-support</a>| true||Scripting support||true|
|<span id="129">129</span>|should|<a href="https://w3c.github.io/epub-tests/#scr-support_iframe">scr-support_iframe</a>| true||Support for container-constrained scripts||true|
|<span id="130">130</span>|must|<a href="https://w3c.github.io/epub-tests/#scr-support_origin">scr-support_origin</a>| true||Unique origin shared by spine-level scripted contents||true|
|<span id="131">131</span>|should|<a href="https://w3c.github.io/epub-tests/#scr-support_scrolled-continuous">scr-support_scrolled-continuous</a>| true||rendition:flow set to scrolled-continuous when scripting is supported||
|<span id="132">132</span>|should|<a href="https://w3c.github.io/epub-tests/#scr-support_scrolled-doc">scr-support_scrolled-doc</a>| true||rendition:flow set to scrolled-doc when scripting is supported||true|
|<span id="133">133</span>|should|<a href="https://w3c.github.io/epub-tests/#scr-support_svg">scr-support_svg</a>| pass||Scripting support in spine-level SVG||true|
|<span id="134">134</span>|should|<a href="https://w3c.github.io/epub-tests/#mol-support_xhtml-load-next">mol-support_xhtml-load-next</a>|true|||
|<span id="135">135</span>|should|<a href="https://w3c.github.io/epub-tests/#ocf-font_obfuscation">ocf-font_obfuscation</a>|true|||
|<span id="136">136</span>|must|<a href="https://w3c.github.io/epub-tests/#ocf-zip-mult">ocf-zip-mult</a>|<span style="color:red">false</span>|treat any OCF ZIP container that specifies the [zip] file is split across multiple storage media as in error. ||#TODO open issue|
|<span id="137">137</span>|should|<a href="https://w3c.github.io/epub-tests/#ocf-font_obfuscation-bis">ocf-font_obfuscation-bis</a>|true|||
|<span id="138">138</span>|must|<a href="https://w3c.github.io/epub-tests/#mol-timing-synchronization_svg">mol-timing-synchronization_svg</a>|true|||
|<span id="139">139</span>|must|<a href="https://w3c.github.io/epub-tests/#lay-fxl-page-spread-break">lay-fxl-page-spread-break</a>|<span style="color:red">false</span>||#TODO open issue|
|<span id="140">140</span>|must|<a href="https://w3c.github.io/epub-tests/#lay-fxl-svg-icb_multi">lay-fxl-svg-icb_multi</a>|true|||
|<span id="141">141</span>|must|<a href="https://w3c.github.io/epub-tests/#mol-ignore">mol-ignore</a>|n/a|test apply only for RS not supporting MO||
|<span id="142">142</span>|must|<a href="https://w3c.github.io/epub-tests/#mol-support_xhtml-load">mol-support_xhtml-load</a>|true|||
|<span id="143">143</span>|must|<a href="https://w3c.github.io/epub-tests/#mol-support_xhtml">mol-support_xhtml</a>|true|||
|<span id="144">144</span>|must|<a href="https://w3c.github.io/epub-tests/#lay-fxl-spine-overrides_behave-as-global-bis">lay-fxl-spine-overrides_behave-as-global-bis</a>|true|||
|<span id="145">145</span>|must|<a href="https://w3c.github.io/epub-tests/#lay-fxl-layout-default">lay-fxl-layout-default</a>|true|||
|<span id="146">146</span>|must|<a href="https://w3c.github.io/epub-tests/#ocf-zip-comp">ocf-zip-comp</a>|true|||
|<span id="147">147</span>|must|<a href="https://w3c.github.io/epub-tests/#scr-support-fallback">scr-support-fallback</a>|n/a|||
|<span id="148">148</span>|must|<a href="https://w3c.github.io/epub-tests/#scr-not-support_ccscript-modify-size">scr-not-support_ccscript-modify-size</a>|<span style="color:red">false</span>|
|<span id="149">149</span>|must|<a href="https://w3c.github.io/epub-tests/#scr-not-support_ccscript-modify-host">scr-not-support_ccscript-modify-host</a>|<span style="color:red">false</span>|
|<span id="150">150</span>|should|<a href="https://w3c.github.io/epub-tests/#pub-external-links_consent">pub-external-links_consent</a>|n/a|The *open with* box is trigged by the OS and submitted to user preferences||
|<span id="151">151</span>|must|<a href="https://w3c.github.io/epub-tests/#pss-support_ignore-title">pss-support_ignore-title</a>|<span style="color:red">false</span>|||
|<span id="152">152</span>|may|<a href="https://w3c.github.io/epub-tests/#pss-support">pss-support</a>|true|||
|<span id="154">154</span>|must|<a href="https://w3c.github.io/epub-tests/#pkg-linked-records_link-priority">pkg-linked-records_link-priority</a>|<span style="color:red">false</span>|||
|<span id="155">155</span>|must|<a href="https://w3c.github.io/epub-tests/#pkg-linked-records_link-order">pkg-linked-records_link-order</a>|<span style="color:red">false</span>|||
|<span id="156">156</span>|must|<a href="https://w3c.github.io/epub-tests/#lay-fxl-xhtml-icb_device_sizes">lay-fxl-xhtml-icb_device_sizes</a>|<span style="color:red">false</span>|nothing is displayed||#TODO open issue|
|<span id="157">157</span>|should|<a href="https://w3c.github.io/epub-tests/#lay-fxl-xhtml-icb_invalid_meta">lay-fxl-xhtml-icb_invalid_meta</a>|true|||
|<span id="158">158</span>|must|<a href="https://w3c.github.io/epub-tests/#lay-fxl-xhtml-icb_multi">lay-fxl-xhtml-icb_multi</a>|true|||
|<span id="159">159</span>|must|<a href="https://w3c.github.io/epub-tests/#lay-fxl-xhtml-icb_multi_declarations">lay-fxl-xhtml-icb_multi_declarations</a>|true|||
|<span id="160">160</span>|must|<a href="https://w3c.github.io/epub-tests/#lay-fxl-xhtml-icb_repeated-in-meta">lay-fxl-xhtml-icb_repeated-in-meta</a>|true|||
|<span id="161">161</span>|must|<a href="https://w3c.github.io/epub-tests/#lay-fxl-xhtml-icb_units">lay-fxl-xhtml-icb_units</a>|true|||
|<span id="162">162</span>|must|<a href="https://w3c.github.io/epub-tests/#lay-reflow-align-x-center">lay-reflow-align-x-center</a>|true|This is affected by user choice in the settings panel||
|<span id="163">163</span>|must|<a href="https://w3c.github.io/epub-tests/#lay-rendition-flow-pre-pag">lay-rendition-flow-pre-pag</a>|true|This disable user choice in settings panel||
|<span id="164">164</span>|must|<a href="https://w3c.github.io/epub-tests/#lay-viewport-meta-prop">lay-viewport-meta-prop</a>|<span style="color:red">false</span>|User text size setting (i.e. zoom) is disabled||
|<span id="165">165</span>||<a href="https://w3c.github.io/epub-tests/#pub-xml-non-validating_comment">pub-xml-non-validating_comment</a>|true||
|<span id="166">166</span>||<a href="https://w3c.github.io/epub-tests/#lay-fxl-spine-overrides_behave-as-global">lay-fxl-spine-overrides_behave-as-global</a>|true|||
|<span id="167">167</span>||<a href="https://w3c.github.io/epub-tests/#lay-fxl-spine-overrides_duplicate">lay-fxl-spine-overrides_duplicate"</a>|<span style="color:red">false</span>|||
|<span id="168">168</span>||<a href="https://w3c.github.io/epub-tests/#lay-fxl-spread-none">lay-fxl-spread-none</a>|true|||
|<span id="169">169</span>||<a href="https://w3c.github.io/epub-tests/#nav-non-text_img">nav-non-text_img</a>|<span style="color:red">false</span>||todo open issue|
|<span id="170">170</span>||<a href="https://w3c.github.io/epub-tests/#nav-non-text_img_title">nav-non-text_img_title</a>|<span style="color:red">false</span>||todo open issue|
