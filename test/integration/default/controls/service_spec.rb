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
      when 'arch'
        'rngd'
      end
    end

  describe service(service) do
    it { should be_enabled }
    it { should be_running }
  end
end
