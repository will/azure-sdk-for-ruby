# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2019_05_13
  module Models
    #
    # MAB workload-specific job task details.
    #
    class MabJobTaskDetails

      include MsRestAzure

      # @return [String] The task display name.
      attr_accessor :task_id

      # @return [DateTime] The start time.
      attr_accessor :start_time

      # @return [DateTime] The end time.
      attr_accessor :end_time

      # @return [Duration] Time elapsed for task.
      attr_accessor :duration

      # @return [String] The status.
      attr_accessor :status


      #
      # Mapper for MabJobTaskDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MabJobTaskDetails',
          type: {
            name: 'Composite',
            class_name: 'MabJobTaskDetails',
            model_properties: {
              task_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'taskId',
                type: {
                  name: 'String'
                }
              },
              start_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'startTime',
                type: {
                  name: 'DateTime'
                }
              },
              end_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'endTime',
                type: {
                  name: 'DateTime'
                }
              },
              duration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'duration',
                type: {
                  name: 'TimeSpan'
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
