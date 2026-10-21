# homebrew-tap

Homebrew tap for the Synod CLI: `brew install synodlang/tap/synod`.

[![License: Apache-2.0](https://img.shields.io/badge/license-Apache--2.0-blue.svg)](https://github.com/synodlang/compiler/blob/main/LICENSE)

This tap installs the `synod` command from the [compiler](https://github.com/synodlang/compiler) repository. The command formats, checks and runs Synod programs. The formula downloads the universal macOS build, or the Linux build, from the compiler's GitHub release.

## Install

```
brew install synodlang/tap/synod
```

This adds the tap on first use. You can also add it yourself with `brew tap synodlang/tap`.

## Upgrade

```
brew update
brew upgrade synod
```

## Verify

```
synod version
```

It prints the installed version. Compare it with the latest [release](https://github.com/synodlang/compiler/releases).

## Do not edit by hand

`Formula/synod.rb` is written by the compiler's release workflow. Each release updates the version, the download URLs and the checksums. Hand edits are overwritten. To change the formula's shape, change the release workflow in the compiler repository.

## Where it fits

| Repository | What it is | Status |
| --- | --- | --- |
| [dsl](https://github.com/synodlang/dsl) | The language specification and implementation guides | Spec v0.2 |
| [compiler](https://github.com/synodlang/compiler) | The `synod` command: `fmt`, `check`, `run` | v0.2.2 released |
| [std](https://github.com/synodlang/std) | The standard library packages | In use by the compiler |
| [examples](https://github.com/synodlang/examples) | Sample programs and acceptance tests | Available |
| [player](https://github.com/synodlang/player) | Canvas library that plays `scene.json` | Planned (M7) |
| [mac-app](https://github.com/synodlang/mac-app) | The Mac app | Planned (M8, M9, M10) |
| [agent-skills](https://github.com/synodlang/agent-skills) | Skills for coding agents | Planned (M10) |
| [synodlang.github.io](https://github.com/synodlang/synodlang.github.io) | The website and documentation | Install page live; rest planned (M11) |
| **homebrew-tap** (this repository) | Homebrew formula for `synod` | Updated by compiler releases |
| [scoop-bucket](https://github.com/synodlang/scoop-bucket) | Scoop manifest for `synod` | Updated by compiler releases |
| [.github](https://github.com/synodlang/.github) | Organization profile and shared workflows | Available |

Other ways to install are on https://synodlang.github.io/install/.

## Why Synod

Synod is named after the Synod protocol, the core consensus algorithm in Leslie Lamport's paper "The Part-Time Parliament" (ACM Transactions on Computer Systems, 1998; first submitted in 1990). The paper tells it as the story of the parliament of the ancient Greek island of Paxos, whose part-time legislators could agree on decrees although they came and went; today the algorithm is known as Paxos. Lamport later explained it plainly in "Paxos Made Simple" (2001), and in 2013 he received the ACM A.M. Turing Award for fundamental contributions to the theory and practice of distributed and concurrent systems. His "Time, Clocks, and the Ordering of Events in a Distributed System" (1978) and his TLA+ specification language shaped how we reason about such systems. We are grateful for his work, and we hope Synod honours it by making these ideas easier to watch and understand. The tap installs the `synod` command that runs it.

Licensed under the Apache License 2.0, like the compiler it installs.
