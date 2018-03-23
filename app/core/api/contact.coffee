fetchJson = require './fetch-json'

module.exports = {
  send: ({ name, email, message }, options={}) ->
    fetchJson('/contact', _.assign({}, options, {
      method: 'POST'
      json: { name, email, message }
    }))
}
