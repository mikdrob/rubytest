# ICS0013 2020 spring semester lab2 project template

## Project structure and files

Structure is inline with [RubyGems basics guide](https://guides.rubygems.org/rubygems-basics/) freewill example and [Learn Ruby the hard way Exercise 46: A Project Skeleton](https://learnrubythehardway.org/book/ex46.html) as far as applicable. Directories contain `.gitkeep` because Git does not track empty directories.

`.gitignore` contains common operating systems and Ruby projects ignored files from [GitHub templates](https://github.com/github/gitignore). It is extended to ignore gitlab-runner builds, RubyMine, VS Code local configuration and other files what shall not belong to repository. See file itself for details. Feel free to extend it.

`lib` directory is structured to modules "style" to enable future expansion.

## Linter configuration

[RuboCop](https://rubocop.readthedocs.io/en/latest/) is used for static code analysis. Project contains `rubocop.yml` with recommended configuration. Feel free to extend it.

## Rake

[Rake - Ruby Make](https://ruby.github.io/rake/) is make-like build utility for Ruby.

Rake tasks are set up in `Rakefile` located in project root directory.

```
rake allTests      # Run rubocop and test tasks (default task)
rake clobber_rdoc  # Remove RDoc HTML files
rake rdoc          # Build RDoc HTML files
rake rerdoc        # Rebuild RDoc HTML files
rake rubocop       # Run rubocop
rake test          # Run tests

```

Rake print all tasks usage:

```
$ rake -T
```

Rake usage example to run linter and tests:

```
$ rake
Running RuboCop...
Inspecting 7 files
.......

7 files inspected, no offenses detected
Run options: --seed 56121

# Running:

................

Finished in 0.003110s, 5144.6946 runs/s, 7073.9551 assertions/s.

16 runs, 22 assertions, 0 failures, 0 errors, 0 skips

```
