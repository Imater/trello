'use strict'

describe 'Controller: StageCtrl', ->

  # load the controller's module
  beforeEach module('trelloApp')
  StageCtrl = undefined
  scope = undefined

  # Initialize the controller and a mock scope
  beforeEach inject(($controller, $rootScope) ->
    scope = $rootScope.$new()
    StageCtrl = $controller('StageCtrl',
      $scope: scope
    )
  )
  it 'should ...', ->
    expect(1).toEqual 1
