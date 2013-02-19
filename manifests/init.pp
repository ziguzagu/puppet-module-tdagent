class td-agent {
  package { 'td-agent':
    ensure  => 'installed',
  }

  file { [ '/etc/td-agent', '/etc/td-agent/conf.d', '/etc/td-agent/plugin' ]:
    ensure  => 'directory',
    owner   => 'root',
    group   => 'root',
    mode    => 0755,
  }
  file { '/etc/td-agent/td-agent.conf':
    ensure  => 'file',
    owner   => 'root',
    group   => 'root',
    mode    => 0644,
    source  => 'puppet:///modules/td-agent/td-agent.conf',
  }
}
