define [
  # require dependencies
  'angular'
  'ui-router'
  'ui-router-extras'
  'oclazyload'

  # require other required modules
  # ...
], (angular) ->
  'use strict'

  module = angular.module 'app.namespace', [
    # inject dependencies
    'ui.router'
    'ct.ui.router.extras'
    'oc.lazyLoad'

    # inject other required modules
    # ...
  ]

  module.config ($futureStateProvider, $ocLazyLoadProvider) ->

    # pre-define namespace modules
    $ocLazyLoadProvider.config
      jsLoader: requirejs
      modules: [{
        name: 'namespace1'
        cache: true
        serie: true
        files: [
          "modules/namespace1/module"

          # sass output dir can be configed in Grunt.js under compassMultiple
          "styles/modules/namespace1/styles/module.css"
        ]
      }, {
        name: 'namespace2'
        cache: true
        serie: true
        files: [
          "modules/namespace2/module"

          # sass output dir can be configed in Grunt.js under compassMultiple
          "styles/modules/namespace2/styles/module.css"
        ]
      }]

    # resolve and lazyload namespace module on LOADING
    $futureStateProvider.addResolve ($state, $ocLazyLoad) ->

      # get the namespace module name
      path = window.location.hash.split('/')
      namespaceModule = if path[0] == '#' then path[1] else path[0]

      # proceed only if namespace module is pre-defined
      if $ocLazyLoad.getModuleConfig(namespaceModule) isnt null
        $ocLazyLoad.load namespaceModule

  module.run ($rootScope, $state, $ocLazyLoad) ->

    # resolve and lazyload namespace module on STATE NOT FOUND

    $rootScope.$on "$stateNotFound", (e, unfoundState, fromState) ->
      e.preventDefault()

      # get the namespace module name
      namespaceModule = unfoundState.to.split('.')[0]

      # proceed only if namespace module is pre-defined
      if $ocLazyLoad.getModuleConfig(namespaceModule) isnt null
        $ocLazyLoad

          # load namespace module which returns a promise
          .load namespaceModule

          # on loaded
          .then () ->

            # check if the state requested exist
            # only continue to the state if exist
            if $state.get(namespaceModule) isnt null
              $state.go unfoundState.to





