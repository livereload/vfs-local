debug = require('debug')('vfs:local')
fs = require 'fs'
Path = require 'path'

{ EventEmitter } = require 'events'

class Monitor extends EventEmitter

  constructor: (@path) ->

  close: ->


class LocalVFS

  watch: (path) ->
    new Monitor(path)

module.exports = new LocalVFS()  # the one and only copy

