const Dashboard = require('webpack-dashboard');
const DashboardPlugin = require('webpack-dashboard/plugin');

var dashboard = new Dashboard();

module.exports = {
  plugin: new DashboardPlugin({
    port: 3035,
    handler: dashboard.setData
  })
};

