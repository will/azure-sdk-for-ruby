# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # Delimited text write settings.
    #
    class DelimitedTextWriteSettings < FormatWriteSettings

      include MsRestAzure


      def initialize
        @type = "DelimitedTextWriteSettings"
      end

      attr_accessor :type

      # @return Indicates whether string values should always be enclosed with
      # quotes. Type: boolean (or Expression with resultType boolean).
      attr_accessor :quote_all_text

      # @return The file extension used to create the files. Type: string (or
      # Expression with resultType string).
      attr_accessor :file_extension


      #
      # Mapper for DelimitedTextWriteSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DelimitedTextWriteSettings',
          type: {
            name: 'Composite',
            class_name: 'DelimitedTextWriteSettings',
            model_properties: {
              additional_properties: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              quote_all_text: {
                client_side_validation: true,
                required: false,
                serialized_name: 'quoteAllText',
                type: {
                  name: 'Object'
                }
              },
              file_extension: {
                client_side_validation: true,
                required: true,
                serialized_name: 'fileExtension',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
