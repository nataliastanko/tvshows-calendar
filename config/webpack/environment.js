const { environment } = require('@rails/webpacker')

const webpack = require("webpack") 

// tells Bootstrap how to interpret JQuery and Popper variables globally
environment.plugins.append("Provide", new webpack.ProvidePlugin({
  $: 'jquery',
  jQuery: 'jquery',
  Popper: ['popper.js', 'default']
}));

module.exports = environment
