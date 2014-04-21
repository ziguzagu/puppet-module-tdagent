class td_agent::install (
  $gpgcheck = '1'
) {
  yumrepo { 'treasuredata':
    baseurl  => 'http://packages.treasure-data.com/redhat/$basearch/',
    descr    => 'TreasureData',
    enabled  => 1,
    gpgcheck => $gpgcheck,
  }

  file { "/etc/pki/rpm-gpg/RPM-GPG-KEY-td-agent":
    ensure => present,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/td_agent/RPM-GPG-KEY-td-agent',
  }

  td_agent::rpm_gpg_key{ "td-agent":
    path    => '/etc/pki/rpm-gpg/RPM-GPG-KEY-td-agent',
    before  => Yumrepo['treasuredata'],
  }

  package { 'td-agent':
    ensure  => 'installed',
    require => Yumrepo['treasuredata'],
  }
}
