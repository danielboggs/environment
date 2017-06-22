# Environment

This repo was originally forked from [https://github.com/square/maximum-awesome](https://github.com/square/maximum-awesome). I have since included a lot of additions and modifications.

## What's in it?

* Vim
* [tmux](http://tmux.sourceforge.net/)
* Want to know more? [Fly Vim, First Class](http://corner.squareup.com/2013/08/fly-vim-first-class.html)

### vim

* `,d` brings up [NERDTree](https://github.com/scrooloose/nerdtree), a sidebar buffer for navigating and manipulating files
* `,t` brings up [ctrlp.vim](https://github.com/kien/ctrlp.vim), a project file filter for easily opening specific files
* `,b` restricts ctrlp.vim to open buffers
* `,a` starts project search with [ag.vim](https://github.com/rking/ag.vim) using [the silver searcher](https://github.com/ggreer/the_silver_searcher) (like ack, but faster)
* `ds`/`cs` delete/change surrounding characters (e.g. `"Hey!"` + `ds"` = `Hey!`, `"Hey!"` + `cs"'` = `'Hey!'`) with [vim-surround](https://github.com/tpope/vim-surround)
* `\\\` toggles current line comment
* `\\` toggles visual selection comment lines
* `vii`/`vai` visually select *in* or *around* the cursor's indent
* `,[space]` strips trailing whitespace
* `<C-]>` jump to definition using ctags
* `,l` begins aligning lines on a string, usually used as `,l=` to align assignments
* `<C-hjkl>` move between windows, shorthand for `<C-w> hjkl`

### tmux

* mouse scroll initiates tmux scroll
* `prefix v` makes a vertical split
* `prefix s` makes a horizontal split

If you have three or more panes:
* `prefix +` opens up the main-horizontal-layout
* `prefix =` opens up the main-vertical-layout

You can adjust the size of the smaller panes in `tmux.conf` by lowering or increasing the `other-pane-height` and `other-pane-width` options.

## Install

    rake

*Note: Some of the `.zshrc` config expects you to have oh-my-zsh installed. So either install it, or remove the oh-my-zsh specific configurations from the zshrc file.*

## Additional Notes

There is a set of base16 compatible Iterm2 colorschemes in the `iterm2-colors` directory.

You can see/set my OS X defaults by inspecting/running the `osx` script.
