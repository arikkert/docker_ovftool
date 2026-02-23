IMAGE = ovftool

build:
	docker build --tag $(IMAGE) .

test01:
	docker run -it --rm $(IMAGE) --version

test02:
	docker run -it --rm $(IMAGE) --help

debug:
	docker run -it --rm --entrypoint /bin/sh ovftool

scan:
	trivy image $(IMAGE)
