# npm-tree

Visualize the dependency tree of a given npm module.

## Install:

```
$ sudo npm i -g npm-tree
```

## Usage

```
$ npm-tree express
```

## Output

```
accepts
  mime-types
    mime-db
  negotiator
buffer-crc32
debug
  ms
depd
escape-html
finalhandler
  debug
    ms
  escape-html
media-typer
methods
parseurl
path-to-regexp
proxy-addr
  ipaddr.js
qs
range-parser
send
  debug
    ms
  depd
  destroy
  escape-html
  fresh
  mime
  ms
  on-finished
    ee-first
  range-parser
serve-static
  escape-html
  parseurl
  send
    debug
      ms
    depd
    destroy
    escape-html
    fresh
    mime
    ms
    on-finished
      ee-first
    range-parser
  utils-merge
type-is
  media-typer
  mime-types
    mime-db
vary
cookie
fresh
cookie-signature
merge-descriptors
utils-merge
```
