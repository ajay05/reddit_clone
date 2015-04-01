#RedditClone

##About
This is a clone of reddit written in Ruby on Rails.

## Code Style Guidelines

### Testing Guidelines
#### Ruby/Rails Tests
* Use SimpleCov to gauge track of overall code coverage
* Minimum 95% test coverage at all times
* Focus on controller tests as they are fast (and very convenient to have if we ever upgrade Rails versions). If we have bugs on the front end, cover it with feature tests using Capybara.
* TDD everything. Feature is not to be considered complete unless there's a test covering it.
* Always run specs before committing and pushing.

#### JavaScript Tests
* Write Unit tests with Jasmine.
* Always run specs before committing and pushing.

### Ruby/Rails Guidelines
* Whitespaces are forbidden. Get rid of them.
* Each line of code should be no longer than 80 characters. If it goes over, then break into next line.
* TDD everything. Feature is not to be considered complete unless there's a test covering it.
* Always run specs before committing and pushing.

### Writing Capybara Tests
We'll be using Capybara to write end to end tests. Currently all Capybara tests go under spec/features folder.

To get the Capybara tests running properly, you need to install phantomjs. You can install it easily with brew

```
brew install phantomjs
```

Please create appropriate folder for the test if the folder isn't there. For example, tests for companies should go under spec/features/companies folder.

All feature test file names need to end with spec.rb for RSpec to pick it up when running the specs.

For example:
* Correct - sign_up_spec.rb
* Incorrect - sign_up.rb

Always pass 'js: true' parameter to the feature specs because otherwise, the test will fail.

Example:

```ruby
feature "Sign Up Page", js: true do
```

### JavaScript Guidelines
* Write Javascript not CoffeeScript.
* Keep jshint errors down to 0.
* Each line of code should be no longer than 80 characters. If it goes over, then break into next line.
* Whitespaces are forbidden. Get rid of them.
* TDD everything. Feature is not to be considered complete unless there's a test covering it.
* Always run specs before committing and pushing.