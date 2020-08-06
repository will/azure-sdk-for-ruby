# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::IotHub::Mgmt::V2017_01_19
  module Models
    #
    # Error details.
    #
    class ErrorDetails

      include MsRestAzure

      # @return [String] The error code.
      attr_accessor :code

      # @return [String] The HTTP status code.
      attr_accessor :http_status_code

      # @return [String] The error message.
      attr_accessor :message

      # @return [String] The error details.
      attr_accessor :details


      #
      # Mapper for ErrorDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ErrorDetails',
          type: {
            name: 'Composite',
            class_name: 'ErrorDetails',
            model_properties: {
              code: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'Code',
                type: {
                  name: 'String'
                }
              },
              http_status_code: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'HttpStatusCode',
                type: {
                  name: 'String'
                }
              },
              message: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'Message',
                type: {
                  name: 'String'
                }
              },
              details: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'Details',
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
