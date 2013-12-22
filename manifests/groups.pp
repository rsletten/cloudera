# Class: cloudera
#
# This module manages cloudera
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#

group { 'hue':
  ensure => present,
  gid    => '486'
}

group { 'hbase':
  ensure => present,
  gid    => '487'
}

group { 'oozie':
  ensure => present,
  gid    => '488'
}

group { 'sqoop2':
  ensure => present,
  gid    => '489'
}

group { 'hive':
  ensure => present,
  gid    => '490'
}

group { 'yarn':
  ensure => present,
  gid    => '491'
}

group { 'sqoop':
  ensure => present,
  gid    => '492'
}

group { 'mapred':
  ensure => present,
  gid    => '493'
}

group { 'httpfs':
  ensure => present,
  gid    => '494'
}

group { 'zookeeper':
  ensure => present,
  gid    => '495'
}

group { 'hdfs':
  ensure => present,
  gid    => '496'
}

group { 'flume':
  ensure => present,
  gid    => '497'
}

group { 'cloudera-scm':
  ensure => present,
  gid    => '498'
}

