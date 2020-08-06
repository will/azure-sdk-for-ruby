# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10
  module Models
    #
    # Details of the Process Server.
    #
    class ProcessServer

      include MsRestAzure

      # @return [String] The Process Server's friendly name.
      attr_accessor :friendly_name

      # @return [String] The Process Server Id.
      attr_accessor :id

      # @return [String] The IP address of the server.
      attr_accessor :ip_address

      # @return [String] The OS type of the server.
      attr_accessor :os_type

      # @return [String] The version of the scout component on the server.
      attr_accessor :agent_version

      # @return [DateTime] The last heartbeat received from the server.
      attr_accessor :last_heartbeat

      # @return [String] Version status
      attr_accessor :version_status

      # @return [Array<MobilityServiceUpdate>] The list of the mobility service
      # updates available on the Process Server.
      attr_accessor :mobility_service_updates

      # @return [String] The agent generated Id.
      attr_accessor :host_id

      # @return [String] The servers configured with this PS.
      attr_accessor :machine_count

      # @return [String] The number of replication pairs configured in this PS.
      attr_accessor :replication_pair_count

      # @return [String] The percentage of the system load.
      attr_accessor :system_load

      # @return [String] The system load status.
      attr_accessor :system_load_status

      # @return [String] The percentage of the CPU load.
      attr_accessor :cpu_load

      # @return [String] The CPU load status.
      attr_accessor :cpu_load_status

      # @return [Integer] The total memory.
      attr_accessor :total_memory_in_bytes

      # @return [Integer] The available memory.
      attr_accessor :available_memory_in_bytes

      # @return [String] The memory usage status.
      attr_accessor :memory_usage_status

      # @return [Integer] The total space.
      attr_accessor :total_space_in_bytes

      # @return [Integer] The available space.
      attr_accessor :available_space_in_bytes

      # @return [String] The space usage status.
      attr_accessor :space_usage_status

      # @return [String] The PS service status.
      attr_accessor :ps_service_status

      # @return [DateTime] The PS SSL cert expiry date.
      attr_accessor :ssl_cert_expiry_date

      # @return [Integer] CS SSL cert expiry date.
      attr_accessor :ssl_cert_expiry_remaining_days

      # @return [String] OS Version of the process server. Note: This will get
      # populated if user has CS version greater than 9.12.0.0.
      attr_accessor :os_version

      # @return [Array<HealthError>] Health errors.
      attr_accessor :health_errors

      # @return [DateTime] Agent expiry date.
      attr_accessor :agent_expiry_date

      # @return [VersionDetails] The agent version details.
      attr_accessor :agent_version_details


      #
      # Mapper for ProcessServer class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ProcessServer',
          type: {
            name: 'Composite',
            class_name: 'ProcessServer',
            model_properties: {
              friendly_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'friendlyName',
                type: {
                  name: 'String'
                }
              },
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              ip_address: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ipAddress',
                type: {
                  name: 'String'
                }
              },
              os_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'osType',
                type: {
                  name: 'String'
                }
              },
              agent_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'agentVersion',
                type: {
                  name: 'String'
                }
              },
              last_heartbeat: {
                client_side_validation: true,
                required: false,
                serialized_name: 'lastHeartbeat',
                type: {
                  name: 'DateTime'
                }
              },
              version_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'versionStatus',
                type: {
                  name: 'String'
                }
              },
              mobility_service_updates: {
                client_side_validation: true,
                required: false,
                serialized_name: 'mobilityServiceUpdates',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'MobilityServiceUpdateElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MobilityServiceUpdate'
                      }
                  }
                }
              },
              host_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'hostId',
                type: {
                  name: 'String'
                }
              },
              machine_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'machineCount',
                type: {
                  name: 'String'
                }
              },
              replication_pair_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'replicationPairCount',
                type: {
                  name: 'String'
                }
              },
              system_load: {
                client_side_validation: true,
                required: false,
                serialized_name: 'systemLoad',
                type: {
                  name: 'String'
                }
              },
              system_load_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'systemLoadStatus',
                type: {
                  name: 'String'
                }
              },
              cpu_load: {
                client_side_validation: true,
                required: false,
                serialized_name: 'cpuLoad',
                type: {
                  name: 'String'
                }
              },
              cpu_load_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'cpuLoadStatus',
                type: {
                  name: 'String'
                }
              },
              total_memory_in_bytes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'totalMemoryInBytes',
                type: {
                  name: 'Number'
                }
              },
              available_memory_in_bytes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'availableMemoryInBytes',
                type: {
                  name: 'Number'
                }
              },
              memory_usage_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'memoryUsageStatus',
                type: {
                  name: 'String'
                }
              },
              total_space_in_bytes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'totalSpaceInBytes',
                type: {
                  name: 'Number'
                }
              },
              available_space_in_bytes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'availableSpaceInBytes',
                type: {
                  name: 'Number'
                }
              },
              space_usage_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'spaceUsageStatus',
                type: {
                  name: 'String'
                }
              },
              ps_service_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'psServiceStatus',
                type: {
                  name: 'String'
                }
              },
              ssl_cert_expiry_date: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sslCertExpiryDate',
                type: {
                  name: 'DateTime'
                }
              },
              ssl_cert_expiry_remaining_days: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sslCertExpiryRemainingDays',
                type: {
                  name: 'Number'
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
              health_errors: {
                client_side_validation: true,
                required: false,
                serialized_name: 'healthErrors',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'HealthErrorElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'HealthError'
                      }
                  }
                }
              },
              agent_expiry_date: {
                client_side_validation: true,
                required: false,
                serialized_name: 'agentExpiryDate',
                type: {
                  name: 'DateTime'
                }
              },
              agent_version_details: {
                client_side_validation: true,
                required: false,
                serialized_name: 'agentVersionDetails',
                type: {
                  name: 'Composite',
                  class_name: 'VersionDetails'
                }
              }
            }
          }
        }
      end
    end
  end
end
