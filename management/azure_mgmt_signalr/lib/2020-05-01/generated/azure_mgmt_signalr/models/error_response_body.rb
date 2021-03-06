# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Signalr::Mgmt::V2020_05_01
  module Models
    #
    # Describes a particular API error with an error code and a message.
    #
    class ErrorResponseBody

      include MsRestAzure

      # @return [String] An error code that describes the error condition more
      # precisely than an HTTP status code.
      # Can be used to programmatically handle specific error cases.
      attr_accessor :code

      # @return [String] A message that describes the error in detail and
      # provides debugging information.
      attr_accessor :message

      # @return [String] The target of the particular error (for example, the
      # name of the property in error).
      attr_accessor :target

      # @return [Array<ErrorResponseBody>] Contains nested errors that are
      # related to this error.
      attr_accessor :details


      #
      # Mapper for ErrorResponseBody class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ErrorResponseBody',
          type: {
            name: 'Composite',
            class_name: 'ErrorResponseBody',
            model_properties: {
              code: {
                client_side_validation: true,
                required: true,
                serialized_name: 'code',
                type: {
                  name: 'String'
                }
              },
              message: {
                client_side_validation: true,
                required: true,
                serialized_name: 'message',
                type: {
                  name: 'String'
                }
              },
              target: {
                client_side_validation: true,
                required: false,
                serialized_name: 'target',
                type: {
                  name: 'String'
                }
              },
              details: {
                client_side_validation: true,
                required: false,
                serialized_name: 'details',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ErrorResponseBodyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ErrorResponseBody'
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
