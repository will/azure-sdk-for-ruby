# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Logic::Mgmt::V2016_06_01
  module Models
    #
    # The callback url parameters.
    #
    class GetCallbackUrlParameters

      include MsRestAzure

      # @return [DateTime] The expiry time.
      attr_accessor :not_after

      # @return [KeyType] The key type. Possible values include:
      # 'NotSpecified', 'Primary', 'Secondary'
      attr_accessor :key_type


      #
      # Mapper for GetCallbackUrlParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GetCallbackUrlParameters',
          type: {
            name: 'Composite',
            class_name: 'GetCallbackUrlParameters',
            model_properties: {
              not_after: {
                client_side_validation: true,
                required: false,
                serialized_name: 'notAfter',
                type: {
                  name: 'DateTime'
                }
              },
              key_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'keyType',
                type: {
                  name: 'Enum',
                  module: 'KeyType'
                }
              }
            }
          }
        }
      end
    end
  end
end
