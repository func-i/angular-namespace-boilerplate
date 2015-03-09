define ['angular'], (angular) ->
  'use strict'

  module = angular.module 'namespace1.homeController', []

  module.controller 'Namespace1HomeController', () ->

    @title = "Namespace 1 Home Controller"
