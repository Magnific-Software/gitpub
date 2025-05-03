# GitPub

A Dart repository as a server application that provides Dart code from Git sources and tags as Dart versions. Built using [Shelf](https://pub.dev/packages/shelf) framework and configured to run with [Docker](https://www.docker.com/).

This is a REST API implementation of hosted pub package repository for dart as per [Hosted Pub Repository Specification Version 2](https://github.com/dart-lang/pub/blob/master/doc/repository-spec-v2.md).

## Features

- RESTful API server built with Shelf framework
- Git repository integration for code versioning
- Security headers with shelf_helmet
- Structured logging system
- Modular architecture with clear separation of concerns

## Project Structure

```
lib/
├── api/        # API endpoints, routing and business logic
├── usecase/    # Additional shared business logic business logic
├── core/       # Core functionality and base classes
├── data/       # Data classes
├── repository/ # Data access and caching from services
└── service/    # Services like fetching data from remote
```

# How to get dependency?

When taking dependency upon a package from a git repository using gitpub package repository, the dependency must be specified as follows:

```yaml
name: myapp
dependencies:
  mypkg:
    version: ^1.0.0
    hosted:
      url: <hosted-url>/git/<hosted>/<owner>/<repository>
      name: mypkg
```

For example, for downloading riverpod with version `3.0.0-dev.14` from git repository https://github.com/rrousselGit/riverpod

```yaml
name: myapp
dependencies:
  mypkg:
    version: ^3.0.0-dev.14
    hosted:
      url: <hosted-url>/git/github.com/rrousselGit/riverpod
      name: riverpod
```

## Peference for tags when resolving versions

If there are multiple tags that specify the same version, Gitpub prefers them in this order if they have a valid dart package matching the package name (will be referred as `<package-name>`) in `pubspec.yaml`:

1. `x.y.z-p.b`: tags without any prefix
2. `vx.y.z-p.b`: tags with `v` as prefix
3. `<package-name>-x.y.z-p.b`: tags with package name prefix like `mypkg-`
4. `<package-name>-vx.y.z-p.b`: tags with package name prefix like `mypkg-v`

Gitpub will search for a pubspec.yaml that has matching `<package-name>` in the following files in order of preference:

1. `/pubspec.yaml`
2. `/packages/<package-name>/pubspec.yaml`
3. `/<package-name>/pubspec.yaml`
4. `/third_party/packages/<package-name>/pubspec.yaml`
5. `/vendor/packages/<package-name>/pubspec.yaml`
6. `/third_party/<package-name>/pubspec.yaml`
7. `/vendor/<package-name>/pubspec.yaml`
8. `/**/<package-name>/pubspec.yaml` (closest to the repository root)

# Running the server

## Running with the Dart SDK

You can run the server with the [Dart SDK](https://dart.dev/get-dart)
like this:

```
$ dart run
13870 (0) 2025-05-03T21:26:34.672806 INFO Server listening on port 8080
```

And then from a second terminal:
```
$ curl -f http://0.0.0.0:8080
{"port":0,"host":"","requestPath":"","since":"2025-05-03T21:26:34.652347","response":"ok"}
```

## Running with Docker

If you have [Docker Desktop](https://www.docker.com/get-started) installed, you
can build and run with the `docker` command:

```
$ docker build . -t myserver
$ docker run -it -p 8080:8080 myserver
Server listening on port 8080
```

And then from a second terminal:
```
$ curl -f http://0.0.0.0:8080
{"port":0,"host":"","requestPath":"","since":"2025-05-03T21:26:34.652347","response":"ok"}
```

You should see the logging printed in the first terminal:
```
13806 (1) 2025-05-03T21:25:50.613472  0:00:00.005856 GET     [200] /
```
