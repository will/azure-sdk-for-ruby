# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorageSync::Mgmt::V2018_10_01
  module Models
    #
    # The parameters used when creating a cloud endpoint.
    #
    class CloudEndpointCreateParameters < ProxyResource

      include MsRestAzure

      # @return [String] Storage Account Resource Id
      attr_accessor :storage_account_resource_id

      # @return [String] Storage Account Share name
      attr_accessor :storage_account_share_name

      # @return [String] Storage Account Tenant Id
      attr_accessor :storage_account_tenant_id


      #
      # Mapper for CloudEndpointCreateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CloudEndpointCreateParameters',
          type: {
            name: 'Composite',
            class_name: 'CloudEndpointCreateParameters',
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
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
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
              storage_account_resource_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.storageAccountResourceId',
                type: {
                  name: 'String'
                }
              },
              storage_account_share_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.storageAccountShareName',
                type: {
                  name: 'String'
                }
              },
              storage_account_tenant_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.storageAccountTenantId',
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
