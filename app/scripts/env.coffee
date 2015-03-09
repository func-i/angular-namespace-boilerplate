# API host address changed on 'grunt build' by setting variable 'ENV'
# e.g. 'ENV=staging grunt deploy'
# Defaults to 'development' if not defined

define ['angular'], (angular) ->
  'use strict'

  module = angular.module 'app.env', []

  module.provider 'ENV', () ->

    # environment, default to development
    @env = '{env}'

    # environment settings
    @settings =

      common:
        localStorageString: 'kalebr-roar'

      development:
        api:
          host: "http://localhost:3000"
      staging:
        api:
          host: "http://localhost:3000"
      production:
        api:
          host: "http://localhost:3000"

    settings = @settings.common
    for key, value of @settings[@env]
      settings[key] = value

    @settings = settings

    @$get = () ->
      @settings

    return @
