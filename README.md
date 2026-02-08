An opinionated fork of [vague.nvim](https://github.com/vague-theme/vague.nvim) colorscheme.

Designed for my personal use - but you can use it too, if you're cool enough.

## Differences from upstream

- Single-file structure
- Uses native `nvim_set_hl()`
- No configuration
- No external plugin integrations

## Configuration

You might ask: no plugin support? no config??

Yes, that's intentional. The preferred way to customize the color scheme is by
creating a `color/vague.lua` file in your config, sourcing the original plugin,
and overriding the highlight groups as you like.

For example:

```lua
vim.cmd.runtime('PACK colors/vague.lua')
vim.api.nvim_set_hl(0, 'StatusLine', { link = 'Normal' })
vim.api.nvim_set_hl(0, 'NonText', { bg = vim.api.nvim_get_hl(0, { name = 'Error' }).fg })
```
