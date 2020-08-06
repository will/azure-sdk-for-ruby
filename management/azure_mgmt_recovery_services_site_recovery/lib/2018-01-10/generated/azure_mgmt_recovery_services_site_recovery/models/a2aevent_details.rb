# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10
  module Models
    #
    # Model class for event details of a A2A event.
    #
    class A2AEventDetails < EventProviderSpecificDetails

      include MsRestAzure


      def initialize
        @instanceType = "A2A"
      end

      attr_accessor :instanceType

      # @return [String] The protected item arm name.
      attr_accessor :protected_item_name

      # @return [String] The azure vm arm id.
      attr_accessor :fabric_object_id

      # @return [String] Fabric arm name.
      attr_accessor :fabric_name

      # @return [String] The fabric location.
      attr_accessor :fabric_location

      # @return [String] Remote fabric arm name.
      attr_accessor :remote_fabric_name

      # @return [String] Remote fabric location.
      attr_accessor :remote_fabric_location


      #
      # Mapper for A2AEventDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'A2A',
          type: {
            name: 'Composite',
            class_name: 'A2AEventDetails',
            model_properties: {
              instanceType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'instanceType',
                type: {
                  name: 'String'
                }
              },
              protected_item_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'protectedItemName',
                type: {
                  name: 'String'
                }
              },
              fabric_object_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'fabricObjectId',
                type: {
                  name: 'String'
                }
              },
              fabric_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'fabricName',
                type: {
                  name: 'String'
                }
              },
              fabric_location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'fabricLocation',
                type: {
                  name: 'String'
                }
              },
              remote_fabric_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'remoteFabricName',
                type: {
                  name: 'String'
                }
              },
              remote_fabric_location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'remoteFabricLocation',
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
