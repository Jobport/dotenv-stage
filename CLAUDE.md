# Jobport gem

One of the gems the jobport2 apps depend on, published to the Jobport registry on `rubygems.pkg.github.com`. This file, the PR template, the workflows, `Dockerfile`, `docker-compose.yml` and `bin/gem-run` are synced from `Jobport/config`; change them there, not here.

## Releasing

- Never edit `lib/*/version.rb`. Put a `bump:patch`, `bump:minor` or `bump:major` label on the PR; after the merge `bump.yml` bumps the version, tags and publishes the gem.
- Use this repo's own `.github/pull_request_template`: its `### Package` section is where the bump label gets ticked off.
- Kodiak merges PRs labelled `auto-merge` once checks pass. Apps pick up the new version by bumping their `Gemfile.lock`.

## Testing

`bin/checkup` runs rubocop and the test suite; `bin/gem-run <command>` runs a command in the gem's docker container when the host ruby does not match `.ruby-version`.
