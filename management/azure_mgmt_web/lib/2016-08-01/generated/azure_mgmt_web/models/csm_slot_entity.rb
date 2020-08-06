# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2016_08_01
  module Models
    #
    # Deployment slot parameters.
    #
    class CsmSlotEntity

      include MsRestAzure

      # @return [String] Destination deployment slot during swap operation.
      attr_accessor :target_slot

      # @return [Boolean] <code>true</code> to preserve Virtual Network to the
      # slot during swap; otherwise, <code>false</code>.
      attr_accessor :preserve_vnet


      #
      # Mapper for CsmSlotEntity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CsmSlotEntity',
          type: {
            name: 'Composite',
            class_name: 'CsmSlotEntity',
            model_properties: {
              target_slot: {
                client_side_validation: true,
                required: true,
                serialized_name: 'targetSlot',
                type: {
                  name: 'String'
                }
              },
              preserve_vnet: {
                client_side_validation: true,
                required: true,
                serialized_name: 'preserveVnet',
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
