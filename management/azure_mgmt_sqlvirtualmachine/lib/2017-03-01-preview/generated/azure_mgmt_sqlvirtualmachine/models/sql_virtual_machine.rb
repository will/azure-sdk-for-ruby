# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview
  module Models
    #
    # A SQL virtual machine.
    #
    class SqlVirtualMachine < TrackedResource

      include MsRestAzure

      # @return [ResourceIdentity] Azure Active Directory identity of the
      # server.
      attr_accessor :identity

      # @return [String] ARM Resource id of underlying virtual machine created
      # from SQL marketplace image.
      attr_accessor :virtual_machine_resource_id

      # @return [String] Provisioning state to track the async operation
      # status.
      attr_accessor :provisioning_state

      # @return [String] SQL image offer. Examples include SQL2016-WS2016,
      # SQL2017-WS2016.
      attr_accessor :sql_image_offer

      # @return [SqlServerLicenseType] SQL Server license type. Possible values
      # include: 'PAYG', 'AHUB', 'DR'
      attr_accessor :sql_server_license_type

      # @return [SqlManagementMode] SQL Server Management type. Possible values
      # include: 'Full', 'LightWeight', 'NoAgent'
      attr_accessor :sql_management

      # @return [SqlImageSku] SQL Server edition type. Possible values include:
      # 'Developer', 'Express', 'Standard', 'Enterprise', 'Web'
      attr_accessor :sql_image_sku

      # @return [String] ARM resource id of the SQL virtual machine group this
      # SQL virtual machine is or will be part of.
      attr_accessor :sql_virtual_machine_group_resource_id

      # @return [WsfcDomainCredentials] Domain credentials for setting up
      # Windows Server Failover Cluster for SQL availability group.
      attr_accessor :wsfc_domain_credentials

      # @return [AutoPatchingSettings] Auto patching settings for applying
      # critical security updates to SQL virtual machine.
      attr_accessor :auto_patching_settings

      # @return [AutoBackupSettings] Auto backup settings for SQL Server.
      attr_accessor :auto_backup_settings

      # @return [KeyVaultCredentialSettings] Key vault credential settings.
      attr_accessor :key_vault_credential_settings

      # @return [ServerConfigurationsManagementSettings] SQL Server
      # configuration management settings.
      attr_accessor :server_configurations_management_settings

      # @return [StorageConfigurationSettings] Storage Configuration Settings.
      attr_accessor :storage_configuration_settings


      #
      # Mapper for SqlVirtualMachine class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SqlVirtualMachine',
          type: {
            name: 'Composite',
            class_name: 'SqlVirtualMachine',
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
              location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'location',
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
              identity: {
                client_side_validation: true,
                required: false,
                serialized_name: 'identity',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceIdentity'
                }
              },
              virtual_machine_resource_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.virtualMachineResourceId',
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
              sql_image_offer: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.sqlImageOffer',
                type: {
                  name: 'String'
                }
              },
              sql_server_license_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.sqlServerLicenseType',
                type: {
                  name: 'String'
                }
              },
              sql_management: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.sqlManagement',
                type: {
                  name: 'String'
                }
              },
              sql_image_sku: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.sqlImageSku',
                type: {
                  name: 'String'
                }
              },
              sql_virtual_machine_group_resource_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.sqlVirtualMachineGroupResourceId',
                type: {
                  name: 'String'
                }
              },
              wsfc_domain_credentials: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.wsfcDomainCredentials',
                type: {
                  name: 'Composite',
                  class_name: 'WsfcDomainCredentials'
                }
              },
              auto_patching_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.autoPatchingSettings',
                type: {
                  name: 'Composite',
                  class_name: 'AutoPatchingSettings'
                }
              },
              auto_backup_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.autoBackupSettings',
                type: {
                  name: 'Composite',
                  class_name: 'AutoBackupSettings'
                }
              },
              key_vault_credential_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.keyVaultCredentialSettings',
                type: {
                  name: 'Composite',
                  class_name: 'KeyVaultCredentialSettings'
                }
              },
              server_configurations_management_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.serverConfigurationsManagementSettings',
                type: {
                  name: 'Composite',
                  class_name: 'ServerConfigurationsManagementSettings'
                }
              },
              storage_configuration_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.storageConfigurationSettings',
                type: {
                  name: 'Composite',
                  class_name: 'StorageConfigurationSettings'
                }
              }
            }
          }
        }
      end
    end
  end
end
