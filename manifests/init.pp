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
  Class['clouderagroups'] ->
  Class['clouderausers'] ->
}
