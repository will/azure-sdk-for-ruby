# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2020_04_01
  module Models
    #
    # The List operation response, that contains the triggers and their
    # properties.
    #
    class SqlTriggerListResult

      include MsRestAzure

      # @return [Array<SqlTriggerGetResults>] List of triggers and their
      # properties.
      attr_accessor :value


      #
      # Mapper for SqlTriggerListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SqlTriggerListResult',
          type: {
            name: 'Composite',
            class_name: 'SqlTriggerListResult',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SqlTriggerGetResultsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SqlTriggerGetResults'
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
