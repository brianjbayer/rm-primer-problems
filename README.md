# Solutions: RubyMonk Ruby Primer Course Problems
This repository contains my solutions to the _Problems_ in the
[RubyMonk Ruby Primer Course](https://rubymonk.com/learning/books/1-ruby-primer).

The solutions to the Problems also include the RubyMonk tests as best
as I could reverse engineer them.  These tests are in implemented in
[RSpec](https://rspec.info/) and are located in the `spec` subdirectory.

These solutions and tests follow standard
[Rubocop](https://rubocop.org/) and
[RuboCop-RSpec](https://github.com/rubocop/rubocop-rspec) linting and
code style whenever possible (e.g. supported by RubyMonk's Ruby version and original code).

## Important Notes
* These solution and tests are implemented using Ruby 2.7.6 although
RubyMonk is using an older version of Ruby (pre Ruby 2.0)

* All tests were passing at the time of the last merge to this
repository; however, there can be some false fails of the addition
versus division execution time test due to results caching and
performance of more modern versions of Ruby

* Any `rubocop:enable/disable` directives (and underlying code styles)
are to support RubyMonk's version of Ruby and original implementations
for the solutions (e.g. method names and parameters)

* Many of the solutions have been incorporated into Ruby `class`es to
better support the RSpec tests, but the core problem solution can
be pasted into RubyMonk and verified by its tests

## To Run Linting
To run the `rubocop-rspec` linter on the command line...
```
bundle exec rubocop --require rubocop-rspec
```

## To Run the Tests
To run **all** of the `rspec` tests on the command line...
```
bundle exec rspec
```

To run the same subset of test used in the project's
Continuous Integration (CI) and exclude any tests deemed
and tagged `flaky`...
```
bundle exec rspec --tag '~flaky'
```

## To Build and Use the Docker Image
This project includes a very simple `Dockerfile` for building
an image and running the project as a container.

### Building the Image Using Docker
Assuming that you have Docker installed, to build the image on
the command line...
```
docker build --no-cache  -t rm-ruby-primer .
```

### Running the Container Interactively Using Docker
Assuming that you have Docker installed, to run the container
interactively on the command line...
```
docker run -it --rm rm-ruby-primer
```

This will run the Alpine command-line shell so that you can
interact with the container, for example to run the tests.
