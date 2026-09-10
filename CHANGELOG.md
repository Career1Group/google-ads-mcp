# Changelog

All notable changes to this project are documented here.
Format: Keep a Changelog. Versioning: main.major.minor (SemVer-renamed).

## [Unreleased]

### Changed

- Package the Redis OAuth-token storage backend as a `redis` optional
  dependency extra and install it in the container image, so deployments using
  `GOOGLE_ADS_MCP_STORAGE_TYPE=redis` start without a manual pip install.

## [0.0.3] - 2026-09-10

### Added

- Baseline: existing project state at changelog adoption.
