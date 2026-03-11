# history-find

`history-find` is a small Bash history search helper built on top of `fzf`.

It defines a shell function, `hfindf20`, that:

- reads your current Bash history
- shows the newest entries first
- filters commands by space-separated terms
- previews the selected command while you search

## Requirements

- Bash
- `fzf`
- standard Unix tools: `awk`, `grep`, `mktemp`, `tac`

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
- The function displays results in `fzf` but does not currently execute or paste the selected command.
