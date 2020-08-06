# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2015_05_01_preview
  module Models
    #
    # An update request for an Azure SQL Database virtual cluster.
    #
    class VirtualClusterUpdate

      include MsRestAzure

      # @return [String] Subnet resource ID for the virtual cluster.
      attr_accessor :subnet_id

      # @return [String] If the service has different generations of hardware,
      # for the same SKU, then that can be captured here.
      attr_accessor :family

      # @return [Array<String>] List of resources in this virtual cluster.
      attr_accessor :child_resources

      # @return [Hash{String => String}] Resource tags.
      attr_accessor :tags


      #
      # Mapper for VirtualClusterUpdate class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualClusterUpdate',
          type: {
            name: 'Composite',
            class_name: 'VirtualClusterUpdate',
            model_properties: {
              subnet_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.subnetId',
                type: {
                  name: 'String'
                }
              },
              family: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.family',
                type: {
                  name: 'String'
                }
              },
              child_resources: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.childResources',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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
