# Install the Cucumber framework for Behaviour Driven Development (BDD).
#
# == Requirements
#
# The "gem" package provider must be working, which means that Ruby and
# Rubygems must be set up before this class can be included.  In order
# to achieve that, the "ruby::gems" class is included and depended upon.
#
class cucumber
{
	include ruby::gems

	package { gherkin:
		provider => gem,
		ensure => installed,
		require => Class['ruby::gems']
	}

	package { cucumber:
		provider => gem,
		ensure => installed,
		require => Package[gherkin]
	}
}
