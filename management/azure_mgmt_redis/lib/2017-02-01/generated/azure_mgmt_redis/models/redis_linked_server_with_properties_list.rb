# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Redis::Mgmt::V2017_02_01
  module Models
    #
    # List of linked servers (with properties) of a Redis cache.
    #
    class RedisLinkedServerWithPropertiesList

      include MsRestAzure

      # @return [Array<RedisLinkedServerWithProperties>] List of linked servers
      # (with properties) of a Redis cache.
      attr_accessor :value


      #
      # Mapper for RedisLinkedServerWithPropertiesList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RedisLinkedServerWithPropertiesList',
          type: {
            name: 'Composite',
            class_name: 'RedisLinkedServerWithPropertiesList',
            model_properties: {
              value: {
                client_side_validation: true,
                required: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'RedisLinkedServerWithPropertiesElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RedisLinkedServerWithProperties'
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
