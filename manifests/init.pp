class td-agent {
  include td-agent::install
  include td-agent::config
  include td-agent::service
}
