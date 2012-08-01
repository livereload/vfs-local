debug = require('debug')('vfs:local')
fs = require 'fs'
Path = require 'path'

{ EventEmitter } = require 'events'

class Monitor extends EventEmitter

  constructor: (@path) ->

  close: ->


class LocalVFS

  writeFile: (path, data, callback) ->
    fs.writeFile path, data, callback

  readFile: (path, encoding, callback) ->
    fs.readFile path, encoding, callback

  watch: (path) ->
    new Monitor(path)

module.exports = new LocalVFS()  # the one and only copy
module.exports.LocalVFS = LocalVFS
