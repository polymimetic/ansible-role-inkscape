# Ansible Role: Inkscape

[![Build Status](https://img.shields.io/travis/polymimetic/ansible-role-inkscape.svg?style=flat-square)](https://travis-ci.org/polymimetic/ansible-role-inkscape)
[![Release](https://img.shields.io/github/tag/polymimetic/ansible-role-inkscape.svg?style=flat-square)](https://github.com/polymimetic/ansible-role-inkscape/releases)
[![License: MIT](https://img.shields.io/badge/license-MIT%20License-brightgreen.svg?style=flat-square)](https://opensource.org/licenses/MIT)
[![Ansible Galaxy](https://img.shields.io/badge/galaxy-polymimetic.inkscape-blue.svg?style=flat-square)](https://galaxy.ansible.com/polymimetic/inkscape/)

Installs [Inkscape](https://inkscape.org/) image editing software.

## Requirements

No requirements.

## Dependencies

No dependencies.

## Role Variables

Available variables are listed below, along with default values (see `defaults/main.yml`):

    sample_variable: []

This is an example of a sample variable default.

## Example Playbook

To run the role, include it as follows:

    - hosts: all
      roles:
         - { role: polymimetic.inkscape, x: 42 }

## Credits

This role takes inspiration from the following Ansible roles:

- [geerlingguy.git](https://github.com/geerlingguy/ansible-role-git)

## License

This software package is licensed under the [MIT License](https://opensource.org/licenses/MIT). See the [LICENSE](./LICENSE) file for details.

## Author Information

This role was created in 2017 by [Polymimetic](https://github.com/polymimetic).

* ansible-role-inkscape generated using [ansible-role-skeleton](https://github.com/polymimetic/ansible-role-skeleton)