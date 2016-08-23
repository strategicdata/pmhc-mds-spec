# Usage

## Build the documentation

```
./scripts/make.sh
```
This will:

* create restructured text from the metadata files
* move generated content into the correct locations
* run sphinx to generate the html output in doc/build/html

## Publish to http://docs.pmhc-mds.com

```
./scripts/publish.sh
```

This will:

* build an nginx docker image containing the documentation
* push that container to our public docker repo, which will automatically
  prompt Docker Cloud to update the running containers

## Docker

If you need to build and push a new image containing the tools to convert
metadata to restructured text run the following script.

```
./scripts/docker-build-metadata2rst.sh
```
