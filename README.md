# Flare Timing in Rescript

## Developing

Work on the stylesheet `site.sass` with:
```bash
> cd src
> sass --watch site.sass:site.css --load-path ../node_modules
```

Start a terminal to watch the rescript sources with `yarn start:res` or
(`rescript build -w`). In another terminal, install dependencies with `yarn` and
start a development server with `yarn start`.

## Building

Build the stylesheet `site.css` with:
```bash
> cd src
> sass site.sass:site.css --load-path ../node_modules
```

Build the app with `yarn build`.

## Publishing

Build on branch `develop`, switch to branch `main` and then copy the build to the root, commit and push.

```bash
> cp -a build/ .
```