const { environment } = require('@rails/webpacker')
const webpack = require('webpack')

// region Plugins
if (process.env.NODE_ENV === 'development') {
  const pluginDashboard = require('./plugins/dashboard')

  environment.plugins.append('Dashboard', pluginDashboard.plugin)
}
// endregion

environment.plugins.prepend(
  'Provide',
  new webpack.ProvidePlugin({
    $: 'jquery',
    jQuery: 'jquery',
    jquery: 'jquery',
    'window.jQuery': 'jquery',
    Popper: ['popper.js', 'default']
  })
)

module.exports = environment