# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Synapse::Mgmt::V2019_06_01_preview
  module Models
    #
    # The integration runtime authentication keys.
    #
    class IntegrationRuntimeAuthKeys

      include MsRestAzure

      # @return [String] The primary integration runtime authentication key.
      attr_accessor :auth_key1

      # @return [String] The secondary integration runtime authentication key.
      attr_accessor :auth_key2


      #
      # Mapper for IntegrationRuntimeAuthKeys class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IntegrationRuntimeAuthKeys',
          type: {
            name: 'Composite',
            class_name: 'IntegrationRuntimeAuthKeys',
            model_properties: {
              auth_key1: {
                client_side_validation: true,
                required: false,
                serialized_name: 'authKey1',
                type: {
                  name: 'String'
                }
              },
              auth_key2: {
                client_side_validation: true,
                required: false,
                serialized_name: 'authKey2',
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
