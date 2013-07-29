class td-agent::install::yum {
  yumrepo { 'treasuredata':
    baseurl  => 'http://packages.treasure-data.com/redhat/$basearch/',
    descr    => 'TreasureData',
    enabled  => 1,
    gpgcheck => 0
  }

  package { 'td-agent':
    ensure  => 'installed',
    require => Yumrepo['treasuredata'],
  }
}

class td-agent::install {
  case $operatingsystem {
    /^(CentOS|RedHat)$/: { include td-agent::install::yum }
    default:             { notice('Not supported OS. Please install td-agent by hand.') }
  }
}
