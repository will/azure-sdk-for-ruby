# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Redis::Mgmt::V2017_10_01
  module Models
    #
    # Linked server Id
    #
    class RedisLinkedServer

      include MsRestAzure

      # @return [String] Linked server Id.
      attr_accessor :id


      #
      # Mapper for RedisLinkedServer class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RedisLinkedServer',
          type: {
            name: 'Composite',
            class_name: 'RedisLinkedServer',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
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
