`import resolver from './helpers/resolver'`
`import { setResolver } from 'ember-mocha'`

setResolver(resolver)
document.write('<div id="ember-testing-container"><div id="ember-testing"></div></div>')`

$(document).ready ->
  $('#qunit').attr('id', 'mocha');
  $('#qunit-fixture').attr('id', 'mocha-fixture');
  window.expect = chai.expect;
  require('ember-cli/test-loader')['default'].load();
  mocha.run();
