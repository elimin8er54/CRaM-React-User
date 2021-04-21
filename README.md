# CRaM

This is the microservice for handling the React SPA/static site hosted on S3 using AWS

Since we are running this in an S3 bucket instead of ECS and not in a containerized service we do not need to use Docker.
Webpack will handle setting up a dev testing env so we do not need to worry about using nodejs other than to create the build and push/sync to AWS S3
