# @summary This installs docker and resources necessary prior to configuration and service startup
#
# This installs docker and resources necessary prior to configuration and service startup
#
# @example
#   include jenkins_dood::install
class jenkins_dood::install inherits jenkins_dood {
  file { '/opt/jenkins_dood' :
    ensure => 'directory',
    owner  => 'root',
    group  => 'root',
    before => [
      File['/opt/jenkins_dood/plugins.txt'],
      File['/opt/jenkins_dood/Dockerfile'],
    ],
  }

  class { 'docker':
    storage_driver => 'vfs',
    iptables       => true,
  }
}
