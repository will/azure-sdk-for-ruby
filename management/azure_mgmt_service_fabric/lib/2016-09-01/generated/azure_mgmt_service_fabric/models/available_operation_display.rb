# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::Mgmt::V2016_09_01
  module Models
    #
    # Operation supported by ServiceFabric resource provider
    #
    class AvailableOperationDisplay

      include MsRestAzure

      # @return [String] Provider name
      attr_accessor :provider

      # @return [String] Resource name
      attr_accessor :resource

      # @return [String] Operation name
      attr_accessor :operation

      # @return [String] Operation description
      attr_accessor :description


      #
      # Mapper for AvailableOperationDisplay class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AvailableOperationDisplay',
          type: {
            name: 'Composite',
            class_name: 'AvailableOperationDisplay',
            model_properties: {
              provider: {
                client_side_validation: true,
                required: false,
                serialized_name: 'provider',
                type: {
                  name: 'String'
                }
              },
              resource: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resource',
                type: {
                  name: 'String'
                }
              },
              operation: {
                client_side_validation: true,
                required: false,
                serialized_name: 'operation',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
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
