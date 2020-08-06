# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerRegistry::Mgmt::V2018_09_01
  module Models
    #
    # The properties of updating a task step.
    #
    class FileTaskStepUpdateParameters < TaskStepUpdateParameters

      include MsRestAzure


      def initialize
        @type = "FileTask"
      end

      attr_accessor :type

      # @return [String] The task template/definition file path relative to the
      # source context.
      attr_accessor :task_file_path

      # @return [String] The values/parameters file path relative to the source
      # context.
      attr_accessor :values_file_path

      # @return [Array<SetValue>] The collection of overridable values that can
      # be passed when running a task.
      attr_accessor :values


      #
      # Mapper for FileTaskStepUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'FileTask',
          type: {
            name: 'Composite',
            class_name: 'FileTaskStepUpdateParameters',
            model_properties: {
              context_path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'contextPath',
                type: {
                  name: 'String'
                }
              },
              context_access_token: {
                client_side_validation: true,
                required: false,
                serialized_name: 'contextAccessToken',
                type: {
                  name: 'String'
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
              task_file_path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'taskFilePath',
                type: {
                  name: 'String'
                }
              },
              values_file_path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'valuesFilePath',
                type: {
                  name: 'String'
                }
              },
              values: {
                client_side_validation: true,
                required: false,
                serialized_name: 'values',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SetValueElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SetValue'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
