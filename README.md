# history-find

`history-find` is a small Bash history search helper built on top of `fzf`.

It defines a shell function, `hfindf20`, that:

- reads your current Bash history
- shows the newest entries first
- filters commands by space-separated terms
- previews the selected command while you search
- copies the selected command to your clipboard

## Requirements

- Bash
- `fzf`
- standard Unix tools: `awk`, `grep`, `mktemp`, `tac`
- one clipboard utility: `wl-copy` (Wayland), `xclip` or `xsel` (X11), `pbcopy` (macOS), or `clip.exe` (WSL/Windows)
- `tput` (optional, for cleaner terminal cursor positioning after search)

## Install

Copy the function from [history-find.sh.txt]into your `~/.bashrc`, then reload your shell:

```bash
source ~/.bashrc
```

Or source the file directly from your shell startup config:

```bash
source /path/to/history-find/history-find.sh.txt
```

## Usage

Run:

```bash
hfindf20
```

Type one or more search terms separated by spaces. A command is shown only if it contains all terms.

Example:

```text
git rebase
```

This matches history entries containing both `git` and `rebase`, in any position.

## Notes

- Matching is case-insensitive.
- History is snapshotted before search starts, so the list stays stable during a session.
- After selecting a command, it is printed to stdout and copied to your clipboard automatically.
- If no supported clipboard utility is found, a warning is printed to stderr and the command is still printed to stdout.
