# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::Mgmt::V2017_07_01_preview
  module Models
    #
    # The list results of the ServiceFabric runtime versions.
    #
    class ClusterCodeVersionsListResult

      include MsRestAzure

      # @return [Array<ClusterCodeVersionsResult>]
      attr_accessor :value

      # @return [String] The URL to use for getting the next set of results.
      attr_accessor :next_link


      #
      # Mapper for ClusterCodeVersionsListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ClusterCodeVersionsListResult',
          type: {
            name: 'Composite',
            class_name: 'ClusterCodeVersionsListResult',
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
                      serialized_name: 'ClusterCodeVersionsResultElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ClusterCodeVersionsResult'
                      }
                  }
                }
              },
              next_link: {
                client_side_validation: true,
                required: false,
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
