# Makefile for Sphinx documentation
#

# You can set these variables from the command line.
SPHINXOPTS       =
SPHINXBUILD      = LC_ALL=C sphinx-build
SPHINX_AUTOBUILD = LC_ALL=C sphinx-autobuild
BUILDDIR         = _build
LANG             = fr

# Internal variables.
ALLSPHINXOPTS   = -d $(BUILDDIR)/doctrees $(SPHINXOPTS) tmp/$(LANG)

.PHONY: help clean html singlehtml linkcheck

# Taken from zf-framework documentation
pre-build:
	@rm -rf tmp/$(LANG)
	@mkdir -p tmp/$(LANG)
	@cp -R languages/$(LANG)/* tmp/$(LANG)/
ifneq ($(LANG),en)
	@for f in $$(cd languages/$(LANG) && find . -type f \( ! -iname ".*" \) | sort); do \
		if [ -f languages/$(LANG)/$$f ]; then \
			if [ $$(stat -c %s languages/$(LANG)/$$f) = $$(stat -c %s languages/$(LANG)/$$f) ]; then \
				echo "The file '$$f' seems to be exactly the same as English one, perhaps it could be deleted"; \
			fi; \
			cp languages/$(LANG)/$$f tmp/$(LANG)/$$f; \
		else \
			echo "The file '$$f' is not anymore in English directory, check if it's renamed or deleted"; \
		fi; \
	done
endif
	@cp languages/$(LANG)/conf.py tmp/$(LANG)/conf.py
	@sed -i.bak 's/#language = None/language = "$(LANG)"/' tmp/$(LANG)/conf.py
	@rm -f tmp/$(LANG)/conf.py.bak


help:
	@echo "Please use \`make <target>' where <target> is one of"
	@echo "  html       to make standalone HTML files"
	@echo "  singlehtml to make a single large HTML file"
	@echo "  linkcheck  to check all external links for integrity"

clean:
	-rm -rf tmp
	-rm -rf $(BUILDDIR)/*

html: pre-build
	$(SPHINXBUILD) -b html $(ALLSPHINXOPTS) $(BUILDDIR)/html/$(LANG)
	@echo
	@echo "Build finished. The HTML pages are in $(BUILDDIR)/html."

singlehtml: pre-build
	$(SPHINXBUILD) -b singlehtml $(ALLSPHINXOPTS) $(BUILDDIR)/singlehtml/$(LANG)
	@echo
	@echo "Build finished. The HTML page is in $(BUILDDIR)/singlehtml."

linkcheck: pre-build
	$(SPHINXBUILD) -b linkcheck $(ALLSPHINXOPTS) $(BUILDDIR)/linkcheck/$(LANG)
	@echo
	@echo "Link check complete; look for any errors in the above output " \
	      "or in $(BUILDDIR)/linkcheck/output.txt."
