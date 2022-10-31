---
Title: Test epub for Thorium Reader 2.0 on windows 10
Author: EDRLab
Date: 2022/10/31
---


|<span id="N°">N°</span>|req.|Title/name|report Th20|If title/name changed|Comment|TestComment|Action|report Th22|
|---|---|---|---|---|---|---|---|---|
|<span id="1">1</span>|must|<a href="https://w3c.github.io/epub-tests/#cnt-css-fonts">cnt-css-fonts</a>| pass,||CSS support for font resources|||||
|<span id="2">2</span>|must|<a href="https://w3c.github.io/epub-tests/#cnt-css-support">cnt-css-support</a>| fails,||Acid2 test|picture not displayed as reference rendering|test is not specific enough|[test removed](https://github.com/w3c/epub-tests/issues/164)||
|<span id="3">3</span>|must|<a href="https://w3c.github.io/epub-tests/#cnt-mathml-support">cnt-mathml-support</a>| pass,||Support for Presentation MathML|with mathJax enabled / fails on Debian||[Debian issue opened @thorium-reader](https://github.com/edrlab/thorium-reader/issues/1714)|true|
|<span id="4">4</span>|must|<a href="https://w3c.github.io/epub-tests/#cnt-svg-css">cnt-svg-css</a>| pass,||CSS in SVG content document||||true|
|<span id="5">5</span>|must|<a href="https://w3c.github.io/epub-tests/#cnt-svg-css-inclusion">cnt-svg-css-inclusion</a>| pass,||CSS applied to included SVG ||||true|
|<span id="6">6</span>|must|<a href="https://w3c.github.io/epub-tests/#cnt-svg-css-reference">cnt-svg-css-reference</a>| pass,||CSS not applied to referenced SVG|||||
|<span id="7">7</span>|must|<a href="https://w3c.github.io/epub-tests/#cnt-svg-embedded">cnt-svg-embedded</a>| pass,||SVG embedded in XHTML content||||true|
|<span id="8">8</span>|must|<a href="https://w3c.github.io/epub-tests/#cnt-svg-support">cnt-svg-support</a>| pass,||SVG content document||||true|
|<span id="9">9</span>|should|<a href="https://w3c.github.io/epub-tests/#cnt-xhtml-support">cnt-xhtml-support</a>| pass,||XHTML content document||||true|
|<span id="10">10</span>|must|<a href="https://w3c.github.io/epub-tests/#css-epub-hyphens">css-epub-hyphens</a>| fails,||EPUB CSS hyphens|no hyphens in section 3 ||Won't fix[#2 -epub-hyphens: auto generates no Hyphens](https://github.com/edrlab/thorium-reader-epub-tests/issues/2)|false|
|<span id="11">11</span>|must|<a href="https://w3c.github.io/epub-tests/#css-epub-line-break">css-epub-line-break</a>| pass,||EPUB CSS line-break||||true|
|<span id="12">12</span>|must|<a href="https://w3c.github.io/epub-tests/#css-epub-text-align-last">css-epub-text-align-last</a>| fails,||EPUB CSS text-align-last|sections3 & 6||[#3]|(https://github.com/edrlab/thorium-reader-epub-tests/issues/3)
|<span id="13">13</span>|must|<a href="https://w3c.github.io/epub-tests/#css-epub-text-combine-horizontal">css-epub-text-combine-horizontal</a>| fails,||EPUB CSS text-combine-horizontal |section 2||Won't Fix [#4](https://github.com/edrlab/thorium-reader-epub-tests/issues/4)|false|
|<span id="14">14</span>|must|<a href="https://w3c.github.io/epub-tests/#css-epub-text-emphasis">css-epub-text-emphasis</a>| fails,||EPUB CSS text-emphasis|s6 & s14 (appears to the right)||[#5](https://github.com/edrlab/thorium-reader-epub-tests/issues/5)||
|<span id="15">15</span>|must|<a href="https://w3c.github.io/epub-tests/#css-epub-text-orientation">css-epub-text-orientation</a>| pass,||EPUB CSS text-orientation ||||true|
|<span id="16">16</span>|must|<a href="https://w3c.github.io/epub-tests/#css-epub-text-transform">css-epub-text-transform</a>| pass,||EPUB CSS text-transform|||||
|<span id="17">17</span>|must|<a href="https://w3c.github.io/epub-tests/#css-epub-text-underline-position">css-epub-text-underline-position</a>| null,||EPUB CSS text-underline-position|fails at 4. underline on the left not on the right ||#TODO open issue (won't fix because css epub prefix)|false|
|<span id="18">18</span>|must|<a href="https://w3c.github.io/epub-tests/#css-epub-word-break">css-epub-word-break</a>| pass,||EPUB CSS word-break ||words break without hyphenation ?|||
|<span id="19">19</span>|must|<a href="https://w3c.github.io/epub-tests/#css-epub-writing-mode">css-epub-writing-mode</a>| pass,||EPUB CSS writing-mode|||||
|<span id="20">20</span>|must|<a href="https://w3c.github.io/epub-tests/#fxl-layout-duplication">fxl-layout-duplication</a>| n/a,||rendition:layout duplication||test TBD with epubcheck?|||
|<span id="21">21</span>|must|<a href="https://w3c.github.io/epub-tests/#fxl-layout-pre-paginated">fxl-layout-pre-paginated</a>| n/a,|lay-fxl-layout-pre-paginated|rendition:layout pre-paginated spine order|1 page displayed, but with text over text |missing a test pass information|||
|<span id="22">22</span>|must|<a href="https://w3c.github.io/epub-tests/#fxl-layout-pre-paginated-spreads">fxl-layout-pre-paginated-spreads</a>| pass,|lay-fxl-layout-pre-paginated-spreads|rendition:layout pre-paginated spreads|||||
|<span id="23">23</span>|should|<a href="https://w3c.github.io/epub-tests/#fxl-orientation-landscape">fxl-orientation-landscape</a>| pass,|lay-fxl-orientation-landscape|landscape is Thorium default |||||
|<span id="24">24</span>|must|<a href="https://w3c.github.io/epub-tests/#fxl-orientation_default">fxl-orientation_default</a>| pass,|lay-fxl-orientation_default|rendition:orientation default|There is no way to set orientation to default in Thorium||||
|<span id="25">25</span>|must|<a href="https://w3c.github.io/epub-tests/#fxl-orientation_duplication">fxl-orientation_duplication</a>| null,||rendition:orientation duplicate|displayed by thorium|epubcheck (does that means the file shall not be rendered?|||
|<span id="26">26</span>|should|<a href="https://w3c.github.io/epub-tests/#fxl-page-spread-center">fxl-page-spread-center</a>| fails,||rendition:page-spread-center |displayed on the right||[#6](https://github.com/edrlab/thorium-reader-epub-tests/issues/6)||
|<span id="27">27</span>|should|<a href="https://w3c.github.io/epub-tests/#fxl-page-spread-combined">fxl-page-spread-combined</a>| pass,|lay-fxl-page-spread-combined|rendition:page-spread combined |||||
|<span id="28">28</span>|should|<a href="https://w3c.github.io/epub-tests/#fxl-page-spread-left">fxl-page-spread-left</a>| pass,|<a href="https://w3c.github.io/epub-tests/#lay-fxl-page-spread-left">lay-fxl-page-spread-left</a>|rendition:page-spread-left |||||
|<span id="29">29</span>|should|<a href="https://w3c.github.io/epub-tests/#fxl-page-spread-right">fxl-page-spread-right</a>| pass,|lay-fxl-page-spread-right|rendition:page-spread-right |||||
|<span id="30">30</span>|may|<a href="https://w3c.github.io/epub-tests/#fxl-spread-auto">fxl-spread-auto</a>| pass,|lay-fxl-spread-auto|rendition:spread auto|||||
|<span id="31">31</span>|should|<a href="https://w3c.github.io/epub-tests/#fxl-spread-both">fxl-spread-both</a>| pass,|lay-fxl-spread-both|rendition:spread both|||||
|<span id="32">32</span>|must|<a href="https://w3c.github.io/epub-tests/#fxl-spread_default">fxl-spread_default</a>| pass,|lay-fxl-spread_default|rendition:spread default|There is no way to set orientation in Thorium|fxl-spread-default|||
|<span id="33">33</span>|should|<a href="https://w3c.github.io/epub-tests/#fxl-spread_landscape">fxl-spread_landscape</a>| pass,|lay-fxl-spread_landscape|rendition:spread landscape|There is no way to set orientation in Thorium|fxl-spread-landscape|||
|<span id="34">34</span>|must|<a href="https://w3c.github.io/epub-tests/#fxl-spread_none">fxl-spread_none</a>| null,|lay-fxl-spread_none|rendition:spread none|what does "not in a synthetic spread" means?|fxl-spread-none|||
|<span id="35">35</span>|must|<a href="https://w3c.github.io/epub-tests/#fxl-xhtml-icb">fxl-xhtml-icb</a>| pass,|lay-fxl-xhtml-icb|XHTML content clipped outside viewport|||||
|<span id="36">36</span>|must|<a href="https://w3c.github.io/epub-tests/#mol-audio">mol-audio</a>| pass,||Rendering an audio track from clipBegin to clipEnd|||||
|<span id="37">37</span>|must|<a href="https://w3c.github.io/epub-tests/#mol-audio-exceeding-clipend">mol-audio-exceeding-clipend</a>| fails,||Audio track stops if clipEnd exceeds length|reading stop at the end of first section||[#7](https://github.com/edrlab/thorium-reader-epub-tests/issues/7)||
|<span id="38">38</span>|must|<a href="https://w3c.github.io/epub-tests/#mol-audio-no-clipbegin">mol-audio-no-clipbegin</a>| pass,||Start at beginning of audio if clipBegin is missing|||||
|<span id="39">39</span>|must|<a href="https://w3c.github.io/epub-tests/#mol-audio-no-clipend">mol-audio-no-clipend</a>| pass,||Audio track plays until end if clipEnd is missing|||||
|<span id="40">40</span>|must|<a href="https://w3c.github.io/epub-tests/#mol-audio_no_clipbegin">mol-audio_no_clipbegin</a>| null,|test removed||duplicate "mol-audio-no-clipbegin"? No such file found |||
|<span id="41">41</span>|should|<a href="https://w3c.github.io/epub-tests/#mol-css">mol-css</a>| null,||Basic media overlay test with CSS styling|the rest of the text is NOT grayed out| _The text being read is highlighted with a green background; the rest of the text is grayed out_ media:playback-active-class est sensé faire ça ?  `<meta property="media:active-class">active-item</meta>    <meta property="media:playback-active-class">rendered-with-mo</meta>`|||
|<span id="42">42</span>|should|<a href="https://w3c.github.io/epub-tests/#mol-embed">mol-embed</a>| fails,|test removed|Media overlay with embedded video|video don't start auto, no video control ||[#8](https://github.com/edrlab/thorium-reader-epub-tests/issues/8)||
|<span id="43">43</span>|should|<a href="https://w3c.github.io/epub-tests/#mol-embed_deactivate_playback">mol-embed_deactivate_playback</a>| fails,|test removed|Media overlay with embedded video; no playback control |audio plays auto, video does not start auto, video control are displayed||[#9](https://github.com/edrlab/thorium-reader-epub-tests/issues/9)||
|<span id="44">44</span>|should|<a href="https://w3c.github.io/epub-tests/#mol-embed_fxl">mol-embed_fxl</a>| fails,|test removed|Media overlay with embedded video |video don't start auto, no video control||[#11](https://github.com/edrlab/thorium-reader-epub-tests/issues/11)||
|<span id="45">45</span>|must|<a href="https://w3c.github.io/epub-tests/#mol-navigation">mol-navigation</a>| pass,||Navigation with media overlays||||true|
|<span id="46">46</span>|must|<a href="https://w3c.github.io/epub-tests/#mol-timing-synchronization">mol-timing-synchronization</a>| pass,||Basic media overla||||y
|<span id="47">47</span>|must|<a href="https://w3c.github.io/epub-tests/#mol-timing-synchronization_fxl">mol-timing-synchronization_fxl</a>| pass,||Basic media overlay in fixed layout|||||
|<span id="48">48</span>|must|<a href="https://w3c.github.io/epub-tests/#mol-timing-synchronization_multiple_audio">mol-timing-synchronization_multiple_audio</a>| pass,||Media overlay with two audio files|||||
|<span id="49">49</span>|should|<a href="https://w3c.github.io/epub-tests/#mol-tts_multi">mol-tts_multi</a>| fails,||Text-to-speech fallback for multiple fragments|does not read aloud||[#9](https://github.com/edrlab/thorium-reader-epub-tests/issues/9)||
|<span id="50">50</span>|should|<a href="https://w3c.github.io/epub-tests/#mol-tts_single">mol-tts_single</a>| fails,||Text-to-speech fallback for a single fragment|does not read aloud||[#10](https://github.com/edrlab/thorium-reader-epub-tests/issues/10)||
|<span id="51">51</span>|must|<a href="https://w3c.github.io/epub-tests/#nav-access">nav-access</a>| pass,||Single link in navigation can be accessed |||||
|<span id="52">52</span>|must|<a href="https://w3c.github.io/epub-tests/#nav-activation">nav-activation</a>| pass,||Navigation relocates position while in spine|||||
|<span id="53">53</span>|must|<a href="https://w3c.github.io/epub-tests/#nav-spine_in-spine">nav-spine_in-spine</a>| pass,||Navigation accessible while in spine |||||
|<span id="54">54</span>|must|<a href="https://w3c.github.io/epub-tests/#nav-spine_in-spine-no-list-style">nav-spine_in-spine-no-list-style</a>| pass,||TOC items ignore navigation list styling|||||
|<span id="55">55</span>|must|<a href="https://w3c.github.io/epub-tests/#nav-spine_not-in-spine">nav-spine_not-in-spine</a>| pass,||Navigation accessible while not in spine|||||
|<span id="56">56</span>|must|<a href="https://w3c.github.io/epub-tests/#ocf-metainf-inc">ocf-metainf-inc</a>| pass,||Extra configuration file in META-INF|||||
|<span id="57">57</span>|must|<a href="https://w3c.github.io/epub-tests/#ocf-metainf-manifest">ocf-metainf-manifest</a>| pass,||Manifest information is ignored|||||
|<span id="58">58</span>|must|<a href="https://w3c.github.io/epub-tests/#ocf-package_arbitrary">ocf-package_arbitrary</a>| pass,||Package in arbitrary directory||||
|<span id="59">59</span>|must|<a href="https://w3c.github.io/epub-tests/#ocf-package_multiple">ocf-package_multiple</a>| pass,||Multiple packages in container file||||true|
|<span id="60">60</span>|must|<a href="https://w3c.github.io/epub-tests/#ocf-url_link-leaking-relative">ocf-url_link-leaking-relative</a>| fails,||Relative image reference exceeds depth of hierarchy |||[#14](https://github.com/edrlab/thorium-reader-epub-tests/issues/14)||
|<span id="61">61</span>|must|<a href="https://w3c.github.io/epub-tests/#ocf-url_link-path-absolute">ocf-url_link-path-absolute</a>| fails,||Path-absolute link to an image|||[#15](https://github.com/edrlab/thorium-reader-epub-tests/issues/13)||
|<span id="62">62</span>|must|<a href="https://w3c.github.io/epub-tests/#ocf-url_link-relative">ocf-url_link-relative</a>| pass,||Simple relative link to an image|||||
|<span id="63">63</span>|must|<a href="https://w3c.github.io/epub-tests/#ocf-url_manifest">ocf-url_manifest</a>| pass,||Content in arbitrary director||||y
|<span id="64">64</span>|must|<a href="https://w3c.github.io/epub-tests/#ocf-url_origin">ocf-url_origin</a>| pass,||Unique origin for each instance|||||
|<span id="65">65</span>|must|<a href="https://w3c.github.io/epub-tests/#ocf-url_parse-leaking-relative">ocf-url_parse-leaking-relative</a>| fails,||Relative URL that exceeds depth of hierarchy, parsed by JS|||[#13](https://github.com/edrlab/thorium-reader-epub-tests/issues/13)|true|
|<span id="66">66</span>|must|<a href="https://w3c.github.io/epub-tests/#ocf-url_parse-path-absolute">ocf-url_parse-path-absolute</a>| fails,||Root-relative URL, parsed by JS |||[#12](https://github.com/edrlab/thorium-reader-epub-tests/issues/12)|true|
|<span id="67">67</span>|must|<a href="https://w3c.github.io/epub-tests/#ocf-url_relative">ocf-url_relative</a>| pass,||Content in relative subdirector||||
|<span id="68">68</span>|should|<a href="https://w3c.github.io/epub-tests/#page-layout-both">page-layout-both</a>| null,|lay-page-layout-both||reflow but text ends out of box (part of the text is not displayed) |||false|
|<span id="69">69</span>|must|<a href="https://w3c.github.io/epub-tests/#page-layout-both-spread">page-layout-both-spread</a>| fails,|lay-page-layout-both-spread|pread|on the right when passing from page 1 to 2 and on the left when reading from page 3 to page 2||[#16](https://github.com/edrlab/thorium-reader-epub-tests/issues/16)|false|
|<span id="70">70</span>|must|<a href="https://w3c.github.io/epub-tests/#pkg-collections-unknown">pkg-collections-unknown</a>| pass,||16 with unknown role |||||
|<span id="71">71</span>|must|<a href="https://w3c.github.io/epub-tests/#pkg-creator-order">pkg-creator-order</a>| pass,||Creators listed in order||||true|
|<span id="72">72</span>|must|<a href="https://w3c.github.io/epub-tests/#pkg-dir-auto_root-rtl">pkg-dir-auto_root-rtl</a>| pass,||CSS: مغامرة جديدة! |pass in the catalog but strangely displayed in the windows heading (!مغامرة جديدة) ||||
|<span id="73">73</span>|must|<a href="https://w3c.github.io/epub-tests/#pkg-dir-auto_root-unset">pkg-dir-auto_root-unset</a>| pass,||CSS: הרפתקה חדשה| pass in the catalog but strangely displayed in the windows heading (!הרפתקה חדשה)|4 test with the same title |recheck||
|<span id="74">74</span>|must|<a href="https://w3c.github.io/epub-tests/#pkg-dir_but_not_content">pkg-dir_but_not_content</a>| pass,||CSS: הרפתקה חדשה||test with same title|true|
|<span id="75">75</span>|must|<a href="https://w3c.github.io/epub-tests/#pkg-dir_creator-rtl">pkg-dir_creator-rtl</a>| fails,||'dir=rtl' on the creator|displays right to left||[#17](https://github.com/edrlab/thorium-reader-epub-tests/issues/17)|
<span id="76">76</span>|must|<a href="https://w3c.github.io/epub-tests/#pkg-dir_rtl-root-ltr">pkg-dir_rtl-root-ltr</a>| fails,||CSS: הרפתקה חדשה||test with same title|Fixed [#18](https://github.com/edrlab/thorium-reader-epub-tests/issues/18)|true|
|<span id="77">77</span>|must|<a href="https://w3c.github.io/epub-tests/#pkg-dir_rtl-root-unset">pkg-dir_rtl-root-unset</a>| fails,||CSS: הרפתקה חדשה|but correct in the window heading|test with same title|Fixed true[#19](https://github.com/edrlab/thorium-reader-epub-tests/issues/19)||
|<span id="78">78</span>|must|<a href="https://w3c.github.io/epub-tests/#pkg-dir_unset-root-rtl">pkg-dir_unset-root-rtl</a>| fails,||CSS: مغامرة جديدة||test with same title|[#20](https://github.com/edrlab/thorium-reader-epub-tests/issues/20)||
|<span id="79">79</span>|must|<a href="https://w3c.github.io/epub-tests/#pkg-dir_unset-root-unset">pkg-dir_unset-root-unset</a>| pass,||CSS: مغامرة جديدة|||recheck||
|<span id="80">80</span>|should|<a href="https://w3c.github.io/epub-tests/#pkg-flow-paginated">pkg-flow-paginated</a>| pass,|lay-pkg-flow-paginated|rendition:flow set to paginated|||test removed||
|<span id="81">81</span>|should|<a href="https://w3c.github.io/epub-tests/#pkg-flow-scrolled-continuous">pkg-flow-scrolled-continuous</a>| pass,|lay-pkg-flow-scrolled-continuous|rendition:flow set to scrolled-continuous|no way to set rendition to auto in thorium ||test removed||
|<span id="82">82</span>|should|<a href="https://w3c.github.io/epub-tests/#pkg-flow-scrolled-doc">pkg-flow-scrolled-doc</a>| pass,|lay-pkg-flow-scrolled-doc|rendition:flow set to scrolled-doc |with display:layout set to scrollable||test removed||
|<span id="83">83</span>|must|<a href="https://w3c.github.io/epub-tests/#pkg-lang_but_not_content">pkg-lang_but_not_content</a>| pass,||Le contenu n'est pas automatiquement français||||true|
|<span id="84">84</span>|must|<a href="https://w3c.github.io/epub-tests/#pkg-linked-records">pkg-linked-records</a>| pass,||Package metadata title! ||||true|
|<span id="85">85</span>|must|<a href="https://w3c.github.io/epub-tests/#pkg-manifest-unknown">pkg-manifest-unknown</a>| pass,||Manifest item with unknown properties|||||
|<span id="86">86</span>|must|<a href="https://w3c.github.io/epub-tests/#pkg-manifest-unlisted-resource">pkg-manifest-unlisted-resource</a>| pass,||Resource not listed in manifest |||||
|<span id="87">87</span>|must|<a href="https://w3c.github.io/epub-tests/#pkg-meta-unknown">pkg-meta-unknown</a>| pass,||Meta tag with unknown property ||||true|
|<span id="88">88</span>|must|<a href="https://w3c.github.io/epub-tests/#pkg-meta-whitespace">pkg-meta-whitespace</a>| pass,||whitespace removed from package metadata||||true|
|<span id="89">89</span>|must|<a href="https://w3c.github.io/epub-tests/#pkg-spine-duplicate-item-hyperlink">pkg-spine-duplicate-item-hyperlink</a>| pass,||Hyperlink to duplicate items in spine|||||
|<span id="90">90</span>|must|<a href="https://w3c.github.io/epub-tests/#pkg-spine-duplicate-item-rendering">pkg-spine-duplicate-item-rendering</a>| fails,||Duplicate items in spine render |only one page is dispalyed||[#21](https://github.com/edrlab/thorium-reader-epub-tests/issues/21)||
|<span id="91">91</span>|must|<a href="https://w3c.github.io/epub-tests/#pkg-spine-duplicate-item-ui">pkg-spine-duplicate-item-ui</a>| fails,||UI recognizes duplicate items in spine|It looks like 4 pages are recognized but i can reach only the first one||[#22](https://github.com/edrlab/thorium-reader-epub-tests/issues/22)||
|<span id="92">92</span>|must|<a href="https://w3c.github.io/epub-tests/#pkg-spine-nonlinear-activation">pkg-spine-nonlinear-activation</a>| pass,||Non-linear spine item is reachable|||||
|<span id="93">93</span>|must|<a href="https://w3c.github.io/epub-tests/#pkg-spine-order">pkg-spine-order</a>| pass,||Spine items in order|||||
|<span id="94">94</span>|must|<a href="https://w3c.github.io/epub-tests/#pkg-spine-order-svg">pkg-spine-order-svg</a>| pass,||SVG spine items in order|||||
|<span id="95">95</span>|must|<a href="https://w3c.github.io/epub-tests/#pkg-spine-progression-default">pkg-spine-progression-default</a>| pass,|| RTL publication's spine has implicit 'page-progression-direction="default"'|||||
|<span id="96">96</span>|must|<a href="https://w3c.github.io/epub-tests/#pkg-spine-progression-pre-paginated">pkg-spine-progression-pre-paginated</a>| pass,||Pre-paginated publication's spine sets 'page-progression-direction="ltr"'||||true|
|<span id="97">97</span>|must|<a href="https://w3c.github.io/epub-tests/#pkg-spine-progression_ltr">pkg-spine-progression_ltr</a>| pass,||Spine sets 'page-progression-direction="ltr</blob>|||||
|<span id="98">98</span>|must|<a href="https://w3c.github.io/epub-tests/#pkg-spine-progression_rtl">pkg-spine-progression_rtl</a>| pass,||Spine sets 'page-progression-direction="rtl</blob>|||||
|<span id="99">99</span>|must|<a href="https://w3c.github.io/epub-tests/#pkg-spine-unknown">pkg-spine-unknown</a>| pass,||Spine item with unknown properties|||||
|<span id="100">100</span>|must|<a href="https://w3c.github.io/epub-tests/#pkg-title-order">pkg-title-order</a>| pass,||First title in package ||||true|
|<span id="101">101</span>|must|<a href="https://w3c.github.io/epub-tests/#pkg-unique-id">pkg-unique-id</a>| pass,||Unique identifier not unique|||revérifier||
|<span id="102">102</span>|must|<a href="https://w3c.github.io/epub-tests/#pkg-version-backward">pkg-version-backward</a>| pass,||Package version less than 3.0|||||
|<span id="103">103</span>|must|<a href="https://w3c.github.io/epub-tests/#pub-cmt-gif">pub-cmt-gif</a>| pass,||GIF image|||||
|<span id="104">104</span>|must|<a href="https://w3c.github.io/epub-tests/#pub-cmt-jpeg">pub-cmt-jpeg</a>| pass,||JPEG image |||||
|<span id="105">105</span>|must|<a href="https://w3c.github.io/epub-tests/#pub-cmt-mp3">pub-cmt-mp3</a>| pass,||MP3 audio|||||
|<span id="106">106</span>|must|<a href="https://w3c.github.io/epub-tests/#pub-cmt-mp4">pub-cmt-mp4</a>| pass,||MP4 audio|||||
|<span id="107">107</span>|must|<a href="https://w3c.github.io/epub-tests/#pub-cmt-opus">pub-cmt-opus</a>| pass,||OPUS audio|||||
|<span id="108">108</span>|must|<a href="https://w3c.github.io/epub-tests/#pub-cmt-png">pub-cmt-png</a>| pass,||PNG image |||||
|<span id="109">109</span>|must|<a href="https://w3c.github.io/epub-tests/#pub-cmt-svg">pub-cmt-svg</a>| pass,||SVG image|||||
|<span id="110">110</span>|must|<a href="https://w3c.github.io/epub-tests/#pub-cmt-webp">pub-cmt-webp</a>| pass,||WEBP image|||||
|<span id="111">111</span>|must|<a href="https://w3c.github.io/epub-tests/#pub-data-urls_browsing-context">pub-data-urls_browsing-context</a>| pass,||Data URL does not open in top-level context||||true|
|<span id="112">112</span>|must|<a href="https://w3c.github.io/epub-tests/#pub-data-urls_top-level-content">pub-data-urls_top-level-content</a>| pass,||Data URL not opening as a top-level content document|but displayed over text||||
|<span id="113">113</span>|should|<a href="https://w3c.github.io/epub-tests/#pub-external-links">pub-external-links</a>| pass,||External Links open a new browser instance|||||
|<span id="114">114</span>|must|<a href="https://w3c.github.io/epub-tests/#pub-foreign_bad-fallback">pub-foreign_bad-fallback</a>| null,||Manifest fallback with unsupported fallback |opens system file to save .dmg |what is the condition for passing the test ?|||
|<span id="115">115</span>|must|<a href="https://w3c.github.io/epub-tests/#pub-foreign_image">pub-foreign_image</a>| fails,||Manifest fallback with image |||[#23](https://github.com/edrlab/thorium-reader-epub-tests/issues/23)|false|
|<span id="116">116</span>|must|<a href="https://w3c.github.io/epub-tests/#pub-foreign_json-spine">pub-foreign_json-spine</a>| N/A,||Manifest fallback With JSON content document in spine|Json is displayed (raw) on Windows, nothing on Debian||Should we support raw JSON display?[#](https://github.com/edrlab/thorium-reader-epub-tests/issues/)|
|<span id="117">117</span>|must|<a href="https://w3c.github.io/epub-tests/#pub-foreign_xml-spine">pub-foreign_xml-spine</a>| N/A,||Manifest fallback with XML in spin|xml structure is displayed||Should we support raw XML display?[#](https://github.com/edrlab/thorium-reader-epub-tests/issues/)||
|<span id="118">118</span>|must|<a href="https://w3c.github.io/epub-tests/#pub-foreign_xml-suffix-spine">pub-foreign_xml-suffix-spine</a>| null,||Manifest fallback with XML with suffix in spine |opens system file to save .xml ||We open dialog and prompt for xml download while we should display xhtml fallback|#TODO open issue [#27](https://github.com/edrlab/thorium-reader-epub-tests/issues/27)|false|
|<span id="119">119</span>|must|<a href="https://w3c.github.io/epub-tests/#pub-xml-external-id">pub-xml-external-id</a>| pass,||XML external entity not resolved||||true|
|<span id="120">120</span>|must|<a href="https://w3c.github.io/epub-tests/#pub-xml-names">pub-xml-names</a>| pass,||Invalid XML element name||||true|
|<span id="121">121</span>|must|<a href="https://w3c.github.io/epub-tests/#pub-xml-non-validating_invalid">pub-xml-non-validating_invalid</a>| fails,||Invalid XML navigation document||SPINE does not looks false. Test may be broken.|[#24](https://github.com/edrlab/thorium-reader-epub-tests/issues/24)|false|
|<span id="122">122</span>|must|<a href="https://w3c.github.io/epub-tests/#pub-xml-non-validating_unclosed">pub-xml-non-validating_unclosed</a>| pass,|| Unclosed XML tag ||||true|
|<span id="123">123</span>|must|<a href="https://w3c.github.io/epub-tests/#scr-readingsystem-features">scr-readingsystem-features</a>| pass,||epubReadingSystem object features|||||
|<span id="124">124</span>|must|<a href="https://w3c.github.io/epub-tests/#scr-readingsystem-support">scr-readingsystem-support</a>| pass,||epubReadingSystem object support|||||
|<span id="125">125</span>|must|<a href="https://w3c.github.io/epub-tests/#scr-readingsystem-support_iframe">scr-readingsystem-support_iframe</a>| pass,|| epubReadingSystem object support in an iframe|||||
|<span id="126">126</span>|must|<a href="https://w3c.github.io/epub-tests/#scr-readingsystem-support_iframe_svg">scr-readingsystem-support_iframe_svg</a>| ,||epubReadingSystem object support in an SVG within an iframe|||[#25](https://github.com/edrlab/thorium-reader-epub-tests/issues/25)||
|<span id="127">127</span>|must|<a href="https://w3c.github.io/epub-tests/#scr-readingsystem-support_svg">scr-readingsystem-support_svg</a>| pass,||epubReadingSystem object support in a spine-level SVG |||||
|<span id="128">128</span>|must|<a href="https://w3c.github.io/epub-tests/#scr-support">scr-support</a>| pass,||Scripting support|||||
|<span id="129">129</span>|should|<a href="https://w3c.github.io/epub-tests/#scr-support_iframe">scr-support_iframe</a>| pass,||Support for container-constrained scripts|||||
|<span id="130">130</span>|must|<a href="https://w3c.github.io/epub-tests/#scr-support_origin">scr-support_origin</a>| pass,||Unique origin shared by spine-level scripted contents|||||
|<span id="131">131</span>|should|<a href="https://w3c.github.io/epub-tests/#scr-support_scrolled-continuous">scr-support_scrolled-continuous</a>| pass,||rendition:flow set to scrolled-continuous when scripting is supported|||||
|<span id="132">132</span>|should|<a href="https://w3c.github.io/epub-tests/#scr-support_scrolled-doc">scr-support_scrolled-doc</a>| pass,||rendition:flow set to scrolled-doc when scripting is supported|||||
|<span id="133">133</span>|should|<a href="https://w3c.github.io/epub-tests/#scr-support_svg">scr-support_svg</a>| pass|Scripting support in spine-level SVG||||
|<span id="134">134</span>|should|||<a href="https://w3c.github.io/epub-tests/#mol-support_xhtml-load-next">mol-support_xhtml-load-next</a>|||true|
|<span id="135">135</span>|should|||<a href="https://w3c.github.io/epub-tests/#ocf-font_obfuscation">ocf-font_obfuscation</a>|||true|
|<span id="136">136</span>|must|||<a href="https://w3c.github.io/epub-tests/#ocf-zip-mult">ocf-zip-mult</a>|treat any OCF ZIP container that specifies the [zip] file is split across multiple storage media as in error. from https://w3c.github.io/epub-specs/epub33/rs/#confreq-zip-mult|#TODO open issue|false|
|<span id="137">137</span>|should|||<a href="https://w3c.github.io/epub-tests/#ocf-font_obfuscation-bis">ocf-font_obfuscation-bis</a>|||true|
|<span id="138">138</span>|must|||<a href="https://w3c.github.io/epub-tests/#mol-timing-synchronization_svg">mol-timing-synchronization_svg</a>|||true|
|<span id="139">139</span>|must|||<a href="https://w3c.github.io/epub-tests/#fxl-page-spread-break">fxl-page-spread-break</a>||#TODO open issue|false|
|<span id="140">140</span>|must|||<a href="https://w3c.github.io/epub-tests/#lay-fxl-svg-icb_multi">lay-fxl-svg-icb_multi</a>|||true|
|<span id="141">141</span>|must|||<a href="https://w3c.github.io/epub-tests/#mol-ignore">mol-ignore</a>|test apply only for RS not supporting MO||n/a|
|<span id="142">142</span>|must|||<a href="https://w3c.github.io/epub-tests/#mol-support_xhtml-load">mol-support_xhtml-load</a>|||true|
|<span id="143">143</span>|must|||<a href="https://w3c.github.io/epub-tests/#mol-support_xhtml">mol-support_xhtml</a>|||true|
|<span id="144">144</span>|must|||<a href="https://w3c.github.io/epub-tests/#fxl-spine-overrides_behave-as-global-bis">fxl-spine-overrides_behave-as-global-bis</a>|||true|
|<span id="145">145</span>|must|||<a href="https://w3c.github.io/epub-tests/#lay-fxl-layout-default">lay-fxl-layout-default</a>|||true|
|<span id="146">146</span>|must|||<a href="https://w3c.github.io/epub-tests/#ocf-zip-comp">ocf-zip-comp</a>|||false|
|<span id="147">147</span>|must|||<a href="https://w3c.github.io/epub-tests/#scr-support-fallback">scr-support-fallback</a>|||n/a|
|<span id="148">148</span>||||<a href="https://w3c.github.io/epub-tests/#scr-not-support_ccscript-modify-size">scr-not-support_ccscript-modify-size</a>|must||false|
|<span id="149">149</span>|must|||<a href="https://w3c.github.io/epub-tests/#scr-not-support_ccscript-modify-host">scr-not-support_ccscript-modify-host</a>|must||false|
|<span id="150">150</span>|should|||<a href="https://w3c.github.io/epub-tests/#pub-external-links_consent">pub-external-links_consent</a>|The *open with* box is trigged by the OS and submitted to user preferences||n/a|
|<span id="151">151</span>|must|||<a href="https://w3c.github.io/epub-tests/#pss-support_ignore-title">pss-support_ignore-title</a>|||false|
|<span id="152">152</span>|may|||<a href="https://w3c.github.io/epub-tests/#pss-support">pss-support</a>|||true|
|<span id="154">154</span>|must|||<a href="https://w3c.github.io/epub-tests/#pkg-linked-records_link-priority">pkg-linked-records_link-priority</a>|||false|
|<span id="155">155</span>|must|||<a href="https://w3c.github.io/epub-tests/#pkg-linked-records_link-order">pkg-linked-records_link-order</a>|||false|
|<span id="156">156</span>|must|||<a href="https://w3c.github.io/epub-tests/#lay-fxl-xhtml-icb_device_sizes">lay-fxl-xhtml-icb_device_sizes</a>|nothing is displayed|#TODO open issue|false|
|<span id="157">157</span>|should|||<a href="https://w3c.github.io/epub-tests/#lay-fxl-xhtml-icb_invalid_meta">lay-fxl-xhtml-icb_invalid_meta</a>|||true|
|<span id="158">158</span>|must|||<a href="https://w3c.github.io/epub-tests/#lay-fxl-xhtml-icb_multi">lay-fxl-xhtml-icb_multi</a>|||true|
|<span id="159">159</span>|must|||<a href="https://w3c.github.io/epub-tests/#lay-fxl-xhtml-icb_multi_declarations">lay-fxl-xhtml-icb_multi_declarations</a>|||true|
|<span id="160">160</span>|must|||<a href="https://w3c.github.io/epub-tests/#lay-fxl-xhtml-icb_repeated-in-meta">lay-fxl-xhtml-icb_repeated-in-meta</a>|||true|
|<span id="161">161</span>|must|||<a href="https://w3c.github.io/epub-tests/#lay-fxl-xhtml-icb_units">lay-fxl-xhtml-icb_units</a>|||true|
|<span id="162">162</span>|must|||<a href="https://w3c.github.io/epub-tests/#lay-reflow-align-x-center">lay-reflow-align-x-center</a>|This is affected by user choice in the settings panel||true|
|<span id="163">163</span>|must|||<a href="https://w3c.github.io/epub-tests/#lay-rendition-flow-pre-pag">lay-rendition-flow-pre-pag</a>|This disable user choice in settings panel||true|
|<span id="164">164</span>|must|||<a href="https://w3c.github.io/epub-tests/#lay-viewport-meta-prop">lay-viewport-meta-prop</a>|User text size setting (i.e. zoom) is disabled||false|