# npm-tree

Visualize the dependency tree of a given npm module.

## Install:

```
$ sudo npm i -g npm-tree
```

## CLI Usage

```
$ npm-tree express
```

### CLI Output

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

## API Usage

``` javascript
require('npm-tree')('express', function(err, result){
  console.log(JSON.stringify(result, null, '  '));
});
```

Which will output:

``` json
{
  "accepts": {
    "mime-types": {
      "mime-db": {}
    },
    "negotiator": {}
  },
  "buffer-crc32": {},
  "debug": {
    "ms": {}
  },
  "depd": {},
  "escape-html": {},
  "finalhandler": {
    "debug": {
      "ms": {}
    },
    "escape-html": {}
  },
  "media-typer": {},
  "methods": {},
  "parseurl": {},
  "path-to-regexp": {},
  "proxy-addr": {
    "ipaddr.js": {}
  },
  "qs": {},
  "range-parser": {},
  "send": {
    "debug": {
      "ms": {}
    },
    "depd": {},
    "destroy": {},
    "escape-html": {},
    "fresh": {},
    "mime": {},
    "ms": {},
    "on-finished": {
      "ee-first": {}
    },
    "range-parser": {}
  },
  "serve-static": {
    "escape-html": {},
    "parseurl": {},
    "send": {
      "debug": {
        "ms": {}
      },
      "depd": {},
      "destroy": {},
      "escape-html": {},
      "fresh": {},
      "mime": {},
      "ms": {},
      "on-finished": {
        "ee-first": {}
      },
      "range-parser": {}
    },
    "utils-merge": {}
  },
  "type-is": {
    "media-typer": {},
    "mime-types": {
      "mime-db": {}
    }
  },
  "vary": {},
  "cookie": {},
  "fresh": {},
  "cookie-signature": {},
  "merge-descriptors": {},
  "utils-merge": {}
}
```

### Programmatically getting console output

You can also simulate the console output by using the module function's exported `stringify` method:

``` javascript
npmTree = require('npm-tree');
npmTree('express', function(err, results){
  console.log(npmTree.stringify(results));
});
```
