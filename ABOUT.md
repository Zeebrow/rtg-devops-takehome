# Rooms To Go Devops Skills assesment
Hello! Thanks again for the chance to showcase the skills I can bring to the Rooms To Go development teams.

I have chosen to implement a modified version of the [feature branch workflow](https://github.com/starrett67/rtg-devops-takehome) to continuously build and deploy specific changes to my fork of [starrett67/rtg-devops-takehome.](https://github.com/starrett67/rtg-devops-takehome)

## Overview
My project consists of 2 main branches: `master` (default) and `develop`. `master` contains the the live code, while `develop` is the same code, plus any changes merged from a `feature/*` branch. 

Whenever a feature branch is created with a name matching `feature/feature-name`, a new S3 website is created, e.g. at http://mzborowski-r2g-feature-name.s3-website-us-east-1.amazonaws.com. When the feature branch is deleted for whatever reason, the site is torn down. Any time code is pushed to `develop` or `feature/*`, changes are pushed to their respective S3 buckets. When a `feature/*` branch is deleted from GitHub, its S3 website is torn down entirely. This allows the developers' features to be quickly tested and showcased.

## Technical details
This workflow is made possible using Terraform and GitHub Actions. Terraform requires a remote backend in order to delete feature branches automatically from within GitHub workflows. 

The `develop` and `feature` workflows are identical; however, having two will provide flexability when integration tests need to be run.

## TO-DO
- Realistically hosted master branch. Multi-region, proper DNS name, SSL, etc. 2 days
- Zero-downtime rollout for master branch code changes. 3 days
- Nightly integration test on develop. Integration tests for feature merges. 1 day
- Security and safety mechanisms. No direct commits to master (must be merges from develop if tests pass, plus pull-approval). As always, this is an-going process.
- Speed builds up. Pre-made GitHub workflow runner with dependencies installed. 0.5 days
