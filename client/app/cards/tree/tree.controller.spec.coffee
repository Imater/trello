'use strict'

describe 'Controller: TreeCtrl', ->

  # load the controller's module
  beforeEach module('trelloApp')
  TreeCtrl = undefined
  scope = undefined

  # Initialize the controller and a mock scope
  beforeEach inject(($controller, $rootScope) ->
    scope = $rootScope.$new()
    TreeCtrl = $controller('TreeCtrl',
      $scope: scope
    )
  )
  it 'should ...', ->
    expect(1).toEqual 1
