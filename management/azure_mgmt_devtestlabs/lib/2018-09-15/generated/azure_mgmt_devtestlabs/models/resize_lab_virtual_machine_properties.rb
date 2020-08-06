# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DevTestLabs::Mgmt::V2018_09_15
  module Models
    #
    # Request body for resizing a virtual machine.
    #
    class ResizeLabVirtualMachineProperties

      include MsRestAzure

      # @return [String] Specifies the size of the virtual machine.
      attr_accessor :size


      #
      # Mapper for ResizeLabVirtualMachineProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ResizeLabVirtualMachineProperties',
          type: {
            name: 'Composite',
            class_name: 'ResizeLabVirtualMachineProperties',
            model_properties: {
              size: {
                client_side_validation: true,
                required: false,
                serialized_name: 'size',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
