# Helper scripts

These are helper scripts I use with git and other tools.
They come with absolutely no warranty, and are provided as-is.

I find these handy for development of project with git.

## Fresh develop

When you are using a git branch and merge strategy, you may often want to go bak to develop with a fresh set of branches.

When you run this, within a git folder it will do the following:

- Checkout the default branch for your repository ('main', 'master' or 'develop')
- Pull the latest changes from the remote with:
  - no tags
  - prune branches
- Init/update any submodules

Usage: `fresh-develop.sh`

## Clean gone branches

This script can be run after fresh-develop. It will clean any local branches that no longer exist on the remote and have since been merged.

Usage: `clean-gone-branches.sh`

## Requirements

These need git, grep, awk and xargs. They require bash and use bashisms.

## Setup

I copy/or softlink these from a ~/bin folder.
Make sure that folder is in your PATH.
