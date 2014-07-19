'use strict'
angular.module('trelloApp').controller 'TreeCtrl', ($scope, treeSrv, $stateParams) ->
  $scope.trees = treeSrv.get()
  $scope.$stateParams = $stateParams