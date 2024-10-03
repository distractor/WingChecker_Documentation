# WingChecker documentation

## Structure

The `files` directory has one main subfolder:
- `WingChecker` with plugin files
- The rest of the files are in `files`

> Be sure to build release in VS before publishing.

## Deploy

To deploy simply run

```
mkdocs gh-deploy
```

This pushes new commit to `gh-pages` branch, which is used to serve the documentation.

> **Note: **
>
> This creates new page depending on your current branch. Make sure to checkout to master and pull latest.