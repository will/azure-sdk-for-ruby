# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2016_08_01
  module Models
    #
    # Body of the error response returned from the API.
    #
    class ErrorEntity

      include MsRestAzure

      # @return [String] Type of error.
      attr_accessor :extended_code

      # @return [String] Message template.
      attr_accessor :message_template

      # @return [Array<String>] Parameters for the template.
      attr_accessor :parameters

      # @return [Array<ErrorEntity>] Inner errors.
      attr_accessor :inner_errors

      # @return [String] Basic error code.
      attr_accessor :code

      # @return [String] Any details of the error.
      attr_accessor :message


      #
      # Mapper for ErrorEntity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ErrorEntity',
          type: {
            name: 'Composite',
            class_name: 'ErrorEntity',
            model_properties: {
              extended_code: {
                client_side_validation: true,
                required: false,
                serialized_name: 'extendedCode',
                type: {
                  name: 'String'
                }
              },
              message_template: {
                client_side_validation: true,
                required: false,
                serialized_name: 'messageTemplate',
                type: {
                  name: 'String'
                }
              },
              parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'parameters',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              inner_errors: {
                client_side_validation: true,
                required: false,
                serialized_name: 'innerErrors',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ErrorEntityElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ErrorEntity'
                      }
                  }
                }
              },
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
