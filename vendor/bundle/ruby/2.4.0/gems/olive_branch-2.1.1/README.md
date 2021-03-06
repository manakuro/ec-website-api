# OliveBranch

[![Code Climate](https://codeclimate.com/github/vigetlabs/olive_branch.png)](https://codeclimate.com/github/vigetlabs/olive_branch)
[![Build Status](https://travis-ci.org/vigetlabs/olive_branch.svg?branch=master)](https://travis-ci.org/vigetlabs/olive_branch)

This gem lets your API users pass in and receive camelCased or dash-cased keys, while your Rails app receives and produces snake_cased ones.

## Install

1. Add this to your Gemfile and then `bundle install`:

        gem "olive_branch"

2. Add this to `config/applcation.rb`:

        config.middleware.use OliveBranch::Middleware

## Use

Include a `X-Key-Inflection` header with values of `camel`, `dash`, or `snake` in your JSON API requests.


For more examples, see [our blog post](https://www.viget.com/articles/introducing-olivebranch).

## Optimizations and configuration

`OliveBranch` uses `multi_json`, which will choose the fastest available JSON parsing library and use that. Combined with `Oj` can speed things up and save ~20% rails response time.

The middleware can be initialized with custom camelize/dasherize implementations, so if you know you have a fixed size set of keys, you can save a considerable amount of time by providing a custom camelize that caches like so:

```ruby
class FastCamel
  def self.camel_cache
    @camel_cache ||= {}
  end

  def self.camelize(string)
    camel_cache[string] ||= string.underscore.camelize(:lower)
  end
end


...

    config.middleware.use OliveBranch::Middleware, camelize: FastCamel.method(:camelize)

```

A benchmark of this compared to the standard implementation shows a saving of ~75% rails response times for a complex response payload, or a ~400% improvement, but there is a risk of memory usage ballooning if you have dynamic keys. You can make this method as complex as required, but keep in mind that it will end up being called a _lot_ in a busy app, so it's worth thinking about how to do what you need in the fastest manner possible.

It is also possible to include a custom content type check in the same manner

```ruby
    config.middleware.use OliveBranch::Middleware, content_type_check: -> (content_type) { content_type == "my/content-type" }
```

Finally, a default inflection can be specified so you don't have to include the `X-Key-Inflection` header on every request.

```ruby
    config.middleware.use OliveBranch::Middleware, inflection: 'camel'
```

* * *

OliveBranch is released under the [MIT License](http://www.opensource.org/licenses/MIT). See MIT-LICENSE for further details.

* * *

<a href="http://code.viget.com">
  <img src="http://code.viget.com/github-banner.png" alt="Code At Viget">
</a>

Visit [code.viget.com](http://code.viget.com) to see more projects from [Viget.](https://viget.com)
