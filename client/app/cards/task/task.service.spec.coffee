'use strict'

describe 'Service: Task', ->

  # load the service's module
  beforeEach module('trelloApp')

  # instantiate service
  Task = undefined
  beforeEach inject((_task_) ->
    Task = _task_
  )
  it 'should do something', ->
    expect(!!Task).toBe true