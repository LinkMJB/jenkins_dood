# @author Matthew Bates
# @summary Returns the gid of the docker group
# @version 0.1.0

redhat_check_cmd = "stat --printf='%g' /var/run/docker.sock"
Facter.add('jenkins_dood_gid') do
  confine :osfamily => "RedHat"
  setcode do
    docker_gid = Facter::Core::Execution.execute(redhat_check_cmd)
    docker_gid
  end
end
