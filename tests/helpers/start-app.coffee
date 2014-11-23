`import Ember from 'ember'`
`import Application from '../../app'`
`import Router from '../../router'`
`import config from '../../config/environment'`

StartApp = startApp(attrs) ->
  App = null

  attributes = Ember.merge({}, config.APP)
  attributes = Ember.merge(attributes, attrs);

  Router.reopen
    location: 'none'

  Ember.run ->
    App = Application.create(attributes)
    App.setupForTesting()
    App.injectTestHelpers()

  App.reset

  App

`export default StartApp`
