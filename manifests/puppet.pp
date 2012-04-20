# Puppet support for Cucumber (cucumber-puppet)
#
# Homepage: http://projects.puppetlabs.com/projects/cucumber-puppet/wiki
#
# == Requirements
#
# The "gem" package provider must be working, which means that Ruby and
# RubyGems must be set up before this class can be included.  In order
# to achieve that, the "ruby::gems" class is required.
class cucumber::puppet
{
  include ruby::gems

  package { 'cucumber-puppet':
    provider => gem,
    ensure   => present,
    require  => Class['ruby::gems']
  }
}
