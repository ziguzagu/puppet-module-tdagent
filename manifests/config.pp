class tdagent::config {
  file { '/etc/td-agent/conf.d':
    ensure  => 'directory',
    owner   => 'root',
    group   => 'root',
    mode    => '0755',
    recurse => false,
    require => Class['td-agent::install'],
  }

  file { '/etc/td-agent/td-agent.conf':
    ensure  => 'file',
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    source  => 'puppet:///modules/td-agent/td-agent.conf',
    require => Class['td-agent::install'],
    notify  => Class['td-agent::service'],
  }
}
