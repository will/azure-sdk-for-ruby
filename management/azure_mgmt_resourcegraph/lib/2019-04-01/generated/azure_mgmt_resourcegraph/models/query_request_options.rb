# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ResourceGraph::Mgmt::V2019_04_01
  module Models
    #
    # The options for query evaluation
    #
    class QueryRequestOptions

      include MsRestAzure

      # @return [String] Continuation token for pagination, capturing the next
      # page size and offset, as well as the context of the query.
      attr_accessor :skip_token

      # @return [Integer] The maximum number of rows that the query should
      # return. Overrides the page size when ```$skipToken``` property is
      # present.
      attr_accessor :top

      # @return [Integer] The number of rows to skip from the beginning of the
      # results. Overrides the next page offset when ```$skipToken``` property
      # is present.
      attr_accessor :skip

      # @return [ResultFormat] Defines in which format query result returned.
      # Possible values include: 'table', 'objectArray'
      attr_accessor :result_format


      #
      # Mapper for QueryRequestOptions class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'QueryRequestOptions',
          type: {
            name: 'Composite',
            class_name: 'QueryRequestOptions',
            model_properties: {
              skip_token: {
                client_side_validation: true,
                required: false,
                serialized_name: '$skipToken',
                type: {
                  name: 'String'
                }
              },
              top: {
                client_side_validation: true,
                required: false,
                serialized_name: '$top',
                constraints: {
                  InclusiveMaximum: 1000,
                  InclusiveMinimum: 1
                },
                type: {
                  name: 'Number'
                }
              },
              skip: {
                client_side_validation: true,
                required: false,
                serialized_name: '$skip',
                constraints: {
                  InclusiveMinimum: 0
                },
                type: {
                  name: 'Number'
                }
              },
              result_format: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resultFormat',
                type: {
                  name: 'Enum',
                  module: 'ResultFormat'
                }
              }
            }
          }
        }
      end
    end
  end
end
