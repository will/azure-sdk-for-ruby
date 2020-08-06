# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # The key authorization type integration runtime.
    #
    class LinkedIntegrationRuntimeKeyAuthorization < LinkedIntegrationRuntimeType

      include MsRestAzure


      def initialize
        @authorizationType = "Key"
      end

      attr_accessor :authorizationType

      # @return [SecureString] The key used for authorization.
      attr_accessor :key


      #
      # Mapper for LinkedIntegrationRuntimeKeyAuthorization class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Key',
          type: {
            name: 'Composite',
            class_name: 'LinkedIntegrationRuntimeKeyAuthorization',
            model_properties: {
              authorizationType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'authorizationType',
                type: {
                  name: 'String'
                }
              },
              key: {
                client_side_validation: true,
                required: true,
                serialized_name: 'key',
                type: {
                  name: 'Composite',
                  class_name: 'SecureString'
                }
              }
            }
          }
        }
      end
    end
  end
end
