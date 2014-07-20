'use strict'

describe 'Service: Id', ->

  # load the service's module
  beforeEach module('trelloApp')

  # instantiate service
  Id = undefined
  beforeEach inject((_Id_) ->
    Id = _Id_
  )
  it 'should do something', ->
    expect(!!Id).toBe true

  it 'increment', ->
    expect(Id.get()).toBe 1

  it 'increment again', ->
    Id.get()
    Id.get()
    Id.get()
    Id.get()
    expect(Id.get()).toBe 5