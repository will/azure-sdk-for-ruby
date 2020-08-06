# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10
  module Models
    #
    # Fabric provider specific settings.
    #
    class AzureFabricCreationInput < FabricSpecificCreationInput

      include MsRestAzure


      def initialize
        @instanceType = "Azure"
      end

      attr_accessor :instanceType

      # @return [String] The Location.
      attr_accessor :location


      #
      # Mapper for AzureFabricCreationInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Azure',
          type: {
            name: 'Composite',
            class_name: 'AzureFabricCreationInput',
            model_properties: {
              instanceType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'instanceType',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
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
