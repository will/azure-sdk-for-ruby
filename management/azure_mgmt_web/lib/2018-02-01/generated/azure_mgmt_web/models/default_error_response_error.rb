# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2018_02_01
  module Models
    #
    # Error model.
    #
    class DefaultErrorResponseError

      include MsRestAzure

      # @return [String] Standardized string to programmatically identify the
      # error.
      attr_accessor :code

      # @return [String] Detailed error description and debugging information.
      attr_accessor :message

      # @return [String] Detailed error description and debugging information.
      attr_accessor :target

      # @return [Array<DefaultErrorResponseErrorDetailsItem>]
      attr_accessor :details

      # @return [String] More information to debug error.
      attr_accessor :innererror


      #
      # Mapper for DefaultErrorResponseError class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DefaultErrorResponse_error',
          type: {
            name: 'Composite',
            class_name: 'DefaultErrorResponseError',
            model_properties: {
              code: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'code',
                type: {
                  name: 'String'
                }
              },
              message: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'message',
                type: {
                  name: 'String'
                }
              },
              target: {
                client_side_validation: true,
                required: false,
                read_only: true,
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
                      serialized_name: 'DefaultErrorResponseErrorDetailsItemElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DefaultErrorResponseErrorDetailsItem'
                      }
                  }
                }
              },
              innererror: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'innererror',
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
