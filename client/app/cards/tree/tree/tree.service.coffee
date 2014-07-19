'use strict'

angular.module('trelloApp').service 'treeSrv', ->
  # AngularJS will instantiate a singleton by calling 'new' on this function
  treeSrv =
    get: ()->
      [
        {id:1, title: 'Neteagles'}
        {id:2, title: 'Web'}
        {id:3, title: 'hello3'}
      ]
  treeSrv