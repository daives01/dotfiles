# Dotfiles

Personal configuration and agent skills, managed with GNU Stow.

## Layout

Each top-level directory is a Stow package whose contents mirror `$HOME`:

- `nvim/` installs `~/.config/nvim`
- `agents/` installs shared instructions and skills

The canonical global instructions live at `agents/.agents/AGENTS.md`. Codex does
not read that location directly, so `agents/.codex/AGENTS.md` is a relative
symlink to the canonical file.

Skills live below `agents/.agents/skills/<skill-name>/SKILL.md`. This is both the
native user-level skill location and discoverable by the Skills CLI when pointed
at this repository. Personal skills default to explicit invocation via
`disable-model-invocation: true`.

## Install

```sh
git clone git@github.com:daives01/dotfiles.git ~/dotfiles
cd ~/dotfiles
./bootstrap.sh
```

The bootstrap script requires GNU Stow. On macOS it installs Stow with Homebrew
when Homebrew is already available.

## Add another dotfile package

Create a top-level directory that mirrors the destination below `$HOME`:

```text
zsh/
└── .zshrc
```

Then add `zsh` to the package list in `bootstrap.sh`.

## Add compatibility for another agent

Keep the content in `agents/.agents/AGENTS.md`. Add the path expected by the
agent underneath `agents/` as a relative symlink to that canonical file. This
keeps the instructions agent-neutral while satisfying agent-specific discovery.
