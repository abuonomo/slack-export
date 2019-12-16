

build:
	docker build -t slack_exporter:latest .

run:
	docker run -v $$(pwd)/config.sh:/home/config.sh slack_exporter:latest

debug:
	docker run --rm -it \
			-v $$(pwd)/config.sh:/home/config.sh slack_exporter:latest bash
