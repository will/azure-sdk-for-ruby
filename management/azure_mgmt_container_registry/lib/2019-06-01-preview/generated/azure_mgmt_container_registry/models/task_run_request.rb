# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerRegistry::Mgmt::V2019_06_01_preview
  module Models
    #
    # The parameters for a task run request.
    #
    class TaskRunRequest < RunRequest

      include MsRestAzure


      def initialize
        @type = "TaskRunRequest"
      end

      attr_accessor :type

      # @return [String] The resource ID of task against which run has to be
      # queued.
      attr_accessor :task_id

      # @return [OverrideTaskStepProperties] Set of overridable parameters that
      # can be passed when running a Task.
      attr_accessor :override_task_step_properties


      #
      # Mapper for TaskRunRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TaskRunRequest',
          type: {
            name: 'Composite',
            class_name: 'TaskRunRequest',
            model_properties: {
              is_archive_enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'isArchiveEnabled',
                default_value: false,
                type: {
                  name: 'Boolean'
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              task_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'taskId',
                type: {
                  name: 'String'
                }
              },
              override_task_step_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'overrideTaskStepProperties',
                type: {
                  name: 'Composite',
                  class_name: 'OverrideTaskStepProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
