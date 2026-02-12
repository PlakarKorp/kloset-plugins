ROOT ?= .
INDEX ?= INDEX

.PHONY: index
index:
	@T=$$; \
	find "$(ROOT)" -mindepth 1 -maxdepth 1 -type d ! -name '.*' -print | sort | while IFS= read -r d; do \
		f="$$d/recipe.yaml"; \
		if [ -f "$$f" ]; then \
			v=$$(awk -F: 'tolower($$1)=="version" { $$1=""; sub(/^[[:space:]]+/, "", $$0); gsub(/^["'\''"]|["'\''"]$$/, "", $$0); print; exit }' "$$f"); \
			printf "%s|%s\n" "$$(basename "$$d")" "$$v" >> "$(INDEX).$(T)"; \
		fi; \
	done; \
	mv $(INDEX).$(T) $(INDEX)
