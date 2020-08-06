# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2019_12_01
  module Models
    #
    # Parameters for Reimaging Virtual Machine. NOTE: Virtual Machine OS disk
    # will always be reimaged
    #
    class VirtualMachineReimageParameters

      include MsRestAzure

      # @return [Boolean] Specifies whether to reimage temp disk. Default
      # value: false. Note: This temp disk reimage parameter is only supported
      # for VM/VMSS with Ephemeral OS disk.
      attr_accessor :temp_disk


      #
      # Mapper for VirtualMachineReimageParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualMachineReimageParameters',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineReimageParameters',
            model_properties: {
              temp_disk: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tempDisk',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
