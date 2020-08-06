# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Batch::Mgmt::V2019_08_01
  module Models
    #
    # A task which is run when a compute node joins a pool in the Azure Batch
    # service, or when the compute node is rebooted or reimaged.

    # In some cases the start task may be re-run even though the node was not
    # rebooted. Due to this, start tasks should be idempotent and exit
    # gracefully if the setup they're performing has already been done. Special
    # care should be taken to avoid start tasks which create breakaway process
    # or install/launch services from the start task working directory, as this
    # will block Batch from being able to re-run the start task.
    #
    class StartTask

      include MsRestAzure

      # @return [String] The command line of the start task. The command line
      # does not run under a shell, and therefore cannot take advantage of
      # shell features such as environment variable expansion. If you want to
      # take advantage of such features, you should invoke the shell in the
      # command line, for example using "cmd /c MyCommand" in Windows or
      # "/bin/sh -c MyCommand" in Linux. Required if any other properties of
      # the startTask are specified.
      attr_accessor :command_line

      # @return [Array<ResourceFile>] A list of files that the Batch service
      # will download to the compute node before running the command line.
      attr_accessor :resource_files

      # @return [Array<EnvironmentSetting>] A list of environment variable
      # settings for the start task.
      attr_accessor :environment_settings

      # @return [UserIdentity] The user identity under which the start task
      # runs. If omitted, the task runs as a non-administrative user unique to
      # the task.
      attr_accessor :user_identity

      # @return [Integer] The maximum number of times the task may be retried.
      # The Batch service retries a task if its exit code is nonzero. Note that
      # this value specifically controls the number of retries. The Batch
      # service will try the task once, and may then retry up to this limit.
      # For example, if the maximum retry count is 3, Batch tries the task up
      # to 4 times (one initial try and 3 retries). If the maximum retry count
      # is 0, the Batch service does not retry the task. If the maximum retry
      # count is -1, the Batch service retries the task without limit.
      attr_accessor :max_task_retry_count

      # @return [Boolean] Whether the Batch service should wait for the start
      # task to complete successfully (that is, to exit with exit code 0)
      # before scheduling any tasks on the compute node. If true and the start
      # task fails on a compute node, the Batch service retries the start task
      # up to its maximum retry count (maxTaskRetryCount). If the task has
      # still not completed successfully after all retries, then the Batch
      # service marks the compute node unusable, and will not schedule tasks to
      # it. This condition can be detected via the node state and scheduling
      # error detail. If false, the Batch service will not wait for the start
      # task to complete. In this case, other tasks can start executing on the
      # compute node while the start task is still running; and even if the
      # start task fails, new tasks will continue to be scheduled on the node.
      # The default is true.
      attr_accessor :wait_for_success

      # @return [TaskContainerSettings] The settings for the container under
      # which the start task runs. When this is specified, all directories
      # recursively below the AZ_BATCH_NODE_ROOT_DIR (the root of Azure Batch
      # directories on the node) are mapped into the container, all task
      # environment variables are mapped into the container, and the task
      # command line is executed in the container.
      attr_accessor :container_settings


      #
      # Mapper for StartTask class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'StartTask',
          type: {
            name: 'Composite',
            class_name: 'StartTask',
            model_properties: {
              command_line: {
                client_side_validation: true,
                required: false,
                serialized_name: 'commandLine',
                type: {
                  name: 'String'
                }
              },
              resource_files: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resourceFiles',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ResourceFileElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ResourceFile'
                      }
                  }
                }
              },
              environment_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'environmentSettings',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'EnvironmentSettingElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'EnvironmentSetting'
                      }
                  }
                }
              },
              user_identity: {
                client_side_validation: true,
                required: false,
                serialized_name: 'userIdentity',
                type: {
                  name: 'Composite',
                  class_name: 'UserIdentity'
                }
              },
              max_task_retry_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'maxTaskRetryCount',
                type: {
                  name: 'Number'
                }
              },
              wait_for_success: {
                client_side_validation: true,
                required: false,
                serialized_name: 'waitForSuccess',
                type: {
                  name: 'Boolean'
                }
              },
              container_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'containerSettings',
                type: {
                  name: 'Composite',
                  class_name: 'TaskContainerSettings'
                }
              }
            }
          }
        }
      end
    end
  end
end
