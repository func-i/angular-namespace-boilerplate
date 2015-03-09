define [
  'angular'
  'ui-router'
], (angular) ->
  'use strict'

  module = angular.module 'namespace2.routes', ['ui.router']

  module.config ($stateProvider) ->

    # ROUTES
    # =========================================

    $stateProvider

      .state 'namespace2',
        abstract: true
        url: '/namespace2'
        template: '<div ui-view class="namespace2"></div>'
        parent: 'public'

      .state 'namespace2.home',
        url: '/home'
        templateUrl: 'modules/namespace2/views/home.html'
        controller: 'Namespace2HomeController as homeCtrl'
