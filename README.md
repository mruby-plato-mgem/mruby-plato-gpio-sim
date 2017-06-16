# mruby-plato-gpio-sim   [![Build Status](https://travis-ci.org/mruby-plato/mruby-plato-gpio-sim.svg?branch=master)](https://travis-ci.org/mruby-plato/mruby-plato-gpio-sim)
Plato::GPIO class (General Purpose Input/Output library) for simulator
## install by mrbgems
- add conf.gem line to `build_config.rb`

```ruby
MRuby::Build.new do |conf|

  # ... (snip) ...

  conf.gem :git => 'https://github.com/mruby-plato/mruby-plato-gpio'
  conf.gem :git => 'https://github.com/mruby-plato/mruby-plato-gpio-sim'
end
```

## example
```ruby
io = Plato::GPIO.new(Plato::GPIO::D0)
io.high
```

## License
under the MIT License:
- see LICENSE file
