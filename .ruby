---
source:
- meta
- VERSION
authors:
- name: Thomas Sawyer
  email: transfire@gmail.com
copyrights:
- holder: Rubyworks
  year: '2009'
  license: BSD-2-Clause
requirements:
- name: rubytest
- name: ae
- name: ansi
  version: 1.3+
- name: detroit
  groups:
  - build
  development: true
- name: reap
  groups:
  - build
  development: true
- name: qed
  groups:
  - test
  development: true
dependencies: []
alternatives: []
conflicts: []
repositories:
- uri: git://github.com/proutils/lemon.git
  scm: git
  name: upstream
resources:
  home: http://rubyworks.github.com/lemon
  code: http://github.com/rubyworks/lemon
  bugs: http://github.com/rubyworks/lemon/issues
extra: {}
load_path:
- lib
revision: 0
created: '2009-10-25'
summary: Pucker-strength Unit Testing
title: Lemon
name: lemon
description: ! 'Lemon is a unit testing framework that tightly correlates

  class to test case and method to test unit.'
organization: rubyworks
version: 0.9.1
date: '2012-03-09'
