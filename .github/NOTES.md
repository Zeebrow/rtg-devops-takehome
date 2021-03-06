# Notes

Implement [feature branch workflow](https://www.atlassian.com/git/tutorials/comparing-workflows/feature-branch-workflow)

When a feature branch is created, a feature branch environment to host the new branch is also created. When the feature branch is merged with develop, develop is re-built and deployed, and the feature branch environment is destroyed.

## naming conventions
In order for sites to deploy properly, branches must be named according to AWS S3's bucket naming restrictions. So, how about name your branch like a variable (first character must not be a number), and also no underscores (hyphens ok)

Adhere to this convention in order for terrafrom to properly destroy initialized resources.

`mzborowski-r2g-<branch prefix>.s3-website-<aws region>.com/<branch suffix>`

e.g.

`mzborowski-r2g-feature.s3-website-us-east-1.com/page3`

`http://mzborowski-r2g-develop.s3-website-us-east-1.amazonaws.com/`

A different convention will have to be used for production sites, e.g. loadbalanced across regions.
