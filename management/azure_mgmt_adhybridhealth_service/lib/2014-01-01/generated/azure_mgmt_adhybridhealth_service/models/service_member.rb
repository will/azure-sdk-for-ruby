# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ADHybridHealthService::Mgmt::V2014_01_01
  module Models
    #
    # The server properties for a given service.
    #
    class ServiceMember

      include MsRestAzure

      # @return [String] The id of the server.
      attr_accessor :service_member_id

      # @return [String] The service id to whom this server belongs.
      attr_accessor :service_id

      # @return [String] The tenant id to whom this server belongs.
      attr_accessor :tenant_id

      # @return [Integer] The total number of alerts that are currently active
      # for the server.
      attr_accessor :active_alerts

      # @return [String] The additional information, if any, for the server.
      attr_accessor :additional_information

      # @return [DateTime] The date time , in UTC, when the server was
      # onboarded to Azure Active Directory Connect Health.
      attr_accessor :created_date

      # @return The server specific configuration related dimensions.
      attr_accessor :dimensions

      # @return [Boolean] Indicates if the server is disabled or not.
      attr_accessor :disabled

      # @return [Integer] The reason for disabling the server.
      attr_accessor :disabled_reason

      # @return The list of installed QFEs for the server.
      attr_accessor :installed_qfes

      # @return [DateTime] The date and time , in UTC, when the server was last
      # disabled.
      attr_accessor :last_disabled

      # @return [DateTime] The date and time, in UTC, when the server was last
      # rebooted.
      attr_accessor :last_reboot

      # @return [DateTime] The date and time, in UTC, when the server's data
      # monitoring configuration was last changed.
      attr_accessor :last_server_reported_monitoring_level_change

      # @return [DateTime] The date and time, in UTC, when the server
      # properties were last updated.
      attr_accessor :last_updated

      # @return [String] The id of the machine.
      attr_accessor :machine_id

      # @return [String] The name of the server.
      attr_accessor :machine_name

      # @return The monitoring configuration of the server which determines
      # what activities are monitored by Azure Active Directory Connect Health.
      attr_accessor :monitoring_configurations_computed

      # @return The customized monitoring configuration of the server which
      # determines what activities are monitored by Azure Active Directory
      # Connect Health.
      attr_accessor :monitoring_configurations_customized

      # @return [String] The name of the operating system installed in the
      # machine.
      attr_accessor :os_name

      # @return [String] The version of the operating system installed in the
      # machine.
      attr_accessor :os_version

      # @return Server specific properties.
      attr_accessor :properties

      # @return The list of recommended hotfixes for the server.
      attr_accessor :recommended_qfes

      # @return [Integer] The total count of alerts that are resolved for this
      # server.
      attr_accessor :resolved_alerts

      # @return [String] The service role that is being monitored in the
      # server.
      attr_accessor :role

      # @return [MonitoringLevel] The monitoring level reported by the server.
      # Possible values include: 'Partial', 'Full', 'Off'
      attr_accessor :server_reported_monitoring_level

      # @return [String] The health status of the server.
      attr_accessor :status


      #
      # Mapper for ServiceMember class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServiceMember',
          type: {
            name: 'Composite',
            class_name: 'ServiceMember',
            model_properties: {
              service_member_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'serviceMemberId',
                type: {
                  name: 'String'
                }
              },
              service_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'serviceId',
                type: {
                  name: 'String'
                }
              },
              tenant_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tenantId',
                type: {
                  name: 'String'
                }
              },
              active_alerts: {
                client_side_validation: true,
                required: false,
                serialized_name: 'activeAlerts',
                type: {
                  name: 'Number'
                }
              },
              additional_information: {
                client_side_validation: true,
                required: false,
                serialized_name: 'additionalInformation',
                type: {
                  name: 'String'
                }
              },
              created_date: {
                client_side_validation: true,
                required: false,
                serialized_name: 'createdDate',
                type: {
                  name: 'DateTime'
                }
              },
              dimensions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dimensions',
                type: {
                  name: 'Object'
                }
              },
              disabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'disabled',
                type: {
                  name: 'Boolean'
                }
              },
              disabled_reason: {
                client_side_validation: true,
                required: false,
                serialized_name: 'disabledReason',
                type: {
                  name: 'Number'
                }
              },
              installed_qfes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'installedQfes',
                type: {
                  name: 'Object'
                }
              },
              last_disabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'lastDisabled',
                type: {
                  name: 'DateTime'
                }
              },
              last_reboot: {
                client_side_validation: true,
                required: false,
                serialized_name: 'lastReboot',
                type: {
                  name: 'DateTime'
                }
              },
              last_server_reported_monitoring_level_change: {
                client_side_validation: true,
                required: false,
                serialized_name: 'lastServerReportedMonitoringLevelChange',
                type: {
                  name: 'DateTime'
                }
              },
              last_updated: {
                client_side_validation: true,
                required: false,
                serialized_name: 'lastUpdated',
                type: {
                  name: 'DateTime'
                }
              },
              machine_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'machineId',
                type: {
                  name: 'String'
                }
              },
              machine_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'machineName',
                type: {
                  name: 'String'
                }
              },
              monitoring_configurations_computed: {
                client_side_validation: true,
                required: false,
                serialized_name: 'monitoringConfigurationsComputed',
                type: {
                  name: 'Object'
                }
              },
              monitoring_configurations_customized: {
                client_side_validation: true,
                required: false,
                serialized_name: 'monitoringConfigurationsCustomized',
                type: {
                  name: 'Object'
                }
              },
              os_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'osName',
                type: {
                  name: 'String'
                }
              },
              os_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'osVersion',
                type: {
                  name: 'String'
                }
              },
              properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Object'
                }
              },
              recommended_qfes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recommendedQfes',
                type: {
                  name: 'Object'
                }
              },
              resolved_alerts: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resolvedAlerts',
                type: {
                  name: 'Number'
                }
              },
              role: {
                client_side_validation: true,
                required: false,
                serialized_name: 'role',
                type: {
                  name: 'String'
                }
              },
              server_reported_monitoring_level: {
                client_side_validation: true,
                required: false,
                serialized_name: 'serverReportedMonitoringLevel',
                type: {
                  name: 'Enum',
                  module: 'MonitoringLevel'
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'status',
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
