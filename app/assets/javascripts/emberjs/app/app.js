import Ember from 'ember';
import Resolver from './resolver';
import loadInitializers from 'ember-load-initializers';
import config from './config/environment';

let App;

Ember.MODEL_FACTORY_INJECTIONS = true;

App = Ember.Application.extend({
    modulePrefix: config.modulePrefix,
    podModulePrefix: config.podModulePrefix,
    Resolver,
    d3: {
        // ember-cli-d3 version >= 0.7.0
        plugins: {        }
    }
});

loadInitializers(App, config.modulePrefix);

export default App;
