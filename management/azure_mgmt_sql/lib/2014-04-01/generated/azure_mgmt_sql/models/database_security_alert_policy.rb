# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2014_04_01
  module Models
    #
    # Contains information about a database Threat Detection policy.
    #
    class DatabaseSecurityAlertPolicy < ProxyResource

      include MsRestAzure

      # @return [String] The geo-location where the resource lives
      attr_accessor :location

      # @return [String] Resource kind.
      attr_accessor :kind

      # @return [SecurityAlertPolicyState] Specifies the state of the policy.
      # If state is Enabled, storageEndpoint and storageAccountAccessKey are
      # required. Possible values include: 'New', 'Enabled', 'Disabled'
      attr_accessor :state

      # @return [String] Specifies the semicolon-separated list of alerts that
      # are disabled, or empty string to disable no alerts. Possible values:
      # Sql_Injection; Sql_Injection_Vulnerability; Access_Anomaly;
      # Data_Exfiltration; Unsafe_Action.
      attr_accessor :disabled_alerts

      # @return [String] Specifies the semicolon-separated list of e-mail
      # addresses to which the alert is sent.
      attr_accessor :email_addresses

      # @return [SecurityAlertPolicyEmailAccountAdmins] Specifies that the
      # alert is sent to the account administrators. Possible values include:
      # 'Enabled', 'Disabled'
      attr_accessor :email_account_admins

      # @return [String] Specifies the blob storage endpoint (e.g.
      # https://MyAccount.blob.core.windows.net). This blob storage will hold
      # all Threat Detection audit logs. If state is Enabled, storageEndpoint
      # is required.
      attr_accessor :storage_endpoint

      # @return [String] Specifies the identifier key of the Threat Detection
      # audit storage account. If state is Enabled, storageAccountAccessKey is
      # required.
      attr_accessor :storage_account_access_key

      # @return [Integer] Specifies the number of days to keep in the Threat
      # Detection audit logs.
      attr_accessor :retention_days

      # @return [SecurityAlertPolicyUseServerDefault] Specifies whether to use
      # the default server policy. Possible values include: 'Enabled',
      # 'Disabled'
      attr_accessor :use_server_default


      #
      # Mapper for DatabaseSecurityAlertPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DatabaseSecurityAlertPolicy',
          type: {
            name: 'Composite',
            class_name: 'DatabaseSecurityAlertPolicy',
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
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              kind: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              state: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.state',
                type: {
                  name: 'Enum',
                  module: 'SecurityAlertPolicyState'
                }
              },
              disabled_alerts: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.disabledAlerts',
                type: {
                  name: 'String'
                }
              },
              email_addresses: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.emailAddresses',
                type: {
                  name: 'String'
                }
              },
              email_account_admins: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.emailAccountAdmins',
                type: {
                  name: 'Enum',
                  module: 'SecurityAlertPolicyEmailAccountAdmins'
                }
              },
              storage_endpoint: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.storageEndpoint',
                type: {
                  name: 'String'
                }
              },
              storage_account_access_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.storageAccountAccessKey',
                type: {
                  name: 'String'
                }
              },
              retention_days: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.retentionDays',
                type: {
                  name: 'Number'
                }
              },
              use_server_default: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.useServerDefault',
                type: {
                  name: 'Enum',
                  module: 'SecurityAlertPolicyUseServerDefault'
                }
              }
            }
          }
        }
      end
    end
  end
end
