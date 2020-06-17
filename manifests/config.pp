# @summary Configures Jenkins using the parameters that were provided
#
# Configures Jenkins using the parameters that were provided
class jenkins_dood::config inherits jenkins_dood {
  file { '/opt/jenkins_dood/plugins.txt' :
    ensure  => 'file',
    mode    => '0644',
    owner   => 'root',
    group   => 'root',
    content => template('jenkins_dood/plugins.txt.erb')
  }

  file { '/opt/jenkins_dood/Dockerfile' :
    ensure  => 'file',
    mode    => '0644',
    owner   => 'root',
    group   => 'root',
    content => template('jenkins_dood/Dockerfile.erb')
  }

  file { '/opt/jenkins_dood/docker-plugin.groovy' :
    ensure  => 'file',
    mode    => '0644',
    owner   => 'root',
    group   => 'root',
    content => template('jenkins_dood/docker-plugin.groovy.erb')
  }

  file { '/opt/jenkins_dood/jenkins_wrapper.sh' :
    ensure  => 'file',
    mode    => '0755',
    owner   => 'root',
    group   => 'root',
    content => template('jenkins_dood/jenkins_wrapper.sh.erb')
  }

  file { '/opt/jenkins_dood/upgrade_docker_plugin.sh' :
    ensure  => 'file',
    mode    => '0755',
    owner   => 'root',
    group   => 'root',
    content => template('jenkins_dood/upgrade_docker_plugin.sh.erb')
  }
}
