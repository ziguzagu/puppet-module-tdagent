puppet-module-tdagent
===============

Manage td-agent and gem packages with fluent-gem by puppet.

Usage
=====

```
include td-agent

package { [ 'fluent-plugin-datacounter', 'fluent-plugin-growthforecast' ]:
  ensure   => 'installed',
  provider => 'fluentgem',
  require  => Package['td-agent'],
}
```
