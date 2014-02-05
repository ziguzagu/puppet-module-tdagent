class td_agent {
  include td_agent::install
  include td_agent::config
  include td_agent::service
  include td_agent::logrotate

  Class['td_agent::install'] -> Class['td_agent::config'] ~> Class['td_agent::service']
}
