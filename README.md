# InstantClient Binaries

## Overview
This is a repository with the binaries for InstantClient.
These binaries are needed for projects which need to build native clients for Voyager or other similar databases.

## Branches
In addition to the main branch, which contains binaries for both arm64 and amd64 linux, there are two branches with just the necessary binaries for one platform.

The arm64 branch contains binaries for arm64 linux, and the x64 branch contains the binaries for amd64 linux.

To reduce the amount of data downloaded when cloning the repo, clone the specific branch with depth 1 so that only the latest binaries are downloaded for the architecture you need:

```
git clone -b arm64 --single-branch --depth 1 https://github.com/yalelibrary/instantclient-binaries
```
or
```
git clone -b x64 --single-branch --depth 1 https://github.com/yalelibrary/instantclient-binaries
```

## Installing the binaries
The binaries can be installed by cloning the correct branch based on the architecture, unzipping the files, and creating a sym-link to the directory.
The sym-link makes it easier to point to the directory using LD_LIBRARY_PATH so that the ori-gem can find them and build.

An example script can be found here: `scripts/install-instantclient.sh`