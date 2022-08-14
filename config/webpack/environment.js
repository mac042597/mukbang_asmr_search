const { environment } = require('@rails/webpacker')
const { VueLoaderPlugin } = require('vue-loader')

//jQueryの導入
const webpack = require('webpack')

environment.plugins.prepend('Provide',
  new webpack.ProvidePlugin({
    $: 'jquery/src/jquery',
    jQuery: 'jquery/src/jquery',
    Popper: ['popper.js', 'default']
  })
)

// vue.js 3の設定
environment.plugins.prepend(
  'VueLoaderPlugin',
  new VueLoaderPlugin()
)

environment.loaders.prepend('vue', {
  test: /\.vue$/,
  use: [{
      loader: 'vue-loader'
  }]
})

environment.plugins.prepend('Provide',
  new webpack.ProvidePlugin({
    $: 'admin-lte/plugins/jquery/jquery',
    jQuery: 'admin-lte/plugins/jquery/jquery',
  })
)

environment.toWebpackConfig().merge({
  resolve: {
  alias: {
    'jquery': 'admin-lte/plugins/jquery/jquery',
    }
  }
});

module.exports = environment
