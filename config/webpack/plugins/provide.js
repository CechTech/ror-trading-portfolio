const webpack = require("webpack"); // eslint-disable-line import/no-extraneous-dependencies

module.exports = {
  plugin: new webpack.ProvidePlugin({
    $: "jquery",
    jQuery: "jquery",
    jquery: "jquery",
    "window.jQuery": "jquery",
    Popper: ["popper.js", "default"]
  })
};
