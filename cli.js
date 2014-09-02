#!/usr/bin/env node

require('coffee-script/register');
_ = require('underscore');
npmTree = require('./lib/npm-tree');

npmTree(_(process.argv).chain().rest().last().value(), function(err, results){
  console.log(npmTree.stringify(results))
});
