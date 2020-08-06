# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Appconfiguration::Mgmt::V2020_06_01
  module Models
    #
    # The definition of a configuration store operation.
    #
    class OperationDefinition

      include MsRestAzure

      # @return [String] Operation name: {provider}/{resource}/{operation}.
      attr_accessor :name

      # @return [OperationDefinitionDisplay] The display information for the
      # configuration store operation.
      attr_accessor :display


      #
      # Mapper for OperationDefinition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OperationDefinition',
          type: {
            name: 'Composite',
            class_name: 'OperationDefinition',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              display: {
                client_side_validation: true,
                required: false,
                serialized_name: 'display',
                type: {
                  name: 'Composite',
                  class_name: 'OperationDefinitionDisplay'
                }
              }
            }
          }
        }
      end
    end
  end
end
