<h1 align="center"> 📃️ QPDF Docker </h1>

<div align="center">
    <a href="https://hub.docker.com/r/t0shy/qpdf-docker/tags"><img src="https://img.shields.io/github/v/release/toshy/qpdf-docker?label=Release&sort=semver" alt="Current version" /></a>
    <a href="https://hub.docker.com/r/t0shy/qpdf-docker"><img src="https://img.shields.io/badge/Docker%20Hub-t0shy%2Fqpdf--docker-blue" alt="Docker Hub" /></a>
    <br /><br />
    A dockerized version of <a href="https://github.com/qpdf/qpdf">QPDF</a>.
</div>

## Info

[QPDF](https://github.com/qpdf/qpdf) is a command-line tool and C++ library that performs content-preserving
transformations on PDF files

## 🧰 Requirements

* [Docker](https://docs.doctker.com/get-docker/)

## 🐋 Usage

```shell
docker run -it --rm -v $(pwd)/files:/pdf t0shy/qpdf-docker:latest --help
```

```text
Run "qpdf --help=topic" for help on a topic.
Run "qpdf --help=--option" for help on an option.
Run "qpdf --help=all" to see all available help.

Topics:
  add-attachment: attach (embed) files
  advanced-control: tweak qpdf's behavior
  attachments: work with embedded files
  completion: shell completion
  copy-attachments: copy attachments from another file
  encryption: create encrypted files
  exit-status: meanings of qpdf's exit codes
  general: general options
  help: information about qpdf
  inspection: inspect PDF files
  json: JSON output for PDF information
  modification: change parts of the PDF
  overlay-underlay: overlay/underlay pages from other files
  page-ranges: page range syntax
  page-selection: select pages from one or more files
  pdf-dates: PDF date format
  testing: options for testing or debugging
  transformation: make structural PDF changes
  usage: basic invocation

For detailed help, visit the qpdf manual: https://qpdf.readthedocs.io
```

> Note: make sure to mount to the `/pdf` directory on the container.

## ❕ License

This repository comes with a [MIT license](./LICENSE).
