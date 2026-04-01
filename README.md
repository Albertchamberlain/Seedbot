# Forkit SeedBot CLI

Think in Trees. Not Lines.

Human thought is branching, recursive, and evolving. Forkit is built around that reality.  
This repository contains the `seedbot` CLI: the terminal companion to Forkit for coding, exploration, and branch-first collaboration.

## Why Forkit

Traditional chats are linear and easy to lose. Forkit preserves context as a tree:

- **Context Preservation**: revisit an idea from days ago and continue it without breaking your current flow
- **Forking as Thinking**: fork to evolve ideas, not just copy them
- **Garden & Groves**: develop privately in your Garden, then publish useful branches to public Groves

This CLI brings that same spirit into your local development workflow.

## What SeedBot CLI Does

- Understands your codebase and working directory
- Edits files and executes shell commands
- Helps with iterative problem-solving and multi-step coding tasks
- Supports branch-style exploration while keeping context organized

## Quick Start

```bash
# from this repo root
./run-seedbot.sh
```

Common checks:

```bash
./run-seedbot.sh --version
./run-seedbot.sh --help
./run-seedbot.sh auth status
```

## Optional Global Install

```bash
npm link
seedbot --help
```

## Project Structure

- `cli.js` - runnable CLI bundle
- `run-seedbot.sh` - recommended launcher
- `seedbot/` - source tree
- `vendor/` - runtime native dependencies

## Feedback

Forkit is built for collaborators and explorers.  
If you hit issues or have product ideas, open an issue in this repo or join our WeChat group.

### WeChat Group

Scan the QR code below to join the Forkit WeChat group:

![Forkit WeChat Group QR](./assets/wechat-group-qr.png)

## Learn More

- Forkit About: https://forkit.chat/about
