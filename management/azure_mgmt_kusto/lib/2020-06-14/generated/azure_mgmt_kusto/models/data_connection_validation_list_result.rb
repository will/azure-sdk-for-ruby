# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Kusto::Mgmt::V2020_06_14
  module Models
    #
    # The list Kusto data connection validation result.
    #
    class DataConnectionValidationListResult

      include MsRestAzure

      # @return [Array<DataConnectionValidationResult>] The list of Kusto data
      # connection validation errors.
      attr_accessor :value


      #
      # Mapper for DataConnectionValidationListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DataConnectionValidationListResult',
          type: {
            name: 'Composite',
            class_name: 'DataConnectionValidationListResult',
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
                      serialized_name: 'DataConnectionValidationResultElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DataConnectionValidationResult'
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
