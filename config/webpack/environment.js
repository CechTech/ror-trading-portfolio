const { environment } = require('@rails/webpacker')

environment.plugins.prepend('Provide', require('./plugins/provide').plugin)

if (process.env.NODE_ENV === 'development') {
  environment.plugins.append('Dashboard', require('./plugins/dashboard').plugin)
}

module.exports = environment