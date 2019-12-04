# asciidoctor-pdf
asciidoctor-pdf on Docker (Stable)

This project is used for internal documentation at Obscurity Labs. We required a Docker Image to perform our ASCII Doctor compilations. This image provides a clean and easy way for you to compile your PDF with out managing gems and other one off issues with trying to get asciidoctor-pdf work on OSX etc.

## Using GitHub Docker Repo
Pull image from the command line:
```console
foo@bar:~$ docker pull docker.pkg.github.com/obscuritylabs/asciidoctor-pdf/asciidoctor-pdf:latest
```
Use as base image in DockerFile:
```Dockerfile
FROM docker.pkg.github.com/obscuritylabs/asciidoctor-pdf/asciidoctor-pdf:latest
```
Use to compile a PDF from command line:
```console
foo@bar:~$ docker run -it -v $(pwd):/document/ docker.pkg.github.com/obscuritylabs/asciidoctor-pdf/asciidoctor-pdf /document/doc.adoc --destination-dir .
```

## Using DockerHub Repo
Pull image from the command line:
```console
foo@bar:~$ docker pull obscuritylabs/asciidoctor-pdf:latest
```
Use as base image in DockerFile:
```Dockerfile
FROM obscuritylabs/asciidoctor-pdf:latest
```
Use to compile a PDF from command line:
```console
foo@bar:~$ docker run -it -v $(pwd):/document/ docker.pkg.github.com/obscuritylabs/asciidoctor-pdf/asciidoctor-pdf /document/doc.adoc --destination-dir .
```
