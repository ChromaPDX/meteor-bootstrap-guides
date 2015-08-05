Package.describe({
  name: 'chroma:bootstrap-guides',
  version: '0.0.1',
  summary: 'press ctl+g to reveal bootstap vertical column guides',
  git: 'https://github.com/ChromaPDX/meteor-bootstrap-guides',
  documentation: 'README.md',
  debugOnly: true
});

Package.on_use(function(api) {
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
  ], "client");
});

Package.onTest(function(api) {
  api.use('tinytest');
  api.use('chroma:bootstrap-guides');
  api.addFiles('bootstrap-guides-tests.js');
});
