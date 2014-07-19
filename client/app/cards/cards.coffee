'use strict'

angular.module('trelloApp').config ($stateProvider) ->
  $stateProvider.state 'cards',
    url: '/cards'
    templateUrl: 'app/cards/cards.html'
    controller: 'CardsCtrl'
