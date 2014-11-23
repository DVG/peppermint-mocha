`import Ember from 'ember'`
`import startApp from '../helpers/start-app'`

App = null

describe 'Acceptance: Secret', ->
  beforeEach ->
    App = startApp()
  afterEach ->
    Ember.run(App, 'destroy')
  it 'can visit /secret', ->
    visit('/secret')
    andThen ->
      expect(currentPath()).to.equal('secret')
