# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Kusto::Mgmt::V2019_01_21
  module Models
    #
    # Class representing a Kusto cluster.
    #
    class Cluster < TrackedResource

      include MsRestAzure

      # @return [AzureSku] The SKU of the cluster.
      attr_accessor :sku

      # @return [State] The state of the resource. Possible values include:
      # 'Creating', 'Unavailable', 'Running', 'Deleting', 'Deleted',
      # 'Stopping', 'Stopped', 'Starting', 'Updating'
      attr_accessor :state

      # @return [ProvisioningState] The provisioned state of the resource.
      # Possible values include: 'Running', 'Creating', 'Deleting',
      # 'Succeeded', 'Failed'
      attr_accessor :provisioning_state

      # @return [String] The cluster URI.
      attr_accessor :uri

      # @return [String] The cluster data ingestion URI.
      attr_accessor :data_ingestion_uri

      # @return [Array<TrustedExternalTenant>] The cluster's external tenants.
      attr_accessor :trusted_external_tenants


      #
      # Mapper for Cluster class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Cluster',
          type: {
            name: 'Composite',
            class_name: 'Cluster',
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
              },
              location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              sku: {
                client_side_validation: true,
                required: true,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'AzureSku'
                }
              },
              state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.state',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              uri: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.uri',
                type: {
                  name: 'String'
                }
              },
              data_ingestion_uri: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.dataIngestionUri',
                type: {
                  name: 'String'
                }
              },
              trusted_external_tenants: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.trustedExternalTenants',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'TrustedExternalTenantElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'TrustedExternalTenant'
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
