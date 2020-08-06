# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CustomerInsights::Mgmt::V2017_01_01
  module Models
    #
    # Connector mapping property format.
    #
    class ConnectorMappingFormat

      include MsRestAzure

      # @return [String] The type mapping format. Default value: 'TextFormat' .
      attr_accessor :format_type

      # @return [String] The character that signifies a break between columns.
      attr_accessor :column_delimiter

      # @return [String] The oData language.
      attr_accessor :accept_language

      # @return [String] Quote character, used to indicate enquoted fields.
      attr_accessor :quote_character

      # @return [String] Escape character for quotes, can be the same as the
      # quoteCharacter.
      attr_accessor :quote_escape_character

      # @return [String] Character separating array elements.
      attr_accessor :array_separator


      #
      # Mapper for ConnectorMappingFormat class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ConnectorMappingFormat',
          type: {
            name: 'Composite',
            class_name: 'ConnectorMappingFormat',
            model_properties: {
              format_type: {
                client_side_validation: true,
                required: true,
                is_constant: true,
                serialized_name: 'formatType',
                default_value: 'TextFormat',
                type: {
                  name: 'String'
                }
              },
              column_delimiter: {
                client_side_validation: true,
                required: false,
                serialized_name: 'columnDelimiter',
                type: {
                  name: 'String'
                }
              },
              accept_language: {
                client_side_validation: true,
                required: false,
                serialized_name: 'acceptLanguage',
                type: {
                  name: 'String'
                }
              },
              quote_character: {
                client_side_validation: true,
                required: false,
                serialized_name: 'quoteCharacter',
                type: {
                  name: 'String'
                }
              },
              quote_escape_character: {
                client_side_validation: true,
                required: false,
                serialized_name: 'quoteEscapeCharacter',
                type: {
                  name: 'String'
                }
              },
              array_separator: {
                client_side_validation: true,
                required: false,
                serialized_name: 'arraySeparator',
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
