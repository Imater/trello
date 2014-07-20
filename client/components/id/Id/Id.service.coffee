'use strict'

angular.module('trelloApp').factory 'Id', ->
  class Id
    instance = null
    class PrivateClass
      constructor: ()->
        @id = 1
    @get: ()->
      instance ?= new PrivateClass
      instance.id++
