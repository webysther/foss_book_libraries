## Quick guide for AI coding agents

This repository generates `readme.md` from structured data and a template. The CI enforces that `readme.md` is generated, not edited by hand. Follow these project-specific rules so changes are accepted by tests and CI.

- Big picture
  - `projects.json` contains the canonical data (projects + features). `readme.tpl` contains the Markdown template with the placeholder `{{COMPARISON_TABLE}}`.
  - `generate_table.py` reads `projects.json` and `readme.tpl`, validates the JSON and produces `readme.md`.
  - `test_generate_table.py` verifies generator behaviour and that the checked-in `readme.md` equals generated output.

- Developer workflow (required)
  - To update data: edit `projects.json` (or `readme.tpl` for layout changes), then regenerate the README by running:
    - `python3 generate_table.py` (writes `readme.md`)
  - CI/test commands useful to run locally:
    - Consistency-only check: `python3 test_generate_table.py TestReadmeConsistency -v`
    - Full test suite: `python3 test_generate_table.py -v`

- Key validation and conventions
  - Required fields for each project: `name`, `repo`, `logo_url`, `logo_alt` (if missing, `validate_projects_json` raises an error).
  - Allowed standard keys: `name`, `repo`, `branch`, `logo_url`, `logo_alt`, `license_custom`.
  - Feature keys are derived from entries in the top-level `features` array in `projects.json` by lowercasing and converting spaces/slashes to underscores. Example: feature name `Object/Face Recognition` → project key `object_face_recognition` and URL variant `object_face_recognition_url`.
  - Unmapped extra keys in a project will cause validation to fail — add the corresponding feature to `features` or use `license_custom`/standard keys.

- Custom processors and patterns
  - Some `features` entries use a `processor` field. Recognised processors in `generate_table.py`:
    - `generate_logo_row` — renders the logos.
    - `generate_badge_row` — uses a `badge_template` (supports `{repo}` and optional `{branch}` when `use_branch` is true).
    - `generate_license_row` — handles `license_custom` fallbacks.
  - Score formatting rules (see `score_to_emoji`):
    - `"x"` → ❌
    - `"wip-N"` → 🚧N️⃣ (case-insensitive)
    - digits `0`–`10` → ✅<number emoji> (10 → 🔟)

- Important CI note
  - The workflow `.github/workflows/mega-linter.yml` runs MegaLinter and then runs the python consistency tests. The repo expects only `readme.tpl` and `projects.json` to be the edit points for content changes — do not edit `readme.md` directly.

If anything here is unclear or you need more examples (e.g. how to add a badge row with `{branch}` or how to add a new feature entry), tell me which part to expand and I will iterate.
