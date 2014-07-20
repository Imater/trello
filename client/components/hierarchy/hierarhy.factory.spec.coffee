'use strict'

describe 'Service: Hierarhy', ->
  # load the service's module
  beforeEach module('trelloApp')

  # instantiate service
  Hierarhy = undefined
  beforeEach inject((_Hierarhy_) ->
    Hierarhy = _Hierarhy_
  )
  it 'should do something', ->
    expect(!!Hierarhy).toBe true
