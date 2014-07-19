'use strict'

class Id
  instance = null
  class PrivateClass
    constructor: ()->
      @id = 1
  @get: ()->
    instance ?= new PrivateClass
    instance.id++


class Tree
  constructor: (title) ->
    @title = title || 'Новый проект'
    @id = Id.get()
    @parents = []
    @childs = []
    @path = []
    @level = 0
  addChild: (tree) ->
    @childs.push tree
    tree.level = @level + 1
    tree.parent = @
    tree.path = @path.concat [@]
    tree
  getFind: (answer = [], mapFn)->
    answer.push result if mapFn and (result = mapFn(@))
    for child in @childs
      child.getFind(answer, mapFn)
    answer
  getCount: ()->
    @getFind( [], (el)->
      el.id
    ).length
  getPath: (parents = [])->
    if @parent
      parents.push @parent.title
      @parent.getPath parents
    parents



angular.module('trelloApp').service 'treeSrv', ->
  # AngularJS will instantiate a singleton by calling 'new' on this function
  main = undefined
  treeSrv =
    _Tree: Tree

    get: ()->
      if !main
        main = @load()
      main
    load: ()->
      main = new Tree 'Working'
      main2 = main.addChild new Tree 'NetEagles'
      main3 = main2.addChild new Tree 'Web-projects'
      main3.addChild new Tree 'Miass'
      main3.addChild new Tree 'Trello'

      main4 = main.addChild new Tree 'Home projects'
      main4.addChild new Tree 'Health'

      main
  treeSrv