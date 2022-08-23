# WIP: Solutions: RubyMonk Ruby Primer Course Problems
This repository contains my solutions to the _Problems_ in the
[RubyMonk Ruby Primer Course](https://rubymonk.com/learning/books/1-ruby-primer).


The solutions to the Problems also include the RubyMonk tests as best
as I could reverse engineer them.  These tests are in implemented in
[RSpec](https://rspec.info/) and are located in the  `spec` subdirectory.

These solutions and tests follow standard
[Rubocop](https://rubocop.org/) and
[RuboCop RSpec](https://github.com/rubocop/rubocop-rspec) linting and
code style whenever possible (i.e. supported by RubyMonk's Ruby version).

## Important Notes
* These solution and tests are implemented using Ruby 2.7.6 although
RubyMonk is using an older version of Ruby (pre Ruby 2.0)

* All tests were passing at the time of the last merge to this
repository, however, there can be some false fails of the addition
versus division execution time test due to results caching and
performance of more modern versions of Ruby

* Any `rubocop:enable/disable` directives (and underlying code styles)
are to support RubyMonk's version of Ruby

* Many of the solutions have been incorporated into Ruby `class`es to
better support the RSpec tests, but the core problem solution can
be pasted into RubyMonk and verified by its tests
