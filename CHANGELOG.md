# Changelog

All notable changes to this module will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
- Add a Russian README translation.

### Changed
- Raise the aiven/aiven provider constraint to `>= 4.66.0, < 5.0.0`.
- Use `null` defaults for optional string inputs when no value is configured.
- **Breaking:** change the default OpenSearch version from `1` to `3.8`. Existing deployments that omit `opensearch_version` may plan a major service-version upgrade; review the plan and pin the current version if needed.
- Before upgrading a service to OpenSearch 3.x, ensure all indices are at least version 2.x. User-created 1.x indices may require an intermediate service upgrade to 2.19 and reindexing. See the Aiven upgrade and reindexing guides in README.md; the module does not migrate index data.

### Fixed
- Apply the canonical Terraform `.gitignore` and format the Terraform configuration.

## [2.0.1] - 2023-03-24

### Fixed
- Correct the default IP filter object.

## [2.0.0] - 2023-03-24

### Changed
- **Breaking:** add aiven/aiven provider v4 support.

## [1.1.2] - 2023-03-24

### Changed
- Lock the provider version.

## [1.1.1] - 2022-10-03

### Changed
- Update the complete example to use a one-variable approach.

## [1.1.0] - 2022-09-20

### Added
- Add service integrations.

## [1.0.0] - 2022-08-29

### Added
- Add OpenSearch user configuration settings.

## [0.6.1] - 2022-08-18

### Fixed
- Correct the tag block.

## [0.6.0] - 2022-08-15

### Added
- Add the OpenSearch ACL rule module.

## [0.5.0] - 2022-08-15

### Added
- Add the OpenSearch ACL configuration module.

## [0.4.0] - 2022-08-15

### Added
- Add the OpenSearch user module.

## [0.3.0] - 2022-08-15

### Added
- Add index patterns and templates.

## [0.2.0] - 2022-08-15

### Added
- Add access configuration blocks.

## [0.1.0] - 2022-08-15

### Added
- Initial release.

[Unreleased]: https://github.com/tf-cloud-modules/terraform-aiven-opensearch/compare/2.0.1...HEAD
[2.0.1]: https://github.com/tf-cloud-modules/terraform-aiven-opensearch/compare/2.0.0...2.0.1
[2.0.0]: https://github.com/tf-cloud-modules/terraform-aiven-opensearch/compare/1.1.2...2.0.0
[1.1.2]: https://github.com/tf-cloud-modules/terraform-aiven-opensearch/compare/1.1.1...1.1.2
[1.1.1]: https://github.com/tf-cloud-modules/terraform-aiven-opensearch/compare/1.1.0...1.1.1
[1.1.0]: https://github.com/tf-cloud-modules/terraform-aiven-opensearch/compare/1.0.0...1.1.0
[1.0.0]: https://github.com/tf-cloud-modules/terraform-aiven-opensearch/compare/0.6.1...1.0.0
[0.6.1]: https://github.com/tf-cloud-modules/terraform-aiven-opensearch/compare/0.6.0...0.6.1
[0.6.0]: https://github.com/tf-cloud-modules/terraform-aiven-opensearch/compare/0.5.0...0.6.0
[0.5.0]: https://github.com/tf-cloud-modules/terraform-aiven-opensearch/compare/0.4.0...0.5.0
[0.4.0]: https://github.com/tf-cloud-modules/terraform-aiven-opensearch/compare/0.3.0...0.4.0
[0.3.0]: https://github.com/tf-cloud-modules/terraform-aiven-opensearch/compare/0.2.0...0.3.0
[0.2.0]: https://github.com/tf-cloud-modules/terraform-aiven-opensearch/compare/0.1.0...0.2.0
