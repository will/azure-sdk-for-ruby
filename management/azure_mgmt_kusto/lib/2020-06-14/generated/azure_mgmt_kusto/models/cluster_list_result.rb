# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Kusto::Mgmt::V2020_06_14
  module Models
    #
    # The list Kusto clusters operation response.
    #
    class ClusterListResult

      include MsRestAzure

      # @return [Array<Cluster>] The list of Kusto clusters.
      attr_accessor :value


      #
      # Mapper for ClusterListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ClusterListResult',
          type: {
            name: 'Composite',
            class_name: 'ClusterListResult',
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
                      serialized_name: 'ClusterElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Cluster'
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
