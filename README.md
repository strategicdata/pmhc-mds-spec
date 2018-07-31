# Status

[![Build Status](https://jenkins.fz.sdlocal.net/buildStatus/icon?job=PMHC%20Docs)](https://jenkins.fz.sdlocal.net/job/PMHC%20Docs/)

# Usage

## Build the documentation

```
./scripts/make.sh
```
This will:

* create restructured text from the metadata files
* move generated content into the correct locations
* create zip of spec metadata (csv + json files) inside data-specification
* run sphinx to generate the html output in doc/build/html

### Update the specification version

If the specification version has been changed:

```
git tag -a v1.0.xx
```

This will:

* tag the git repository with the new specification version. This is used to
  generate the version.txt file in the specification download zip.

## Publish to https://docs.pmhc-mds.com

Run the following script to publish the locally built content (see above).

```
./scripts/publish.sh
```

## Docker

If you need to build and push a new image containing the tools to convert
metadata to restructured text see the csvw-metadata2rst repo.

https://gh.sdintra.net/PMHC/csvw-metadata2rst
