define [
  'angular'

  './scripts/controllers/home_controller'

  './routes'
], (angularAMD) ->
  'use strict'

  module = angular.module 'namespace2', [
    'namespace2.homeController'

    # ensure all modules are loaded before the routes
    'namespace2.routes'
  ]


