'use strict'

angular.module('trelloApp').service 'treeSrv', (Hierarhy, Id, Stage) ->
  # AngularJS will instantiate a singleton by calling 'new' on this function


  class Tree extends Hierarhy
    constructor: (title) ->
      super
      @title = title || 'Новый проект'
      @id = Id.get()
    addStage: (stage)->
      @stage = [] if !@stage
      @stage.push stage



  main = undefined
  treeSrv =
    _Tree: Tree

    get: (id)->
      if !main
        main = @load()
      if !id
        return main
      else
        return main.getFind [], (el)->
          el if el.id == parseInt(id)

      main
    load: ()->
      main = new Tree 'Working'
      main2 = main.addChild new Tree 'NetEagles'
      main3 = main2.addChild new Tree 'Web-projects'
      miass = main3.addChild new Tree 'Miass'

      miass.addStage new Stage { title: 'Back log', treeId: miass.id }
      miass.addStage new Stage { title: 'To-do', treeId: miass.id }
      miass.addStage new Stage { title: 'Doing', treeId: miass.id }
      miass.addStage new Stage { title: 'Done', treeId: miass.id }

      main3 = main3.addChild new Tree 'Trello'
      main3.addStage new Stage { title: 'To-do', treeId: miass.id }
      main3.addStage new Stage { title: 'Doing', treeId: miass.id }
      main3.addStage new Stage { title: 'Done', treeId: miass.id }

      main4 = main.addChild new Tree 'Home projects'
      main4.addChild new Tree 'Health'

      main
  treeSrv