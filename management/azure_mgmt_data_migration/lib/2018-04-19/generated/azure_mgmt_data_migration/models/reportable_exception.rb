# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_04_19
  module Models
    #
    # Exception object for all custom exceptions
    #
    class ReportableException

      include MsRestAzure

      # @return [String] Error message
      attr_accessor :message

      # @return [String] Actionable steps for this exception
      attr_accessor :actionable_message

      # @return [String] The path to the file where exception occurred
      attr_accessor :file_path

      # @return [String] The line number where exception occurred
      attr_accessor :line_number

      # @return [Integer] Coded numerical value that is assigned to a specific
      # exception
      attr_accessor :h_result

      # @return [String] Stack trace
      attr_accessor :stack_trace


      #
      # Mapper for ReportableException class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ReportableException',
          type: {
            name: 'Composite',
            class_name: 'ReportableException',
            model_properties: {
              message: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'message',
                type: {
                  name: 'String'
                }
              },
              actionable_message: {
                client_side_validation: true,
                required: false,
                serialized_name: 'actionableMessage',
                type: {
                  name: 'String'
                }
              },
              file_path: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'filePath',
                type: {
                  name: 'String'
                }
              },
              line_number: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'lineNumber',
                type: {
                  name: 'String'
                }
              },
              h_result: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'hResult',
                type: {
                  name: 'Number'
                }
              },
              stack_trace: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'stackTrace',
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
