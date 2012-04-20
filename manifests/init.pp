# Install the Cucumber framework for Behaviour Driven Development (BDD).
#
# == Requirements
#
# The "gem" package provider must be working, which means that Ruby and
# RubyGems must be set up before this class can be included.  In order
# to achieve that, the "ruby::gems" class is required.
class cucumber
{
  include ruby::gems

  package { 'cucumber':
    provider => gem,
    ensure   => present,
    require  => Class['ruby::gems']
  }
}
