# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2014_04_01
  module Models
    #
    # Represents the response to a get top queries request.
    #
    class TopQueriesListResult

      include MsRestAzure

      # @return [Array<TopQueries>] The list of top queries.
      attr_accessor :value


      #
      # Mapper for TopQueriesListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TopQueriesListResult',
          type: {
            name: 'Composite',
            class_name: 'TopQueriesListResult',
            model_properties: {
              value: {
                client_side_validation: true,
                required: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'TopQueriesElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'TopQueries'
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
