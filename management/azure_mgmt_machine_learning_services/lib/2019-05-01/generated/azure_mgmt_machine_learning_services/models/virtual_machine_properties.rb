# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MachineLearningServices::Mgmt::V2019_05_01
  module Models
    #
    # Model object.
    #
    #
    class VirtualMachineProperties

      include MsRestAzure

      # @return [String] Virtual Machine size
      attr_accessor :virtual_machine_size

      # @return [Integer] Port open for ssh connections.
      attr_accessor :ssh_port

      # @return [String] Public IP address of the virtual machine.
      attr_accessor :address

      # @return [VirtualMachineSshCredentials] Admin credentials for virtual
      # machine
      attr_accessor :administrator_account


      #
      # Mapper for VirtualMachineProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualMachine_properties',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineProperties',
            model_properties: {
              virtual_machine_size: {
                client_side_validation: true,
                required: false,
                serialized_name: 'virtualMachineSize',
                type: {
                  name: 'String'
                }
              },
              ssh_port: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sshPort',
                type: {
                  name: 'Number'
                }
              },
              address: {
                client_side_validation: true,
                required: false,
                serialized_name: 'address',
                type: {
                  name: 'String'
                }
              },
              administrator_account: {
                client_side_validation: true,
                required: false,
                serialized_name: 'administratorAccount',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualMachineSshCredentials'
                }
              }
            }
          }
        }
      end
    end
  end
end
