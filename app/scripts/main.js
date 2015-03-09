require.config({
  waitSecond: 100,
  baseUrl: 'scripts/',
  paths: {
    angular: '../../bower_components/angular/angular',
    'angular-animate': '../../bower_components/angular-animate/angular-animate',
    'angular-aria': '../../bower_components/angular-aria/angular-aria',
    'angular-cookies': '../../bower_components/angular-cookies/angular-cookies',
    'angular-messages': '../../bower_components/angular-messages/angular-messages',
    'angular-mocks': '../../bower_components/angular-mocks/angular-mocks',
    'angular-resource': '../../bower_components/angular-resource/angular-resource',
    'angular-sanitize': '../../bower_components/angular-sanitize/angular-sanitize',
    angularAMD: '../../bower_components/angularAMD/angularAMD',
    ngDialog: '../../bower_components/ngDialog/js/ngDialog',
    oclazyload: '../../bower_components/oclazyload/dist/ocLazyLoad.min',
    'ui-router': '../../bower_components/ui-router/release/angular-ui-router',
    'ui-router-extras': '../../bower_components/ui-router-extras/release/ct-ui-router-extras',
    jquery: '../../bower_components/jquery/dist/jquery'
  },
  shim: {
    angular: {
      deps: [
        'jquery'
      ],
      exports: 'angular'
    },
    angularAMD: {
      deps: [
        'angular'
      ]
    },
    'angular-animate': {
      deps: [
        'angular'
      ]
    },
    'angular-aria': {
      deps: [
        'angular'
      ]
    },
    'angular-cookies': {
      deps: [
        'angular'
      ]
    },
    'angular-messages': {
      deps: [
        'angular'
      ]
    },
    'angular-resource': {
      deps: [
        'angular'
      ]
    },
    'angular-sanitize': {
      deps: [
        'angular'
      ]
    },
    ngDialog: {
      deps: [
        'angular'
      ]
    },
    'ui-router': {
      deps: [
        'angular'
      ]
    },
    'ui-router-extras': {
      deps: [
        'angular'
      ]
    },
    oclazyload: {
      deps: [
        'angular'
      ]
    },
    jquery: {
      exports: '$'
    },
    affix: {
      deps: [
        'jquery'
      ]
    },
    alert: {
      deps: [
        'jquery'
      ]
    },
    button: {
      deps: [
        'jquery'
      ]
    },
    carousel: {
      deps: [
        'jquery'
      ]
    },
    collapse: {
      deps: [
        'jquery'
      ]
    },
    dropdown: {
      deps: [
        'jquery'
      ]
    },
    tab: {
      deps: [
        'jquery'
      ]
    },
    transition: {
      deps: [
        'jquery'
      ]
    },
    scrollspy: {
      deps: [
        'jquery'
      ]
    },
    modal: {
      deps: [
        'jquery'
      ]
    },
    tooltip: {
      deps: [
        'jquery'
      ]
    },
    popover: {
      deps: [
        'jquery'
      ]
    }
  },
  deps: [
    'app'
  ],
  packages: [

  ],
  priority: [
    'angular'
  ]
});
