# @summary Manages the jenkins_dood docker container startup
#
# Manages the jenkins_dood docker container startup
class jenkins_dood::service inherits jenkins_dood {
  ### Can't use this, because needed --build-arg option
  #docker::image { 'jenkins_dood' :
    #docker_file => '/opt/jenkins_dood/Dockerfile',
    #docker_dir  => '/opt/jenkins_dood',
    #subscribe   => File['/opt/jenkins_dood/Dockerfile'],
  #}

  exec { 'docker_build_jenkins_dood' :
    cwd         => '/opt/jenkins_dood',
    path        => '/bin:/usr/bin',
    command     => 'docker build -t jenkins_dood:latest --build-arg DOCKER_GID=$(stat --printf="%g" /var/run/docker.sock) .',
    refreshonly => true,
    subscribe   => File['/opt/jenkins_dood/Dockerfile'],
  }

  docker::run { 'run_jenkins_dood' :
    image     => 'jenkins_dood',
    ports     => ["$listen_port_http:$listen_port_http"],
    volumes   => ['jenkins_home:/var/jenkins_home', 'jenkins_ssl:/etc/ssl/certs/java', '/var/run/docker.sock:/var/run/docker.sock'],
    subscribe => File['/opt/jenkins_dood/Dockerfile'],
    env       => ['PLUGINS_FORCE_UPGRADE=true', 'OVERRIDE_MANUAL=true', 'TRY_UPGRADE_IF_NO_MARKER=true'],
  }
}
