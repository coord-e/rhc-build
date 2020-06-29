# `rhc-build`

Development environment for [Ruby Hack Challenge](https://github.com/ko1/rubyhackchallenge) using [koichisasada/rhc](http://hub.docker.com/r/koichisasada/rhc).

## Requirements

- [`direnv`](https://github.com/direnv/direnv)
- `docker`
- `git` 2.13.0 or later
- GNU coreutils 8.23 or later
- `bash`

## Notes

- use `rhc_exec` prefix to run build commands in the build environment
- use `$(rhc_pwd)` instead of `$PWD` to obtain the working directory in the build environment

## Example

This follows an instruction on [https://github.com/ko1/rubyhackchallenge/blob/master/JA/2_mri_structure.md].

```shell
$ git clone https://github.com/coord-e/ruby-hack.git
$ cd ruby-hack
$ git clone https://github.com/ruby/ruby.git
$ rhc_exec autoconf
$ cd ../build
$ rhc_exec ../ruby/configure --prefix=$(rhc_pwd)/../install --enable-shared
$ rhc_exec make -j
$ rhc_exec make install
$ rhc_exec ../install/bin/ruby -v
```
