# Bootstrap Guides

This is a simple debugging tool, useful for checking gutters if you're nesting templates.

press *ctl+g* to reveal magenta vertical guides along various bootstrap column breaks, a la illustrator etc.

![](https://raw.githubusercontent.com/ChromaPDX/meteor-bootstrap-guides/screenshots/img/2columns.png)

## Installation

this package client side only, development mode only.

`chroma:bootstrap-guides` is available on [Atmosphere](https://atmospherejs.com/chroma/bootstrap-guides):

```bash
meteor add chroma:bootstrap-guides
```

## Usage

1. add template named 'bootstrapGuides' somewhere in html (I put it in iron router / layout template)

```html
{{> bootstrapGuides}}
```

```jade
+bootstrapGuides
```

2. press ctl+g to toggle visibility

## Version history

- `0.0.1` - Initial publish.

## Contributing

Do it, this will not be super actively improved upon by default.

***

[ChromaPDX](http://github.com/ChromaPDX)
