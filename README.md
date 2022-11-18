# Source Controlled Dotfiles 

## Installation

Install [rcm](https://github.com/thoughtbot/rcm)

    % brew install rcm

On first install you need to specify the location of the `rcrc`. Future runs of
`rcup` will know where there file is, since the initial run will symlink it.

    % env RCRC=$HOME/dotfiles/rcrc rcup

## Updating

When new files are added to the this repo, you need to `rcup` again so to create
the new symlinks

    % rcup

### References
[thoughtbot/rcm](https://github.com/thoughtbot/rcm)
[thoughtbot/dotfiles](https://github.com/thoughtbot/dotfiles)
