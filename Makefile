SHELL = /bin/bash

BUNDLE = xbian-steamlink-launcher
VERSION = $(shell git describe --tags)
PLUGIN_RESOURCES = plugin.steamlink

.PHONY: dist
dist: dist-clean
	@mkdir -p dist
	@7z a -tzip dist/$(BUNDLE)-$(VERSION).zip $(PLUGIN_RESOURCES)

.PHONY: clean
clean:
	@rm -f dist/*.zip

.PHONY: dist-clean
dist-clean:
	@rm -rf dist/
