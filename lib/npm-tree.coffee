_ = require('underscore')
npm = require('npm')
async = require('async')

module.exports = (moduleName, cb) ->
  throw "usage: `npm-tree <module>`" unless moduleName
  npm.load ->
    deps(moduleName, cb)

deps = (name, cb) ->
  npm.commands.view [name], true, (err, retval) ->
    return cb(err) if err?
    dependencies = _(retval[_(retval).keys()[0]].dependencies).keys()
    async.parallel _(dependencies).map(subdeps), (err, results) ->
      cb(err, _(results).reduce( (memo, obj) ->
        _(memo).extend(obj)
      , {}))

subdeps = (dependency) ->
  (callback) ->
    deps dependency, (err, deps) ->
      obj = {}
      obj[dependency] = deps
      callback(err, obj)


## Stringy outputty stuff
module.exports.stringify = (results) ->
  lines(results).join('\n')

lines = (result, indent = 1) ->
  return [toS(result, indent)] if _(result).isString()
  _(result).chain().map (v, k) ->
    [toS(k, indent)].concat(lines(v, indent + 1))
  .flatten().value()

toS = (name, indent) ->
  Array(indent).join('  ') + name
