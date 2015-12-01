require 'facter'

Facter.add('guestid') do
  setcode do
    uuid = Facter.value(:uuid)
    Facter::Core::Execution.exec('curl labapi.bellevuelab.isus.emc.com/vms/#{uuid}/guestid')
  end
end
