# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceBus::Mgmt::V2017_04_01
  module Models
    #
    # Represents the filter actions which are allowed for the transformation of
    # a message that have been matched by a filter expression.
    #
    class Action

      include MsRestAzure

      # @return [String] SQL expression. e.g. MyProperty='ABC'
      attr_accessor :sql_expression

      # @return [Integer] This property is reserved for future use. An integer
      # value showing the compatibility level, currently hard-coded to 20.
      attr_accessor :compatibility_level

      # @return [Boolean] Value that indicates whether the rule action requires
      # preprocessing. Default value: true .
      attr_accessor :requires_preprocessing


      #
      # Mapper for Action class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Action',
          type: {
            name: 'Composite',
            class_name: 'Action',
            model_properties: {
              sql_expression: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sqlExpression',
                type: {
                  name: 'String'
                }
              },
              compatibility_level: {
                client_side_validation: true,
                required: false,
                serialized_name: 'compatibilityLevel',
                type: {
                  name: 'Number'
                }
              },
              requires_preprocessing: {
                client_side_validation: true,
                required: false,
                serialized_name: 'requiresPreprocessing',
                default_value: true,
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
