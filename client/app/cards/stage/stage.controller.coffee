'use strict'

angular.module('trelloApp').controller 'StageCtrl', ($scope, treeSrv, $stateParams) ->

  $scope.stages = treeSrv.get( $stateParams.id )?[0]?.stage
