'use strict'

angular.module('trelloApp').factory 'Task', (Hierarhy) ->
  class Task extends Hierarhy
    constructor: (params)->
      super
      @title = params.title
