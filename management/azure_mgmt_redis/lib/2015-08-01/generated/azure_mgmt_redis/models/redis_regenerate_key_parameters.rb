# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Redis::Mgmt::V2015_08_01
  module Models
    #
    # Specifies which Redis access keys to reset.
    #
    class RedisRegenerateKeyParameters

      include MsRestAzure

      # @return [RedisKeyType] Which Redis access key to reset. Possible values
      # include: 'Primary', 'Secondary'
      attr_accessor :key_type


      #
      # Mapper for RedisRegenerateKeyParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RedisRegenerateKeyParameters',
          type: {
            name: 'Composite',
            class_name: 'RedisRegenerateKeyParameters',
            model_properties: {
              key_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'keyType',
                type: {
                  name: 'Enum',
                  module: 'RedisKeyType'
                }
              }
            }
          }
        }
      end
    end
  end
end
