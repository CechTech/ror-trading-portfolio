const { environment } = require("@rails/webpacker");
const pluginDashboard = require("./plugins/dashboard");

environment.plugins.prepend("Provide", require("./plugins/provide").plugin);

if (process.env.NODE_ENV === "development") {
  environment.plugins.append("Dashboard", pluginDashboard.plugin);
}

module.exports = environment;
