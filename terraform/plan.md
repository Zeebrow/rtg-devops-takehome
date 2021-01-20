# Rooms 2 Go
## Overview
This website will is to be hosted at skylab.mzborowski.com/r2g.

## Requirements
See ../README.md
- Github actions
- Terraform
- AWS free tier

## Plan
The Github Actions build produces the correct webpage. Checking in code correctly triggers the build. However, each branch needs its own bucket to host the site. This bucket should be made when a branch is created, and updated on code check-in to that branch only.

### Tomorrow 1/20
Create basic bucket creation tf file
Modify github action to execute above on branch creation. bucket name should reference git branch.
github action should destroy infra created from branches when the branch is merged or deleted.


### Build

## Notes
GitHub Actions is pretty neat! After testing out building with Gatsby on my local server, I used Github Actions to take care of this on check-in. Using jakejarvis' library to upload the contents of public/ to S3. Once the Terraform scripts are working, the plan is to deploy a new environment everytime a branch is made. The environment will be deleted when a branch is deleted or merged with master.

Tests should be run, so the plan is to write some Selenium to visit the pages, and report the results somehow. Need to find out if Github Actions can act based on these results. Storing them in an S3 bucket should suffice - AWS can automate off of S3 uploads.

As of 1/19, all AWS infrastructure has been made without using Terraform. Once I get deployments working to manually configured AWS services, I will decide which components need automated init/destroy. the rtg-devops-takehome/aws is the pilot.

Room for improvement: 
- How to pass properties from terraformed resources to GitHub actions? Probably a way to run terraform from within github actions, is there another way?
	- s3 bucket name
	- web address


