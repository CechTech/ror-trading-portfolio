const Dashboard = require("webpack-dashboard");
const DashboardPlugin = require("webpack-dashboard/plugin");

const dashboard = new Dashboard();

module.exports = {
  plugin: new DashboardPlugin({
    port: 3035,
    handler: dashboard.setData
  })
};
