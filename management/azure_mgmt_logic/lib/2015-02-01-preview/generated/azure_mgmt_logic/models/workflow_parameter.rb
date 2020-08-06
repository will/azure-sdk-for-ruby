# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Logic::Mgmt::V2015_02_01_preview
  module Models
    #
    # Model object.
    #
    #
    class WorkflowParameter

      include MsRestAzure

      # @return [ParameterType] Gets or sets the type. Possible values include:
      # 'NotSpecified', 'String', 'SecureString', 'Int', 'Float', 'Bool',
      # 'Array', 'Object', 'SecureObject'
      attr_accessor :type

      # @return Gets or sets the value.
      attr_accessor :value

      # @return Gets or sets the metadata.
      attr_accessor :metadata


      #
      # Mapper for WorkflowParameter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'WorkflowParameter',
          type: {
            name: 'Composite',
            class_name: 'WorkflowParameter',
            model_properties: {
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'Enum',
                  module: 'ParameterType'
                }
              },
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Object'
                }
              },
              metadata: {
                client_side_validation: true,
                required: false,
                serialized_name: 'metadata',
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
