###
# ddry-tape dependencies
###

'use strict'

module.exports =
  format: (path) ->
    path.split('/').slice(-3).join '/'

  ddry: ->
    @.format require.resolve('ddry')

  tap: ->
    @.format require.resolve('tap')
