# Changelog

All notable changes to this ontology are documented in this file.
Format: [Keep a Changelog](https://keepachangelog.com/en/1.1.0/); versioning: SemVer adapted for ontologies (see CONTRIBUTING).

## [Unreleased]

## [0.14.2] - 2026-07-09

### Fixed
- EMMO now loads in Protégé (and any OWL tool that resolves imports by declared IRI). The dependencies module imported the non-canonical `https://w3id.org/emmo/1.0.2/emmo`; EMMO 1.0.2's file declares its version IRI as `https://w3id.org/emmo/1.0.2`, so tools keyed on the declared IRI resolved the import to an empty ontology and loaded no EMMO terms. Now imports the canonical `https://w3id.org/emmo/1.0.2` (matching the other EMMO domain ontologies), and the catalog wizard entry maps that IRI. Verified: a catalog-resolved load now brings in 1921 EMMO core classes.

## [0.14.1] - 2026-07-08

### Fixed
- Lithium hydroxide: corrected `skos:altLabel` `OH` → `LiOH` and chemical formula `HLiO` → `LiOH`.
- Barium DFOB complex: corrected `skos:altLabel` `a(DFOB)2` → `Ba(DFOB)2`.
- Added missing salt superclass axioms (several substances now also `rdfs:subClassOf` `substance_7fd3843d…`).
- Catalog rebuilt on EMMO 1.0.2 — was mixed 1.0.2/1.0.3 and could not resolve the actual EMMO import offline.

### Added
- `dcterms:license` (CC BY 4.0) and `bibo:status` ontology metadata; real `foaf:logo` and `owl:backwardCompatibleWith` values (placeholders removed).
- `bump-version` release tool (config-driven, shared across EMMO domain repos) with `--check` consistency mode and tests.

[Unreleased]: https://github.com/emmo-repo/domain-chemical-substance/compare/v0.14.1...HEAD
[0.14.1]: https://github.com/emmo-repo/domain-chemical-substance/releases/tag/v0.14.1
