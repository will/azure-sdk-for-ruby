# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorageSync::Mgmt::V2019_06_01
  module Models
    #
    # Server endpoint recall error object
    #
    class ServerEndpointRecallError

      include MsRestAzure

      # @return [Integer] Error code (HResult)
      attr_accessor :error_code

      # @return [Integer] Count of occurences of the error
      attr_accessor :count


      #
      # Mapper for ServerEndpointRecallError class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServerEndpointRecallError',
          type: {
            name: 'Composite',
            class_name: 'ServerEndpointRecallError',
            model_properties: {
              error_code: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'errorCode',
                type: {
                  name: 'Number'
                }
              },
              count: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'count',
                constraints: {
                  InclusiveMinimum: 0
                },
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
