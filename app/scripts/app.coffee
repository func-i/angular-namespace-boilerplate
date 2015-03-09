define [
  'angularAMD'

  './controllers/home_controller'

  'namespace'   # namespace module
  'routes'      # default routes

], (angularAMD) ->
  'use strict'

  # instantiate angular app
  # include all modules here
  app = angular.module 'app', [
    'app.homeController'

    'app.namespace'
    'app.routes'
  ]

  # Bootstrap the app manually using angularAMD
  # therefore ng-app="app" is not required
  angularAMD.bootstrap app

