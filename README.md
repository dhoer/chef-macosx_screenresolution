# Mac OS X Screen Resolution Cookbook

[![Cookbook Version](http://img.shields.io/cookbook/v/macosx_screenresolution.svg?style=flat-square)][cookbook]
[![Build Status](http://img.shields.io/travis/dhoer/chef-macosx_screenresolution.svg?style=flat-square)][travis]
[![GitHub Issues](http://img.shields.io/github/issues/dhoer/chef-macosx_screenresolution.svg?style=flat-square)]
[github]

[cookbook]: https://supermarket.chef.io/cookbooks/macosx_screenresolution
[travis]: https://travis-ci.org/dhoer/chef-macosx_screenresolution
[github]: https://github.com/dhoer/chef-macosx_screenresolution/issues

Sets screen resolution on Mac OS X using John Ford's screenresolution tool (https://github.com/jhford/screenresolution).  

Note that on VMware, the screen resolutions available are directly related to the amount of VRAM allocated to the box.

## Requirements

- User must be logged into GUI before calling default recipe (see 
  [macosx_gui_login](https://supermarket.chef.io/cookbooks/macosx_gui_login) cookbook)

## Platforms

- Mac OS X 10.6 or higher

## Dependencies

- dmg

## Usage

Include default recipe in run list or in another cookbook to set the screen resolution. 

### Attributes

- `node['macosx_screenresolution']['dimensions']` -   Screen width, height, depth and refresh rate. 
Default is `1024x768x32@0`.

### Examples

Set screen resolution to `1024x768x32@0` (default)

```ruby
include_recipe 'macosx_screenresolution::default'
```

Set screen resolution to `1366x768x32`

```ruby
node.set['macosx_screenresolution']['dimensions'] = '1366x768x32@0'

include_recipe 'macosx_screenresolution::default'
```

## Getting Help

- Ask specific questions on [Stack Overflow](http://stackoverflow.com/questions/tagged/chef-macosx_screenresolution).
- Report bugs and discuss potential features in 
[Github issues](https://github.com/dhoer/chef-macosx_screenresolution/issues).

## Contributing

Please refer to [CONTRIBUTING](https://github.com/dhoer/chef-macosx_screenresolution/blob/master/CONTRIBUTING.md).

## License

MIT - see the accompanying [LICENSE](https://github.com/dhoer/chef-macosx_screenresolution/blob/master/LICENSE.md) 
file for details.
