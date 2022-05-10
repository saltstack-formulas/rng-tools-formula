# frozen_string_literal: true

control 'RNG Tools service' do
  title 'should be running and enabled'

  service =
    case platform[:family]
    when 'debian'
      case system.platform[:finger]
      when 'ubuntu-22.04'
        'rngd'
      else
        'rng-tools'
      end
    when 'redhat', 'fedora', 'suse'
      'rngd'
    else
      case platform[:name]
      when 'arch', 'gentoo'
        'rngd'
      end
    end

  describe service(service) do
    it { should be_installed }
    it { should be_enabled }
    it { should be_running }
  end
end
