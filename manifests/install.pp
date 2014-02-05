class td_agent::install {
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
