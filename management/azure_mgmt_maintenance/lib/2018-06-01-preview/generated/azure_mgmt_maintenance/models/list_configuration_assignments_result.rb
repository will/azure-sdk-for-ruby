# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Maintenance::Mgmt::V2018_06_01_preview
  module Models
    #
    # Response for ConfigurationAssignments list
    #
    class ListConfigurationAssignmentsResult

      include MsRestAzure

      # @return [Array<ConfigurationAssignment>] The list of configuration
      # Assignments
      attr_accessor :value


      #
      # Mapper for ListConfigurationAssignmentsResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ListConfigurationAssignmentsResult',
          type: {
            name: 'Composite',
            class_name: 'ListConfigurationAssignmentsResult',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ConfigurationAssignmentElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ConfigurationAssignment'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
