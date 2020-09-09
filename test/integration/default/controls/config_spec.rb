# frozen_string_literal: true

control 'RNG Tools configuration' do
  title 'should match desired lines'

  describe file('/etc/default/rng-tools') do
    # Default config
    its('content') { should include 'HRNGDEVICE=/dev/urandom' }
  end
end
