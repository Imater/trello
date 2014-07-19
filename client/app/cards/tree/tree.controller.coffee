'use strict'
angular.module('trelloApp').controller 'TreeCtrl', ($scope, treeSrv) ->
  $scope.tree = treeSrv.get()