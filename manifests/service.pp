class td_agent::service {
  service { 'td-agent':
    ensure     => 'running',
    enable     => true,
    hasrestart => true,
    restart    => 'service td-agent reload',
    require    => Class['td_agent::install', 'td_agent::config'],
  }
}
