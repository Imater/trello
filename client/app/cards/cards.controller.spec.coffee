'use strict'

describe 'Controller: CardsCtrl', ->

  # load the controller's module
  beforeEach module('trelloApp')
  CardsCtrl = undefined
  scope = undefined

  # Initialize the controller and a mock scope
  beforeEach inject(($controller, $rootScope) ->
    scope = $rootScope.$new()
    CardsCtrl = $controller('CardsCtrl',
      $scope: scope
    )
  )
  it 'should ...', ->
    expect(1).toEqual 1
