# WingChecker documentation

## Structure

The `files` directory has two main folders:
- `WingChecker` with plugin
- `QuickInstaller`.

Both must be publish in `Release` via VS.

## Deploy

To deploy simply run

```
mkdocs gh-deploy
```

This pushes new commit to `gh-pages` branch, which is used to serve the documentation.

> **Note: **
>
> This creates new page depending on your current branch. Make sure to checkout to master.