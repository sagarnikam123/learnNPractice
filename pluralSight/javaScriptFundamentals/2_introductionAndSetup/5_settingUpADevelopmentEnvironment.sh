# 05_Setting up a Development Environment

#install node in path
# editor - code
#
git clone https://github.com/wbkd/webpack-starter.git
cd webpack-starter
npm install

# add below line in src/index.js
# console.log("Hello World!");

# start webpack dev server
# this will open html page in default browser @http://localhost:8080
# view console from Developer Tools
npm run dev

# change few code lines & save to view changes on console
# console.log("Hello World!!!");

# comment below lines
# webpack-starter/webpack/webpack.config.dev.js
# test: /\.(js)$/,
# include: Path.resolve(__dirname, '../src'),
# loader: 'babel-loader'
