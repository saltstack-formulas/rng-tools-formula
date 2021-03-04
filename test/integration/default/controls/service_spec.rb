# frozen_string_literal: true

control 'RNG Tools service' do
  title 'should be running and enabled'

  service =
    case platform[:family]
    when 'debian'
      'rng-tools'
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
    if %w[suse].include?(platform[:family])
      # Unable to run the service in a container due to its
      # `ConditionVirtualization` setting
      it { should_not be_running }
    else
      it { should be_running }
    end
  end
end
