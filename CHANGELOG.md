# Changelog

All notable changes to this module will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [2.0.0] - 2026-11-24

### Added
- `region` input in both submodules, applied to all resources, for per-resource multi-region override (provider v6 feature).
- `force_destroy` input in the `vault` module (`aws_backup_vault`, provider argument since v4.26.0).
- `schedule_expression_timezone` (provider v5.71.0) and `target_logically_air_gapped_backup_vault_arn` (provider v6.24.0) support in `rules` entries of the `plan` module.
- `opt_in_to_archive_for_supported_resources` in `lifecycle` blocks of `rules` and `copy_action` in the `plan` module (provider v5.33.0).
- `tags_all` output in the `plan` module.

### Changed
- **Breaking:** raise `hashicorp/aws` provider constraint to `>= 6.74.0` (from `>= 4.17.1`). The lower bound is the version validated in this change; the minimal version sufficient for the new arguments is v6.24.0 (`target_logically_air_gapped_backup_vault_arn`), so the bound may be lowered later if needed.

## [1.0.1] - 2022-08-12

### Fixed
- Add missing example README.

## [1.0.0] - 2022-08-12

### Added
- `backup_selection` support in the `plan` module (`aws_backup_selection` resource).

## [0.3.1] - 2022-08-12

### Fixed
- Fix README.

## [0.3.0] - 2022-08-12

### Added
- `plan` module (`aws_backup_plan` resource).

## [0.2.0] - 2022-08-11

### Changed
- Update README.

## [0.1.0] - 2022-08-11

Initial release.

[Unreleased]: https://github.com/tf-cloud-modules/terraform-aws-backup/compare/2.0.0...HEAD
[2.0.0]: https://github.com/tf-cloud-modules/terraform-aws-backup/compare/1.0.1...2.0.0
[1.0.1]: https://github.com/tf-cloud-modules/terraform-aws-backup/compare/1.0.0...1.0.1
[1.0.0]: https://github.com/tf-cloud-modules/terraform-aws-backup/compare/0.3.1...1.0.0
[0.3.1]: https://github.com/tf-cloud-modules/terraform-aws-backup/compare/0.3.0...0.3.1
[0.3.0]: https://github.com/tf-cloud-modules/terraform-aws-backup/compare/0.2.0...0.3.0
[0.2.0]: https://github.com/tf-cloud-modules/terraform-aws-backup/compare/0.1.0...0.2.0
[0.1.0]: https://github.com/tf-cloud-modules/terraform-aws-backup/releases/tag/0.1.0
