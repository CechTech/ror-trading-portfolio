const { environment } = require("@rails/webpacker");
const pluginDashboard = require("./plugins/dashboard");
const pluginProvide = require("./plugins/provide");

environment.plugins.prepend("Provide", pluginProvide.plugin);

if (process.env.NODE_ENV === "development") {
  environment.plugins.append("Dashboard", pluginDashboard.plugin);
}

module.exports = environment;
