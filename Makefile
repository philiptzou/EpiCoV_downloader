build:
	@docker build . -t hivdb/epicov-downloader:latest

debug:
	@docker run --rm -it --entrypoint /bin/bash hivdb/epicov-downloader:latest
