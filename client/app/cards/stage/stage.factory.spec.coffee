'use strict'

describe 'Service: StageSrv', ->

  # load the service's module
  beforeEach module('trelloApp')

  # instantiate service
  Stage = undefined
  beforeEach inject (_Stage_) ->
    Stage = _Stage_

  it 'should do something', ->
    expect(!!Stage).toBe true
