# Changelog

All notable changes to this ontology are documented in this file.
Format: [Keep a Changelog](https://keepachangelog.com/en/1.1.0/); versioning: SemVer adapted for ontologies (see CONTRIBUTING).

## [Unreleased]

## [0.14.1] - 2026-07-08

### Fixed
- Corrected LiOH and Ba(DFOB)2 labels and formulae; added missing salt subclass axioms (issues #34–#36).
- Catalog rebuilt on EMMO 1.0.2 — was mixed 1.0.2/1.0.3 and could not resolve the actual EMMO import offline.

### Added
- `dcterms:license` (CC BY 4.0) and `bibo:status` ontology metadata; real `foaf:logo` and `owl:backwardCompatibleWith` values (placeholders removed).
- `bump-version` release tool (config-driven, shared across EMMO domain repos) with `--check` consistency mode and tests.

[Unreleased]: https://github.com/emmo-repo/domain-chemical-substance/compare/v0.14.1...HEAD
[0.14.1]: https://github.com/emmo-repo/domain-chemical-substance/releases/tag/v0.14.1
