'use strict'

describe 'Service: Tree', ->

  # load the service's module
  beforeEach module('trelloApp')

  # instantiate service
  Tree = undefined
  treeSrv = undefined
  beforeEach inject (_treeSrv_) ->
    treeSrv = _treeSrv_
    Tree = treeSrv._Tree
  it 'should do something', ->
    expect(!!Tree).toBe true

  it 'create object with title', ->
    tree = new Tree 'new title'
    expect(tree.title).toBe 'new title'

  it 'addChild method', ->
    tree = new Tree 'new parent title'
    tree.addChild new Tree 'child 0'
    tree.addChild new Tree 'child 1'
    tree.addChild new Tree 'child 2'
    child = tree.addChild new Tree 'child 3'
    expect(tree.childs.length).toBe 4
    expect(child.level).toBe 1

  it 'many levels in tree', ->
    mainTree = new Tree 'parent'
    tree = mainTree
    for i in [0..10]
      tree = tree.addChild new Tree 'child '+i
    expect(mainTree.getCount()).toBe 12

  it 'find by title', ->
    mainTree = new Tree 'parent'
    tree = mainTree
    for i in [0..10]
      tree = tree.addChild new Tree 'child '+i
    found = mainTree.getFind [], (el)->
      el if el.title == 'child 5'
    expect(found?[0].title).toBe 'child 5'

  it 'getPath testing', ->
    mainTree = new Tree 'parent2'
    tree = mainTree
    for i in [0..10]
      tree = tree.addChild new Tree 'child '+i
    expect(tree.getPath().length).toBe 11
