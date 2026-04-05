# Minimal Neovim Setup (Post-LazyVim)

## Overview

This repository contains my personal Neovim setup after moving away from LazyVim.

LazyVim is powerful, but I found it too heavy for my actual workflow. I didn’t need most of the features — just the fast navigation, search, and keyboard-driven efficiency.

So I stripped everything back and rebuilt a minimal config using only the components I actually use daily.

My workflow is simple:

> search → open → edit → move fast

So I rebuilt from scratch with only the essentials.

* Minimal config
* Fast startup
* Full control
* Keyboard-first workflow
* Works seamlessly over SSH and remote boxes

## Why I like it

* Project-wide grep
* Fast navigation between results
* Fuzzy file finding
* Quick open across large codebases
* Instant jumping between key files
* Clean, minimal aesthetic

## Plugins Used

* **Telescope** → file search + live grep
* **Harpoon** → quick file marking and jumping
* **Lualine** → lightweight status line
* **Rose Pine** → theme

## Keybindings

Leader key: `Space`

### Navigation

* `Space f f` → Find files
* `Space s g` → Live grep (search across project)

### Harpoon

* `Space a` → Add file
* `Space h` → Open menu
* `Space 1-4` → Jump to marked files

## Workflow

This setup is designed around speed and flow:

1. Search across project
2. Open multiple files quickly
3. Use Harpoon to pin important files
4. Jump instantly between them

Combined with tmux, this becomes a very fast

## Notes on Documentation

I used to use Obsidian heavily for documentation.

But I prefer this setup because:

* everything stays in the terminal
* same keybindings for code and notes
* faster navigation using grep and fuzzy search
* no context switching

