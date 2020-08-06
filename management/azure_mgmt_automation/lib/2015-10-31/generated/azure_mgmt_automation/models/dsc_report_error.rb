# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Automation::Mgmt::V2015_10_31
  module Models
    #
    # Definition of the dsc node report error type.
    #
    class DscReportError

      include MsRestAzure

      # @return [String] Gets or sets the source of the error.
      attr_accessor :error_source

      # @return [String] Gets or sets the resource ID which generated the
      # error.
      attr_accessor :resource_id

      # @return [String] Gets or sets the error code.
      attr_accessor :error_code

      # @return [String] Gets or sets the error message.
      attr_accessor :error_message

      # @return [String] Gets or sets the locale of the error.
      attr_accessor :locale

      # @return [String] Gets or sets the error details.
      attr_accessor :error_details


      #
      # Mapper for DscReportError class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DscReportError',
          type: {
            name: 'Composite',
            class_name: 'DscReportError',
            model_properties: {
              error_source: {
                client_side_validation: true,
                required: false,
                serialized_name: 'errorSource',
                type: {
                  name: 'String'
                }
              },
              resource_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resourceId',
                type: {
                  name: 'String'
                }
              },
              error_code: {
                client_side_validation: true,
                required: false,
                serialized_name: 'errorCode',
                type: {
                  name: 'String'
                }
              },
              error_message: {
                client_side_validation: true,
                required: false,
                serialized_name: 'errorMessage',
                type: {
                  name: 'String'
                }
              },
              locale: {
                client_side_validation: true,
                required: false,
                serialized_name: 'locale',
                type: {
                  name: 'String'
                }
              },
              error_details: {
                client_side_validation: true,
                required: false,
                serialized_name: 'errorDetails',
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
