# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Automation::Mgmt::V2015_10_31
  module Models
    #
    # Definition of the runbook parameter type.
    #
    class RunbookParameter

      include MsRestAzure

      # @return [String] Gets or sets the type of the parameter.
      attr_accessor :type

      # @return [Boolean] Gets or sets a Boolean value to indicate whether the
      # parameter is madatory or not.
      attr_accessor :is_mandatory

      # @return [Integer] Get or sets the position of the parameter.
      attr_accessor :position

      # @return [String] Gets or sets the default value of parameter.
      attr_accessor :default_value


      #
      # Mapper for RunbookParameter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RunbookParameter',
          type: {
            name: 'Composite',
            class_name: 'RunbookParameter',
            model_properties: {
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              is_mandatory: {
                client_side_validation: true,
                required: false,
                serialized_name: 'isMandatory',
                type: {
                  name: 'Boolean'
                }
              },
              position: {
                client_side_validation: true,
                required: false,
                serialized_name: 'position',
                type: {
                  name: 'Number'
                }
              },
              default_value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'defaultValue',
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
