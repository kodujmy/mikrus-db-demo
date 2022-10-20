# Spring Boot Mikrus Flyway Demo App

![.images/demo.png](.images/demo.png)

Simple example project showing how to connect:
 * [Spring Boot App](https://spring.io/projects/spring-boot)
 * [Mikrus Hosting](https://mikr.us)
 * [Postgres Mikrus Database](https://mikr.us)
 * [Flyway library](https://flywaydb.org/) used as database versioning tool.
 * [Thymeleaf + Thymeleaf Templates](https://www.thymeleaf.org/)


# Demo
Application is available here 


# Deploying app to Mikrus

Deployment uses GitHub Actions defined in [build.yml](.github/workflows/build.yml) file.

Following secrets are required in repository settings section (example: [https://github.com/kodujmy/mikrus-db-demo/settings/secrets/actions](https://github.com/kodujmy/mikrus-db-demo/settings/secrets/actions)):

![GitHub Secrets](.images/required_secrets.png)


# Local Development

Fill right secrets in file and paste it to your IDE or provide via env. variables.

## Configure elephantsql database

This can be usefull for local development purposes, when we don't want to configure database localy. 

1. Create account and database instance on [https://www.elephantsql.com/](https://www.elephantsql.com/)
2. Prepare following env values:
```
JDBC_DATABASE_URL=jdbc:postgresql://rogue.db.elephantsql.com:5432/abcdefgh
JDBC_DATABASE_PASSWORD=1234qwerweeweweedwr_4321gdfgdfdgd
JDBC_DATABASE_USERNAME=abcdefgh
```
3. Paste them in env window in your IntelliJ IDE
![.images/ide.png](.images/ide.png)
4. Run your app.

## Cloudinary service integration

Application uses third party service responsible for storing images.

1. Go to [https://cloudinary.com/](https://cloudinary.com/) and register account.
2. Get credentials to your storage.
![.images/cloudinary_console.png](.images/cloudinary_console.png)
3. You need to provide following configuration to make it working:
```
CLOUDINARY_CLOUD_NAME=cloudname
CLOUDINARY_API_KEY=apikeyapikey
CLOUDINARY_API_SECRET=secretsecretsecretsecret
```
4. Include it in your environments before running app the same way, you do for DB.
