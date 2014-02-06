class td_agent {
  $home_path    = '/etc/td-agent'
  $config_path  = '/etc/td-agent/td-agent.conf'
  $confdir_path = '/etc/td-agent/conf.d'
  $plugin_path  = '/etc/td-agent/plugin'
  $tmp_path     = '/var/tmp/td-agent'
  $log_path     = '/var/log/td-agent'

  include td_agent::install
  include td_agent::config
  include td_agent::service
  include td_agent::logrotate

  Class['td_agent::install'] -> Class['td_agent::config'] ~> Class['td_agent::service']
}
