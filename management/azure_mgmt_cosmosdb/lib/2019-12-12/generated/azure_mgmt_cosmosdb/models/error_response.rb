# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2019_12_12
  module Models
    #
    # Error Response.
    #
    class ErrorResponse

      include MsRestAzure

      # @return [String] Error code.
      attr_accessor :code

      # @return [String] Error message indicating why the operation failed.
      attr_accessor :message


      #
      # Mapper for ErrorResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ErrorResponse',
          type: {
            name: 'Composite',
            class_name: 'ErrorResponse',
            model_properties: {
              code: {
                client_side_validation: true,
                required: false,
                serialized_name: 'code',
                type: {
                  name: 'String'
                }
              },
              message: {
                client_side_validation: true,
                required: false,
                serialized_name: 'message',
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
