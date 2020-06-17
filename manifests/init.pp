# @summary Initializes jenkins_dood module
#
# Initializes jenkins_dood module
#
# @example
#   include jenkins_dood
class jenkins_dood (
  String $jenkins_version = $jenkins_dood::params::jenkins_version,
  Integer $listen_port_http = $jenkins_dood::params::listen_port_http,
  Optional[String] $jenkins_opts = $jenkins_dood::params::jenkins_opts,
  Optional[Array] $jenkins_plugins = $jenkins_dood::params::jenkins_plugins,
) inherits ::jenkins_dood::params {
  case $::osfamily {
    /(RedHat)/: {
      include stdlib
      contain jenkins_dood::install
      contain jenkins_dood::config
      contain jenkins_dood::service
      Class['jenkins_dood::install'] -> Class['jenkins_dood::config'] ~> Class['jenkins_dood::service']
    }
    default: {
      warn('Operating system $::osfamily not supported!')
    }
  }
}
