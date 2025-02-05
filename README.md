# Survey Bldr

## Prerequisites

Ruby: `>= 3.3`
Node: `20.18.0`

## Local Development

### Database
This application is configured to use PostgreSQL, connecting on localhost, port 5432. 
If you want to connect to a different database or connect on a different host/port, you'll need to make the necessary 
adjustments in `config/database.yml`.
### Environment Variables
Create a new file `config/application.yml` with the following development environment variables:
```
DB_USER: your_db_user
DB_USER_PASSWORD: your_db_user_password
```
### Initial Setup

```
bin/setup
```

### Running the Development Server

```
bin/dev
```

### Seed Data

Running `bin/setup` will run the following tasks to create necessary database records:

- Use `db/seeds.rb` to create records that need to exist in all environments.
- Use the `dev:prime` rake task (found in `lib/tasks/dev.rake`) to create records that only need to exist in development.

## Testing

Uses [RSpec][] and [RSpec Rails][] in favor of the [default test suite][].

The test suite can be run with `bin/rails spec`.

Configuration can be found in the following files:

```
spec/rails_helper.rb
spec/spec_helper.rb
spec/support/action_mailer.rb
spec/support/driver.rb
spec/support/i18n.rb
spec/support/should_matchers.rb
```

- Uses [action_dispatch-testing-integration-capybara][] to introduce Capybara assertions into Request specs.
- Uses [should-matchers][] for simple one-liner tests for common Rails functionality.
- Uses [webmock][] for stubbing and setting expectations on HTTP requests in Ruby.

[RSpec]: http://rspec.info
[RSpec Rails]: https://github.com/rspec/rspec-rails
[default test suite]: https://guides.rubyonrails.org/testing.html
[action_dispatch-testing-integration-capybara]: https://github.com/thoughtbot/action_dispatch-testing-integration-capybara
[should-matchers]: https://github.com/thoughtbot/shoulda-matchers
[webmock]: https://github.com/bblimke/webmock

### Factories

Uses [FactoryBot][] as an alternative to [Fixtures][] to help you define
dummy and test data for your test suite. The `create`, `build`, and
`build_stubbed` class methods are directly available to all tests.

Place FactoryBot definitions in `spec/factories.rb`, at least until it
grows unwieldy. This helps reduce confusion around circular dependencies and
makes it easy to jump between definitions.

[FactoryBot]: https://github.com/thoughtbot/factory_bot
[Fixtures]: https://guides.rubyonrails.org/testing.html#the-low-down-on-fixtures

## Mailers

[Intercept][] emails in non-production environments by setting `INTERCEPTOR_ADDRESSES`.

```sh
INTERCEPTOR_ADDRESSES="user_1@example.com,user_2@example.com" bin/rails s
```

Configuration can be found at `config/initializers/email_interceptor.rb`.

Interceptor can be found at `app/mailers/email_interceptor.rb`.

[Intercept]: https://guides.rubyonrails.org/action_mailer_basics.html#intercepting-emails

## Jobs

Uses [Sidekiq][] for [background job][] processing.

Configures the `test` environment to use the [inline][] adapter.

[Sidekiq]: https://github.com/sidekiq/sidekiq
[background job]: https://guides.rubyonrails.org/active_job_basics.html
[inline]: https://api.rubyonrails.org/classes/ActiveJob/QueueAdapters/InlineAdapter.html

## Layout and Assets

### Stylesheets

- Uses [Sass] via [dartsass-rails][].

Adds the following stylesheet structure.

```
app/assets/stylesheets/base.css
app/assets/stylesheets/components.css
app/assets/stylesheets/utilities.css
```

[Sass]: https://sass-lang.com/
[dartsass-rails]: https://github.com/rails/dartsass-rails

### Templates

- Uses [Haml] templates instead of ERB.


[Haml]: https://haml.info/


### Layout

- A [partial][] for [flash messages][] is located in `app/views/application/_flashes.html.haml`.
- Sets [lang][] attribute on `<html>` element to `en` via `I18n.local`.
- Dynamically sets `<title>` via the [title][] gem.
- Disables Turbo's [Prefetch][] in an effort to reduce unnecessary network requests.

[partial]: https://guides.rubyonrails.org/layouts_and_rendering.html#using-partials
[flash messages]: https://guides.rubyonrails.org/action_controller_overview.html#the-flash
[lang]: https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/lang
[title]: https://github.com/calebhearth/title
[Prefetch]: https://turbo.hotwired.dev/handbook/drive#prefetching-links-on-hover

