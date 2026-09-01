DISTS ?= trixie bookworm bullseye noble jammy

VERSION ?= 6.0.0

all: clean
	for i in $(DISTS) ; do \
		./create_dockerfile.sh $$i $(VERSION); \
	done
clean:
	rm -rf $(DISTS)
