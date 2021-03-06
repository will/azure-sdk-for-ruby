# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Logic::Mgmt::V2015_02_01_preview
  module Models
    #
    # Model object.
    #
    #
    class WorkflowRunTrigger

      include MsRestAzure

      # @return [String] Gets the name.
      attr_accessor :name

      # @return Gets the inputs.
      attr_accessor :inputs

      # @return [ContentLink] Gets the link to inputs.
      attr_accessor :inputs_link

      # @return Gets the outputs.
      attr_accessor :outputs

      # @return [ContentLink] Gets the link to outputs.
      attr_accessor :outputs_link

      # @return [DateTime] Gets the start time.
      attr_accessor :start_time

      # @return [DateTime] Gets the end time.
      attr_accessor :end_time

      # @return [String] Gets the trackingId.
      attr_accessor :tracking_id

      # @return [String] Gets the code.
      attr_accessor :code

      # @return [WorkflowStatus] Gets the status. Possible values include:
      # 'NotSpecified', 'Paused', 'Running', 'Waiting', 'Succeeded', 'Skipped',
      # 'Suspended', 'Cancelled', 'Failed', 'Faulted', 'TimedOut', 'Aborted'
      attr_accessor :status

      # @return Gets the error.
      attr_accessor :error


      #
      # Mapper for WorkflowRunTrigger class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'WorkflowRunTrigger',
          type: {
            name: 'Composite',
            class_name: 'WorkflowRunTrigger',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              inputs: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'inputs',
                type: {
                  name: 'Object'
                }
              },
              inputs_link: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'inputsLink',
                type: {
                  name: 'Composite',
                  class_name: 'ContentLink'
                }
              },
              outputs: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'outputs',
                type: {
                  name: 'Object'
                }
              },
              outputs_link: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'outputsLink',
                type: {
                  name: 'Composite',
                  class_name: 'ContentLink'
                }
              },
              start_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'startTime',
                type: {
                  name: 'DateTime'
                }
              },
              end_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'endTime',
                type: {
                  name: 'DateTime'
                }
              },
              tracking_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'trackingId',
                type: {
                  name: 'String'
                }
              },
              code: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'code',
                type: {
                  name: 'String'
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'status',
                type: {
                  name: 'Enum',
                  module: 'WorkflowStatus'
                }
              },
              error: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'error',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
