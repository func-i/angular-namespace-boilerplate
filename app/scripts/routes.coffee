define [
  'angular'
  'ui-router'
], (angular) ->
  'use strict'

  module = angular.module 'app.routes', ['ui.router']

  module.config ($stateProvider, $urlRouterProvider) ->

    # ROUTES
    # =========================================
    $urlRouterProvider.otherwise '/'

    $stateProvider

    # PUBLIC ROUTES
    # =========================================

      .state 'public',
        abstract: true
        template: '<div class="public" ui-view></div>'
        data: { auth: false }

      .state 'home',
        url: '/'
        templateUrl: 'views/home.html'
        parent: 'public'
        controller: 'HomeController as homeCtrl'

      .state 'document',
        url: '/document'
        templateUrl: 'views/document.html'
        parent: 'public'

    # PRIVATE ROUTES (Authentication Required)
    # =========================================
      .state 'private',
        abstract: true
        template: '<div class="private" ui-view></div>'
        data: { auth: true }

