const path = require('path');

module.exports = {
  webpack: config => {
    config.resolve.alias = {
      ...config.resolve.alias,
      'src': path.resolve(__dirname, './src/components'),
    };
    return config;
  },
};
