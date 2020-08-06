# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_05_01
  module Models
    #
    # The session detail for a target.
    #
    class BastionActiveSession

      include MsRestAzure

      # @return [String] A unique id for the session.
      attr_accessor :session_id

      # @return The time when the session started.
      attr_accessor :start_time

      # @return [String] The subscription id for the target virtual machine.
      attr_accessor :target_subscription_id

      # @return [String] The type of the resource.
      attr_accessor :resource_type

      # @return [String] The host name of the target.
      attr_accessor :target_host_name

      # @return [String] The resource group of the target.
      attr_accessor :target_resource_group

      # @return [String] The user name who is active on this session.
      attr_accessor :user_name

      # @return [String] The IP Address of the target.
      attr_accessor :target_ip_address

      # @return [BastionConnectProtocol] The protocol used to connect to the
      # target. Possible values include: 'SSH', 'RDP'
      attr_accessor :protocol

      # @return [String] The resource id of the target.
      attr_accessor :target_resource_id

      # @return [Float] Duration in mins the session has been active.
      attr_accessor :session_duration_in_mins


      #
      # Mapper for BastionActiveSession class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'BastionActiveSession',
          type: {
            name: 'Composite',
            class_name: 'BastionActiveSession',
            model_properties: {
              session_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'sessionId',
                type: {
                  name: 'String'
                }
              },
              start_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'startTime',
                type: {
                  name: 'Object'
                }
              },
              target_subscription_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'targetSubscriptionId',
                type: {
                  name: 'String'
                }
              },
              resource_type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'resourceType',
                type: {
                  name: 'String'
                }
              },
              target_host_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'targetHostName',
                type: {
                  name: 'String'
                }
              },
              target_resource_group: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'targetResourceGroup',
                type: {
                  name: 'String'
                }
              },
              user_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'userName',
                type: {
                  name: 'String'
                }
              },
              target_ip_address: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'targetIpAddress',
                type: {
                  name: 'String'
                }
              },
              protocol: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'protocol',
                type: {
                  name: 'String'
                }
              },
              target_resource_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'targetResourceId',
                type: {
                  name: 'String'
                }
              },
              session_duration_in_mins: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'sessionDurationInMins',
                type: {
                  name: 'Double'
                }
              }
            }
          }
        }
      end
    end
  end
end
