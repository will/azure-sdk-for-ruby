# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10
  module Models
    #
    # Azure Fabric Specific Details.
    #
    class AzureFabricSpecificDetails < FabricSpecificDetails

      include MsRestAzure


      def initialize
        @instanceType = "Azure"
      end

      attr_accessor :instanceType

      # @return [String] The Location for the Azure fabric.
      attr_accessor :location

      # @return [Array<String>] The container Ids for the Azure fabric.
      attr_accessor :container_ids


      #
      # Mapper for AzureFabricSpecificDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Azure',
          type: {
            name: 'Composite',
            class_name: 'AzureFabricSpecificDetails',
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
              },
              container_ids: {
                client_side_validation: true,
                required: false,
                serialized_name: 'containerIds',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
