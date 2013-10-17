class td-agent::install {
  apt::source { 'treasuredata':
    location => 'http://packages.treasure-data.com/precise/',
    release  => 'precise',
    repos    => 'contrib',
  }

  package { 'td-agent':
    ensure  => 'installed',
    require => Apt::Source['treasuredata'],
  }
}
