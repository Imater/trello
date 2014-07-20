'use strict'

angular.module('trelloApp').controller 'StageCtrl', ($scope, treeSrv, $stateParams, $timeout) ->

  $scope.newTask = { title: '' }

  $scope.stages = treeSrv.get( $stateParams.id )?[0]?.stage
  addTaskStage = undefined
  $scope.isTaskEditShown = (stage)->
    stage == addTaskStage

  $scope.addTask = (stage)->
    addTaskStage = stage
    $timeout ()->
      $('.editor-'+stage.id).focus()

  $scope.saveTask = (stage)->
    stage.addTask { title: $('<div>' + $scope.newTask.title + '</div>').text() }
    $scope.newTask.title = ''
    $timeout ()->
      $('.editor-'+stage.id).focus()



  $scope.cancelAddTask = ()->
    addTaskStage = undefined