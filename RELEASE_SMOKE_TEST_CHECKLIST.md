# SeedBot Release Smoke Test Checklist

Use this checklist before publishing a new SeedBot CLI build.

## 1) Build Identity

- [ ] `./run-seedbot.sh --version` prints `SeedBot` branding and expected version.
- [ ] `./run-seedbot.sh --help` usage starts with `seedbot` (not `claude`).
- [ ] Core command names are present: `auth`, `mcp`, `plugin`, `doctor`, `install`, `update`.
- [ ] Help text and command descriptions are brand-consistent (`SeedBot`, `forkit.chat`).

## 2) Auth and Session Basics

- [ ] `./run-seedbot.sh auth status` works and returns without crash.
- [ ] `./run-seedbot.sh auth login --help` renders expected login options.
- [ ] If using `/login`, confirm messaging references `Forkit account` where user-facing.
- [ ] Run one interactive session: `./run-seedbot.sh`, enter a prompt, then exit cleanly.

## 3) Remote Control and Web Flow

- [ ] `./run-seedbot.sh remote-control --help` shows `forkit.chat` URLs.
- [ ] First-time remote callout text references `forkit.chat` and `SeedBot`.
- [ ] Remote/trust warnings use `seedbot` command examples (not `claude`).
- [ ] Any docs/help links open under `https://forkit.chat/...`.

## 4) Chrome Integration

- [ ] `./run-seedbot.sh --chrome` does not crash on startup.
- [ ] Chrome-related warnings mention `SeedBot in Chrome`.
- [ ] Extension install/connect guidance points to `https://forkit.chat/chrome`.
- [ ] CLI examples use `seedbot --chrome` and `seedbot --no-chrome`.

## 5) MCP and Plugin Surface

- [ ] `./run-seedbot.sh mcp --help` and `./run-seedbot.sh plugin --help` render normally.
- [ ] MCP UI/help copy is brand-consistent for user-visible labels.
- [ ] No obvious regressions in connector list rendering.
- [ ] Plugin marketplace commands are callable and help text is readable.

## 6) Error Path Spot Checks

- [ ] Invalid command gives friendly output and retains `seedbot` branding.
- [ ] Auth-conflict warnings recommend `seedbot /logout`.
- [ ] Teleport/voice/chrome gating errors read coherently after rebrand.
- [ ] No broken URLs in visible error messages.

## 7) Quick Regression Commands

Run these in `package/`:

- [ ] `./run-seedbot.sh --version`
- [ ] `./run-seedbot.sh --help`
- [ ] `./run-seedbot.sh auth status`
- [ ] `./run-seedbot.sh mcp --help`
- [ ] `./run-seedbot.sh plugin --help`
- [ ] `./run-seedbot.sh doctor --help`
- [ ] `./run-seedbot.sh update --help`

## 8) Release Gate (Go/No-Go)

- [ ] Branding: no user-visible `Claude Desktop` / `Claude app` / `claude.ai` leftovers.
- [ ] URL consistency: user-visible web/docs links are `forkit.chat` domain.
- [ ] CLI naming: user-facing command examples prefer `seedbot`.
- [ ] Smoke tests above all pass (or known exceptions are documented).

---

## Current Baseline (already verified)

- `./run-seedbot.sh --version` => `2.1.88 (SeedBot)`
- `./run-seedbot.sh --help` => usage header shows `seedbot`
