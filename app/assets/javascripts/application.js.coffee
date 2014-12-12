#= require 3rd/jquery-2.1.1.debug
#= require handlebars.runtime
#= require 3rd/ember.debug
#= require 3rd/ember-data.debug
#= require_self
#= require caminio-accounts

window.Caminio = Ember.Application.create
  LOG_TRANSITIONS: true,
  LOG_BINDINGS: true,
  LOG_VIEW_LOOKUPS: true,
  LOG_STACKTRACE_ON_DEPRECATION: true,
  LOG_VERSION: true,
  debugMode: true

