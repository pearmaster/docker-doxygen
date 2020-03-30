# docker-doxygen

[![MIT licensed](https://img.shields.io/badge/license-MIT-blue.svg)](./LICENSE)

Dockerfile to build a container image enclosing [Doxygen](http://www.doxygen.org/).

## Usage

``` shell
cd /path/to/source
mkdir output
docker run --rm -it -v $(pwd):/data -v $(pwd)/outut:/output pearmaster/docker-doxygen doxygen /data/my.Doxyfile
```
