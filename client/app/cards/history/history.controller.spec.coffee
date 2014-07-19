'use strict'

describe 'Controller: HistoryCtrl', ->

  # load the controller's module
  beforeEach module('trelloApp')
  HistoryCtrl = undefined
  scope = undefined

  # Initialize the controller and a mock scope
  beforeEach inject(($controller, $rootScope) ->
    scope = $rootScope.$new()
    HistoryCtrl = $controller('HistoryCtrl',
      $scope: scope
    )
  )
  it 'should ...', ->
    expect(1).toEqual 1
