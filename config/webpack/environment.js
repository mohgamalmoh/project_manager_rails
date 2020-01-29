const { environment } = require('@rails/webpacker')

// jimmi : adding jquery lines (of course after running "yarn add jquery" AND "yarn add jquery-ui-dist") //start
const webpack = require('webpack')
environment.plugins.prepend('Provide',
    new webpack.ProvidePlugin({
        $: 'jquery',
        jQuery: 'jquery'
    })
)
//end



const aliasConfig = {
    'jquery': 'jquery-ui-dist/external/jquery/jquery.js',
    'jquery-ui': 'jquery-ui-dist/jquery-ui.js'
};

environment.config.set('resolve.alias', aliasConfig);
module.exports = environment