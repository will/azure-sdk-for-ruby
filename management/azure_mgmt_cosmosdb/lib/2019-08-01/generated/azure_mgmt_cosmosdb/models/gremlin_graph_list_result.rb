# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2019_08_01
  module Models
    #
    # The List operation response, that contains the graphs and their
    # properties.
    #
    class GremlinGraphListResult

      include MsRestAzure

      # @return [Array<GremlinGraphGetResults>] List of graphs and their
      # properties.
      attr_accessor :value


      #
      # Mapper for GremlinGraphListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GremlinGraphListResult',
          type: {
            name: 'Composite',
            class_name: 'GremlinGraphListResult',
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
                      serialized_name: 'GremlinGraphGetResultsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'GremlinGraphGetResults'
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
