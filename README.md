# yamlcv

This project started because I wanted to build a better resume.
All the good templates I found online were formatted as LaTeX, which means I had to use OverLeaf.
As someone who is actively trying to use FOSS over enterprise software for almost everything, this didn't sit well with me.
So here's yamlcv (looking for a better name :/)

## Prerequisites

- MacOS / Linux ✅ (will add Windows support in case its required)

## Installation (quick)

```bash
curl -fsSL https://raw.githubusercontent.com/SakshamKarnawat/yamlcv/main/install.sh | sh
cd ~/yamlcv && uv run server.py
```

## Usage

```bash
cd ~/yamlcv

# web UI (recommended)
uv run server.py

# CLI watch mode
uv run templates/jake/build.py --watch
```

Open `templates/jake/details.yml` and fill in your info. PDF appears in `generated/`.

## Features

- **Web UI** — split-pane editor with live PDF preview, simplified form, and instant error feedback
- **Watch mode** — CLI alternative that auto-rebuilds on every save
- **Jake's template** — clean, ATS-friendly, widely recognized in SWE hiring
- **Charter font** — serif, easy on the eyes, recruiter-friendly
- **FontAwesome icons** — optional icons on contact links
- **Page overflow warning** — alerts you if resume spills to 2 pages
- **Optional sections** — projects, title, summary, website all optional
- **Project links** — per-project demo and repo links
- **Private details** — keep personal yml outside repo via `--details` flag
- **YAML validation** — clear error shown before LaTeX even runs

## Notes

- Keep personal details outside repo: `uv run templates/jake/build.py --details ~/path/to/details.personal.yml`
- To add a new template: create `templates/{name}/` with its own `details.yml` and `build.py`
- VS Code: disable auto-rebuild on save with `"latex-workshop.latex.autoBuild.run": "never"` in .vscode/settings.json

## Roadmap

- More templates (McDowell, etc.)
- More customization options
- Adding proper attribution for templates and tooling used
- Uninstall section with proper removal of all installed data (option to keep the generated folder for resume)
