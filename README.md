<div align="center">
  <img height="80" alt="icon" src="https://github.com/vague-theme/vague/blob/main/assets/icon.png?raw=true" />
  <h1>Vague for Neovim</h1>
</div>

An opinionated fork of https://github.com/vague-theme/vague.nvim.

Designed for my personal use - but you can use it too, if you're cool enough.

### Differences from upstream

- No configuration
- Single-file structure
- Uses native `nvim_set_hl()`
- No external plugin integrations

## Customizing

You might ask: no plugin support? no config??

Yes. That's intentional. The intended way to customize the theme is by creating your own color scheme file in your config,
source the original one from the plugin, and overriding highlight groups as you like.

For a concrete example, see: [skewb1k/dotfiles:colors/vague.lua](https://github.com/skewb1k/dotfiles/blob/a615817ef9b5b88ea70cd412af77ed6c5dada24e/nvim/.config/nvim/colors/vague.lua)

## Extras

Extra color configs for other tools can be found in [GitHub organization](https://github.com/vague-theme).
