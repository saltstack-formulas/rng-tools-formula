# frozen_string_literal: true

package_name =
  case system.platform[:finger]
  when 'ubuntu-22.04'
    'rng-tools5'
  else
    'rng-tools'
  end

control 'RNG Tools package' do
  title 'should be installed'

  describe package(package_name) do
    it { should be_installed }
  end
end
