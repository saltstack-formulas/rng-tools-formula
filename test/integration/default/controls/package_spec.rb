# frozen_string_literal: true

control 'RNG Tools package' do
  title 'should be installed'

  describe package('rng-tools') do
    it { should be_installed }
  end
end
