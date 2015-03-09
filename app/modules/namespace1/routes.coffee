define [
  'angular'
  'ui-router'
], (angular) ->
  'use strict'

  module = angular.module 'namespace1.routes', ['ui.router']

  module.config ($stateProvider) ->

    # ROUTES
    # =========================================

    $stateProvider

      .state 'namespace1',
        abstract: true
        url: '/namespace1'
        template: '<div ui-view class="namespace1"></div>'
        parent: 'public'

      .state 'namespace1.home',
        url: '/home'
        templateUrl: 'modules/namespace1/views/home.html'
        controller: 'Namespace1HomeController as homeCtrl'
