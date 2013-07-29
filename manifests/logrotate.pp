class td-agent::logrotate {
  file { '/etc/logrotate.d/td-agent':
    ensure => 'file',
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/td-agent/logrotate',
  }
}
