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

class hadoopgroups::virtual {
  @group { 'hue': gid => '1000', ensure => present }
  @group { 'hbase': gid => '1001', ensure => present }
  @group { 'oozie': gid => '1002', ensure => present }
  @group { 'sqoop2': gid => '1003', ensure => present }
  @group { 'hive': gid => '1004', ensure => present }
  @group { 'yarn': gid => '1005', ensure => present }
  @group { 'sqoop': gid => '1006', ensure => present }
  @group { 'mapred': gid => '1007', ensure => present }
  @group { 'httpfs': gid => '1008', ensure => present }
  @group { 'zookeeper': gid => '1009', ensure => present }
  @group { 'hdfs': gid => '1010', ensure => present }
  @group { 'flume': gid => '1011', ensure => present }
}

class hadoopusers::virtual {
  @user { 'hue': uid => '1000', gid => '1000', shell => '/bin/false', home => '/usr/share/hue', managehome => true, comment => 'Hue', ensure => present }
  @user { 'hbase': uid => '1001', gid => '1001', shell => '/bin/false', home => '/var/run/hue', managehome => true, comment => 'HBase', ensure => present }
  @user { 'oozie': uid => '1002', gid => '1002', shell => '/sbin/nologin', home => '/var/lib/oozie', managehome => true, comment => 'Oozie', ensure => present }
  @user { 'sqoop2': uid => '1003', gid => '1003', shell => '/bin/false', home => '/var/run/sqoop2', managehome => true, comment => 'Sqoop 2 User', ensure => present }
  @user { 'hive': uid => '1004', gid => '1004', shell => '/bin/false', home => '/var/lib/hive', managehome => true, comment => 'Hive', ensure => present }
  @user { 'yarn': uid => '1005', gid => '1005', shell => '/bin/bash', home => '/var/lib/hadoop-yarn', managehome => true, comment => 'Hadoop Yarn', ensure => present }
  @user { 'sqoop': uid => '1006', gid => '1006', shell => '/bin/false', home => '/var/lib/sqoop', managehome => true, comment => 'Sqoop', ensure => present }
  @user { 'mapred': uid => '1007', gid => '1007', shell => '/bin/bash', home => '/var/lib/hadoop-mapreduce', managehome => true, comment => 'Hadoop MapReduce', ensure => present }
  @user { 'httpfs': uid => '1008', gid => '1008', shell => '/bin/bash', home => '/var/run/hadoop-httpfs', managehome => true, comment => 'Hadoop HTTPFS', ensure => present }
  @user { 'zookeeper': uid => '1009', gid => '1009', shell => '/bin/false', home => '/var/run/zookeeper', managehome => true, comment => 'Zookeeper', ensure => present }
  @user { 'hdfs': uid => '1010', gid => '1010', shell => '/bin/bash', home => '/var/lib/hadoop-hdfs', managehome => true, comment => 'Hadoop HDFS', ensure => present }
  @user { 'flume': uid => '1011', gid => '1011', shell => '/bin/false', home => '/var/lib/flume-ng', managehome => true, comment => 'Flume', ensure => present }
}

class hadoopaccounts {
  realize(Group['hue'])
  realize(Group['hbase'])
  realize(Group['oozie'])
  realize(Group['sqoop2'])
  realize(Group['hive'])
  realize(Group['yarn'])
  realize(Group['sqoop'])
  realize(Group['mapred'])
  realize(Group['httpfs'])
  realize(Group['zookeeper'])
  realize(Group['hdfs'])
  realize(Group['flume'])
  realize(User['hue'])
  realize(User['hbase'])
  realize(User['oozie'])
  realize(User['sqoop2'])
  realize(User['hive'])
  realize(User['yarn'])
  realize(User['sqoop'])
  realize(User['mapred'])
  realize(User['httpfs'])
  realize(User['zookeeper'])
  realize(User['hdfs'])
  realize(User['flume'])
  } 
  
class cloudera::sysctl {

  sysctl { 'vm.swappiness': value => '0' }
  sysctl { 'net.ipv6.conf.all.disable_ipv6': value => '1' }
  sysctl { 'net.ipv6.conf.default.disable_ipv6': value => '1' }
}

class cloudera::limits {

  limits::limits { 'hdfs_nofile':
    ensure     => present,
    user       => 'hdfs',
    limit_type => 'nofile',
    both       => 32768,
    }

  limits::limits { 'hbase_nofile':
    ensure     => present,
    user       => 'hbase',
    limit_type => 'nofile',
    both       => 32768,
    }

  limits::limits { 'hdfs_noproc':
    ensure     => present,
    user       => 'hdfs',
    limit_type => 'nproc',
    both       => 32768,
    }

  limits::limits { 'hbase_noproc':
    ensure     => present,
    user       => 'hbase',
    limit_type => 'nproc',
    both       => 32768,
    }

  limits::limits { 'root_nofile':
    ensure     => present,
    user       => 'root',
    limit_type => 'nofile',
    both       => 32768,
    }

class { '::ntp':
  servers  => [ '0.centos.pool.ntp.org', '1.centos.pool.ntp.org', '2.centos.pool.ntp.org' ],
  restrict => ['127.0.0.1'],
}
