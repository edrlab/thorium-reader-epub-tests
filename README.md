# Thorium Reader EPUB tests

This is a place to store test files and comments for testing Thorium functionalities. 

It has : 

* EPUB Feeds for test purpose: OPDS or other feeds that we can use to get test files collected in various places
* [Rare EPUB OPDS](https://rawcdn.githack.com/edrlab/thorium-reader-epub-tests/main/EPUB_Feeds_for_testing_purpose/opds-rare-epub-suit.json)
* Rare EPUB test suit: our own testing files with rare and uncommon use case that are not being tested elsewhere
* EPUB3.3 compliance: [W3C EPUB3.3 Tests](https://w3c.github.io/epub-tests/). Reports are available at [EPUB 3.3 Test Results](https://w3c.github.io/epub-tests/results)
* Test Workflows: scripts and automation used for testing or build testing files and feeds

## workflows

zipping EPUB without epubcheck can be usefull. 

* Debian: `zip -rX "../$(basename "$(realpath .)").epub" mimetype $(ls|xargs echo|sed 's/mimetype//g')`
* MacOS : `zip -rX "../myprecious.epub" mimetype $(ls|xargs echo|sed 's/mimetype//g') -x *.DS_Store`