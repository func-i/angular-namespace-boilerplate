define ['angular'], (angular) ->
  'use strict'

  module = angular.module 'app.homeController', []

  module.controller 'HomeController', () ->

    @title = "App Home Controller"
