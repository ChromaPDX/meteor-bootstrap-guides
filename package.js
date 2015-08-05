Package.describe({
  name: 'chroma:bootstrap-guides',
  version: '0.0.1',
  // Brief, one-line summary of the package.
  summary: 'press ctl+g to reveal bootstap vertical column guides',
  // URL to the Git repository containing the source code for this package.
  git: 'https://github.com/ChromaPDX/meteor-bootstrap-guides',
  // By default, Meteor will default to using README.md for documentation.
  // To avoid submitting documentation, set this field to null.
  documentation: 'README.md'
});

Package.on_use(function(api) {
  // production only
  if (process.env.IS_PRODUCTION) {
  }
  // dev only
  if (process.env.IS_DEVELOPMENT) {
    api.versionsFrom('1.1.0.2');
    api.use([
      "jquery",
      "coffeescript",
      "templating",
      "mquandalle:jade@0.4.3"
  ], "client");

    api.addFiles([
      'bootstrap-guides.jade',
      'bootstrap-guides.css',
      'bootstrap-guides.coffee'
    ], 'client');
  }
});

Package.onTest(function(api) {
  api.use('tinytest');
  api.use('chroma:bootstrap-guides');
  api.addFiles('bootstrap-guides-tests.js');
});
