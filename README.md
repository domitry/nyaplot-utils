# Nyaplot::Utils

Small tools for Nyaplot.

* Exporting module - enable to export plots as SVG file

## Requirement

* Watir
* Nokogiri

## Installation

```shell
$ gem install nyaplot-utils
```

## Usage
### Exporting SVG

```ruby
require 'nyaplot'
require 'nyaplot_utils'
plot = Nyaplot::Plot.new
plot.add(:scatter, [0,1,2], [1,2,3])
plot.export_svg('foo.svg')
plot.export_contents('foo_context.svg')
```

## Contributing

1. Fork it ( http://github.com/<my-github-username>/nyaplot-utils/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
