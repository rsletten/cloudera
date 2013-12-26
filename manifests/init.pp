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
class cloudera {
}

class cloudera::groups {

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

}

class cloudera::users { 

  user { 'hue':
    ensure     => present,
    uid        => '486',
    gid        => '486',
    shell      => '/bin/false',
    home       => '/usr/share/hue',
    managehome => true,
    comment    => 'Hue'
  }

  user { 'hbase':
    ensure     => present,
    uid        => '487',
    gid        => '487',
    shell      => '/bin/false',
    home       => '/var/run/hue',
    managehome => true,
    comment    => 'HBase'
  }

  user { 'oozie':
    ensure     => present,
    uid        => '488',
    gid        => '488',
    shell      => '/bin/false',
    home       => '/var/lib/oozie',
    managehome => true,
    comment    => 'Oozie'
  }

  user { 'sqoop2':
    ensure     => present,
    uid        => '489',
    gid        => '489',
    shell      => '/sbin/nologin',
    home       => '/var/run/sqoop2',
    managehome => true,
    comment    => 'Sqoop 2 User'
  }

  user { 'hive':
    ensure     => present,
    uid        => '490',
    gid        => '490',
    shell      => '/bin/false',
    home       => '/var/lib/hive',
    managehome => true,
    comment    => 'Hive'
  }

  user { 'yarn':
    ensure     => present,
    uid        => '491',
    gid        => '491',
    shell      => '/bin/bash',
    home       => '/var/lib/hadoop-yarn',
    managehome => true,
    comment    => 'Hadoop Yarn'
  }

  user { 'sqoop':
    ensure     => present,
    uid        => '492',
    gid        => '492',
    shell      => '/bin/false',
    home       => '/var/lib/sqoop',
    managehome => true,
    comment    => 'Sqoop'
  }

  user { 'mapred':
    ensure     => present,
    uid        => '493',
    gid        => '493',
    shell      => '/bin/bash',
    home       => '/var/lib/hadoop-mapreduce',
    managehome => true,
    comment    => 'Hadoop MapReduce'
  }

  user { 'httpfs':
    ensure     => present,
    uid        => '494',
    gid        => '494',
    shell      => '/bin/bash',
    home       => '/var/run/hadoop-httpfs',
    managehome => true,
    comment    => 'Hadoop HTTPFS'
  }

  user { 'zookeeper':
    ensure     => present,
    uid        => '495',
    gid        => '495',
    shell      => '/bin/false',
    home       => '/var/run/zookeeper',
    managehome => true,
    comment    => 'Zookeeper'
  }

  user { 'hdfs':
    ensure     => present,
    uid        => '496',
    gid        => '496',
    shell      => '/bin/bash',
    home       => '/var/lib/hadoop-hdfs',
    managehome => true,
    comment    => 'Hadoop HDFS'
  }

  user { 'flume':
    ensure     => present,
    uid        => '497',
    gid        => '497',
    shell      => '/bin/false',
    home       => '/var/lib/flume-ng',
    managehome => true,
    comment    => 'Flume'
  }

  user { 'cloudera-scm':
    ensure     => present,
    uid        => '498',
    gid        => '498',
    shell      => '/sbin/nologin',
    home       => '/var/run/cloudera-scm-server',
    managehome => true,
    comment    => 'Cloudera Manager'
  }

}

