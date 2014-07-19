'use strict'

describe 'Service: Tree', ->

  # load the service's module
  beforeEach module('trelloApp')

  # instantiate service
  Tree = undefined
  beforeEach inject((_Tree_) ->
    Tree = _Tree_
  )
  it 'should do something', ->
    expect(!!Tree).toBe true
