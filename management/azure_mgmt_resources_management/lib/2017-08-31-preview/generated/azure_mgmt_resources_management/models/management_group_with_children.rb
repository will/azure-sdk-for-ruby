# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ResourcesManagement::Mgmt::V2017_08_31_preview
  module Models
    #
    # The management group details.
    #
    class ManagementGroupWithChildren

      include MsRestAzure

      # @return [String] The ID of the management group. E.g.
      # /providers/Microsoft.Management/managementGroups/20000000-0000-0000-0000-000000000000
      attr_accessor :id

      # @return [String] The type of the resource. E.g.
      # /providers/Microsoft.Management/managementGroups
      attr_accessor :type

      # @return The name of the management group. E.g.
      # 20000000-0000-0000-0000-000000000000
      attr_accessor :name

      # @return The AAD Tenant ID associated with the management group. E.g.
      # 10000000-0000-0000-0000-000000000000
      attr_accessor :tenant_id

      # @return [String] The friendly name of the management group.
      attr_accessor :display_name

      # @return [ManagementGroupDetailsProperties] Details.
      attr_accessor :details

      # @return [Array<ManagementGroupChildInfo>] The list of children.
      attr_accessor :children


      #
      # Mapper for ManagementGroupWithChildren class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ManagementGroupWithChildren',
          type: {
            name: 'Composite',
            class_name: 'ManagementGroupWithChildren',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              tenant_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.tenantId',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.displayName',
                type: {
                  name: 'String'
                }
              },
              details: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.details',
                type: {
                  name: 'Composite',
                  class_name: 'ManagementGroupDetailsProperties'
                }
              },
              children: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.children',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ManagementGroupChildInfoElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ManagementGroupChildInfo'
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
