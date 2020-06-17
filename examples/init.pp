node default {
  include jenkins_dood
}

node default_noplugins {
  class { 'jenkins_dood':
    jenkins_plugins => [],
  }
}

node 'default_params' {
  class { 'jenkins_dood':
    jenkins_version  => '2.222.4-lts',
    listen_port_http => '8000',
    jenkins_opts     => '',
    jenkins_plugins  => [
      'trilead-api:1.0.8',
      'cloudbees-folder:6.13',
      'antisamy-markup-formatter:2.0',
      'jdk-tool:1.4',
      'structs:1.20',
      'workflow-step-api:2.22',
      'token-macro:2.12',
      'build-timeout:1.20',
      'credentials:2.3.8',
      'plain-credentials:1.7',
      'ssh-credentials:1.18.1',
      'credentials-binding:1.23',
      'scm-api:2.6.3',
      'workflow-api:2.40',
      'timestamper:1.11.3',
      'script-security:1.73',
      'workflow-support:3.4',
      'durable-task:1.34',
      'workflow-durable-task-step:2.35',
      'junit:1.29',
      'command-launcher:1.4',
      'bouncycastle-api:2.18',
      'matrix-project:1.14',
      'resource-disposer:0.14',
      'ws-cleanup:0.38',
      'ant:1.11',
      'ace-editor:1.1',
      'jquery-detached:1.2.1',
      'workflow-scm-step:2.11',
      'workflow-cps:2.80',
      'workflow-job:2.39',
      'apache-httpcomponents-client-4-api:4.5.10-2.0',
      'display-url-api:2.3.2',
      'mailer:1.32',
      'workflow-basic-steps:2.20',
      'gradle:1.36',
      'pipeline-milestone-step:1.3.1',
      'jackson2-api:2.11.0',
      'pipeline-input-step:2.11',
      'pipeline-stage-step:2.3',
      'pipeline-graph-analysis:1.10',
      'pipeline-rest-api:2.13',
      'handlebars:1.1.1',
      'momentjs:1.1.1',
      'pipeline-stage-view:2.13',
      'pipeline-build-step:2.12',
      'pipeline-model-api:1.7.0',
      'pipeline-model-extensions:1.7.0',
      'jsch:0.1.55.2',
      'git-client:3.2.1',
      'git-server:1.9',
      'workflow-cps-global-lib:2.16',
      'branch-api:2.5.6',
      'workflow-multibranch:2.21',
      'pipeline-stage-tags-metadata:1.7.0',
      'pipeline-model-definition:1.7.0',
      'lockable-resources:2.8',
      'workflow-aggregator:2.6',
      'github-api:1.112.0',
      'git:4.2.2',
      'github:1.30.0',
      'github-branch-source:2.8.0',
      'pipeline-github-lib:1.0',
      'mapdb-api:1.0.9.0',
      'subversion:2.13.1',
      'ssh-slaves:1.31.2',
      'matrix-auth:2.6.1',
      'pam-auth:1.6',
      'ldap:1.24',
      'email-ext:2.69',
    ],
  }
}
