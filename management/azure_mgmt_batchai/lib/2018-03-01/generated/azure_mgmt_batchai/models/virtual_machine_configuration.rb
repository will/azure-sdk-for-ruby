# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::BatchAI::Mgmt::V2018_03_01
  module Models
    #
    # Settings for OS image.
    #
    class VirtualMachineConfiguration

      include MsRestAzure

      # @return [ImageReference] Reference to OS image.
      attr_accessor :image_reference


      #
      # Mapper for VirtualMachineConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualMachineConfiguration',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineConfiguration',
            model_properties: {
              image_reference: {
                client_side_validation: true,
                required: false,
                serialized_name: 'imageReference',
                type: {
                  name: 'Composite',
                  class_name: 'ImageReference'
                }
              }
            }
          }
        }
      end
    end
  end
end
