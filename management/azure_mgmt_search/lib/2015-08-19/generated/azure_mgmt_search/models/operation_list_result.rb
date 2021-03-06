# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Search::Mgmt::V2015_08_19
  module Models
    #
    # The result of the request to list REST API operations. It contains a list
    # of operations and a URL  to get the next set of results.
    #
    class OperationListResult

      include MsRestAzure

      # @return [Array<Operation>] The list of operations supported by the
      # resource provider.
      attr_accessor :value

      # @return [String] The URL to get the next set of operation list results,
      # if any.
      attr_accessor :next_link


      #
      # Mapper for OperationListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OperationListResult',
          type: {
            name: 'Composite',
            class_name: 'OperationListResult',
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
                      serialized_name: 'OperationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Operation'
                      }
                  }
                }
              },
              next_link: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'nextLink',
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
