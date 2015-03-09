define [
  'angular'

  './scripts/controllers/home_controller'

  './routes'
], (angularAMD) ->
  'use strict'

  module = angular.module 'namespace1', [
    'namespace1.homeController'

    # ensure all modules are loaded before the routes
    'namespace1.routes'
  ]


