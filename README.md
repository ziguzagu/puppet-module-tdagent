puppet-module-tdagent
===============

Manage td-agent and gem packages with fluent-gem by puppet.

Usage
=====

```puppet
include td_agent

## You can install plugins by fluent-gem
package { [ 'fluent-plugin-datacounter', 'fluent-plugin-growthforecast' ]:
  ensure   => 'installed',
  provider => 'fluentgem',
  require  => Package['td_agent'],
}
```
