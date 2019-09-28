# dbmate key length issue
Small project to demonstrate the issue with the `dbmate` `schema_migrations` key length on Debian with MariaDB 10.1

## Build the Docker image
```docker build . --tag dbmate-keylength-issue```

## Start the database server
```docker run -d -p3306:3306 dbmate-keylength-issue```

## Try to run the migrations
```dbmate up```

### Expected Output
```
Creating: database_name
Error: Error 1071: Specified key was too long; max key length is 767 bytes
```
