# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Kusto::Mgmt::V2020_06_14
  module Models
    #
    # Class representing a Kusto cluster.
    #
    class Cluster < TrackedResource

      include MsRestAzure

      # @return [AzureSku] The SKU of the cluster.
      attr_accessor :sku

      # @return [Array<String>] The availability zones of the cluster.
      attr_accessor :zones

      # @return [Identity] The identity of the cluster, if configured.
      attr_accessor :identity

      # @return [State] The state of the resource. Possible values include:
      # 'Creating', 'Unavailable', 'Running', 'Deleting', 'Deleted',
      # 'Stopping', 'Stopped', 'Starting', 'Updating'
      attr_accessor :state

      # @return [ProvisioningState] The provisioned state of the resource.
      # Possible values include: 'Running', 'Creating', 'Deleting',
      # 'Succeeded', 'Failed', 'Moving'
      attr_accessor :provisioning_state

      # @return [String] The cluster URI.
      attr_accessor :uri

      # @return [String] The cluster data ingestion URI.
      attr_accessor :data_ingestion_uri

      # @return [String] The reason for the cluster's current state.
      attr_accessor :state_reason

      # @return [Array<TrustedExternalTenant>] The cluster's external tenants.
      attr_accessor :trusted_external_tenants

      # @return [OptimizedAutoscale] Optimized auto scale definition.
      attr_accessor :optimized_autoscale

      # @return [Boolean] A boolean value that indicates if the cluster's disks
      # are encrypted.
      attr_accessor :enable_disk_encryption

      # @return [Boolean] A boolean value that indicates if the streaming
      # ingest is enabled. Default value: false .
      attr_accessor :enable_streaming_ingest

      # @return [VirtualNetworkConfiguration] Virtual network definition.
      attr_accessor :virtual_network_configuration

      # @return [KeyVaultProperties] KeyVault properties for the cluster
      # encryption.
      attr_accessor :key_vault_properties

      # @return [Boolean] A boolean value that indicates if the purge
      # operations are enabled. Default value: false .
      attr_accessor :enable_purge

      # @return [LanguageExtensionsList] List of the cluster's language
      # extensions.
      attr_accessor :language_extensions

      # @return [Boolean] A boolean value that indicates if double encryption
      # is enabled. Default value: false .
      attr_accessor :enable_double_encryption


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
              zones: {
                client_side_validation: true,
                required: false,
                serialized_name: 'zones',
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
              identity: {
                client_side_validation: true,
                required: false,
                serialized_name: 'identity',
                type: {
                  name: 'Composite',
                  class_name: 'Identity'
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
              state_reason: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.stateReason',
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
              },
              optimized_autoscale: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.optimizedAutoscale',
                type: {
                  name: 'Composite',
                  class_name: 'OptimizedAutoscale'
                }
              },
              enable_disk_encryption: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.enableDiskEncryption',
                type: {
                  name: 'Boolean'
                }
              },
              enable_streaming_ingest: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.enableStreamingIngest',
                default_value: false,
                type: {
                  name: 'Boolean'
                }
              },
              virtual_network_configuration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.virtualNetworkConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualNetworkConfiguration'
                }
              },
              key_vault_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.keyVaultProperties',
                type: {
                  name: 'Composite',
                  class_name: 'KeyVaultProperties'
                }
              },
              enable_purge: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.enablePurge',
                default_value: false,
                type: {
                  name: 'Boolean'
                }
              },
              language_extensions: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.languageExtensions',
                type: {
                  name: 'Composite',
                  class_name: 'LanguageExtensionsList'
                }
              },
              enable_double_encryption: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.enableDoubleEncryption',
                default_value: false,
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
