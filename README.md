# Norm package template

Use this repository template for every publishable [Norm](https://github.com/normlanguage/Norm) package.

The template provides the repository shape and release entry points. Package requirements are maintained centrally in [Norm Package Standards](https://github.com/normlanguage/package-standards), while package ownership and immutable artifact publication are handled by the [Norm Registry](https://github.com/normlanguage/registry).

## Required workflow

1. Declare the module and dependencies in `module.norm`.
2. Put every public declaration under `src/` and document it with `@Document`.
3. Generate the root Skill with `norm docs . --output build/api --skill SKILL.md --strict`.
4. Run `scripts/validate-package.ps1` and the package tests.
5. Release the package and `SKILL.md` from the same immutable tag.

The registry stores package ownership and release metadata. API facts and Skill content remain in the package repository; the Norm compiler and module system remain the canonical language sources.
