define ['angular'], (angular) ->
  'use strict'

  module = angular.module 'namespace2.homeController', []

  module.controller 'Namespace2HomeController', () ->

    @title = "Namespace 2 Home Controller"
