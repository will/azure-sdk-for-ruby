# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::OperationalInsights::Mgmt::V2020_03_01_preview
  module Models
    #
    # The list tables operation response.
    #
    class TablesListResult

      include MsRestAzure

      # @return [Array<Table>] A list of data tables.
      attr_accessor :value


      #
      # Mapper for TablesListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TablesListResult',
          type: {
            name: 'Composite',
            class_name: 'TablesListResult',
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
                      serialized_name: 'TableElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Table'
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
