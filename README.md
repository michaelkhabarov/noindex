# Noindex

Noindex provides a simple way for Ruby on Rails applications to tell search engines what to index on your site and what to not.
It inserts `<meta name="robots" content="noindex">` at necessary pages.

## Installation

Add this line to your application's Gemfile:

    gem 'noindex'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install noindex

## Usage

### In your layout

Add `noindex_meta_tag` helper to the `head` element of your layout. HAML example:

```haml
html
  head
    = noindex_meta_tag
```

It will generate following *meta_tag* element (for *new* and *edit* actions by default):

```html
<meta content="noindex" name="robots" />
```

### In your controllers

*Noindex* simply adds a method `noindex` to controllers. This method is just a *before_filter* so it receives same options as a Rails *before_filter* method.

By default *Noindex* filters *new* and *edit* actions. You can customise this by calling `noindex` in any controller. For example to hide only *index* and *edit* actions in *UsersController* from search engines your can do:

```ruby
class UsersController < InheritedResources::Base
  noindex only: [ :index, :edit ]
  ...
end
```

If you want some actions to be searchable you can call `skip_noindex` method (that is just a *skip_before_filter* alias).

```ruby
class UsersController < InheritedResources::Base
  skip_noindex only: [ :new ]
  ...
end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
