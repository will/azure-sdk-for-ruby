# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2019_08_01
  module Models
    #
    # Model object.
    #
    #
    class CompositePath

      include MsRestAzure

      # @return [String] The path for which the indexing behavior applies to.
      # Index paths typically start with root and end with wildcard (/path/*)
      attr_accessor :path

      # @return [CompositePathSortOrder] Sort order for composite paths.
      # Possible values include: 'Ascending', 'Descending'
      attr_accessor :order


      #
      # Mapper for CompositePath class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CompositePath',
          type: {
            name: 'Composite',
            class_name: 'CompositePath',
            model_properties: {
              path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'path',
                type: {
                  name: 'String'
                }
              },
              order: {
                client_side_validation: true,
                required: false,
                serialized_name: 'order',
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
