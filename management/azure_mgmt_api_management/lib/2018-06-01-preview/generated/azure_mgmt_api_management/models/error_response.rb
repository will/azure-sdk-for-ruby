# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_06_01_preview
  module Models
    #
    # Error Response.
    #
    class ErrorResponse

      include MsRestAzure

      # @return [String] Service-defined error code. This code serves as a
      # sub-status for the HTTP error code specified in the response.
      attr_accessor :code

      # @return [String] Human-readable representation of the error.
      attr_accessor :message

      # @return [Array<ErrorFieldContract>] The list of invalid fields send in
      # request, in case of validation error.
      attr_accessor :details


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
                serialized_name: 'error.code',
                type: {
                  name: 'String'
                }
              },
              message: {
                client_side_validation: true,
                required: false,
                serialized_name: 'error.message',
                type: {
                  name: 'String'
                }
              },
              details: {
                client_side_validation: true,
                required: false,
                serialized_name: 'error.details',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ErrorFieldContractElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ErrorFieldContract'
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
