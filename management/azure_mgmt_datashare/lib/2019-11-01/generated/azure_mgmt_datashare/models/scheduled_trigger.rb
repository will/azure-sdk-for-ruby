# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataShare::Mgmt::V2019_11_01
  module Models
    #
    # A type of trigger based on schedule
    #
    class ScheduledTrigger < Trigger

      include MsRestAzure


      def initialize
        @kind = "ScheduleBased"
      end

      attr_accessor :kind

      # @return [DateTime] Time at which the trigger was created.
      attr_accessor :created_at

      # @return [ProvisioningState] Gets the provisioning state. Possible
      # values include: 'Succeeded', 'Creating', 'Deleting', 'Moving', 'Failed'
      attr_accessor :provisioning_state

      # @return [RecurrenceInterval] Recurrence Interval. Possible values
      # include: 'Hour', 'Day'
      attr_accessor :recurrence_interval

      # @return [SynchronizationMode] Synchronization mode. Possible values
      # include: 'Incremental', 'FullSync'
      attr_accessor :synchronization_mode

      # @return [DateTime] Synchronization time
      attr_accessor :synchronization_time

      # @return [TriggerStatus] Gets the trigger state. Possible values
      # include: 'Active', 'Inactive', 'SourceSynchronizationSettingDeleted'
      attr_accessor :trigger_status

      # @return [String] Name of the user who created the trigger.
      attr_accessor :user_name


      #
      # Mapper for ScheduledTrigger class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ScheduleBased',
          type: {
            name: 'Composite',
            class_name: 'ScheduledTrigger',
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
              kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              created_at: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.createdAt',
                type: {
                  name: 'DateTime'
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
              recurrence_interval: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.recurrenceInterval',
                type: {
                  name: 'String'
                }
              },
              synchronization_mode: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.synchronizationMode',
                type: {
                  name: 'String'
                }
              },
              synchronization_time: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.synchronizationTime',
                type: {
                  name: 'DateTime'
                }
              },
              trigger_status: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.triggerStatus',
                type: {
                  name: 'String'
                }
              },
              user_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.userName',
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
