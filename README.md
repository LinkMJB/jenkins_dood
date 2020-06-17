# jenkins_dood

#### Table of Contents

1. [Description](#description)
2. [Setup - The basics of getting started with jenkins_dood](#setup)
    * [Setup requirements](#setup-requirements)
    * [Beginning with jenkins_dood](#beginning-with-jenkins_dood)
3. [Usage - Configuration options and additional functionality](#usage)
4. [Limitations - OS compatibility, etc.](#limitations)
5. [Development - Guide for contributing to the module](#development)

## Description

This module is a quick bootstrap to get Jenkins deployed in a Docker outside of Docker (DooD) configuration. This allows you to run builds using fresh docker containers, via a Jenkins Master that is deployed via Docker itself.

## Setup

### Setup Requirements

For this module to work, you will need the following Puppet modules installed:
* puppetlabs-stdlib
* puppetlabs-docker

### Beginning with jenkins_dood

To use this, you can simply clone this repository and run 'vagrant up' to test it out.
Otherwise, you can install the puppet module from the Puppet Forge, or clone this repo and place it in your Puppet module directory.

## Usage

For usage, please see init.pp in the examples directory

## Limitations

WARNING: The docker-plugin 1.2.0 version is not able to be properly bootstrapped via groovy. To accomplish this properly, we are using 1.1.9 and then upgrading to 1.2.0 after configuration

## Development

Open a PR! Let's collaborate.
