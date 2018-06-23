# Termdiff - Debian

Build/Install [Termdiff](https://github.com/karagenit/termdiff) as a Debian Package.

## Requirements

- debhelper (>= 10)
- build-essential

## Usage

Clone this repo with submodules, build the package, and install the generated `.deb` file.

```
$ git clone --recurse-submodules https://github.com/karagenit/termdiff.deb
$ cd termdiff.deb
$ ./build.sh
$ sudo dpkg -i termdiff_2.0.3-1_all.deb
```
