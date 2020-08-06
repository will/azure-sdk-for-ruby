# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2017_03_01_preview
  module Models
    #
    # The execution options of a job step.
    #
    class JobStepExecutionOptions

      include MsRestAzure

      # @return [Integer] Execution timeout for the job step. Default value:
      # 43200 .
      attr_accessor :timeout_seconds

      # @return [Integer] Maximum number of times the job step will be
      # reattempted if the first attempt fails. Default value: 10 .
      attr_accessor :retry_attempts

      # @return [Integer] Initial delay between retries for job step execution.
      # Default value: 1 .
      attr_accessor :initial_retry_interval_seconds

      # @return [Integer] The maximum amount of time to wait between retries
      # for job step execution. Default value: 120 .
      attr_accessor :maximum_retry_interval_seconds

      # @return [Float] The backoff multiplier for the time between retries.
      # Default value: 2 .
      attr_accessor :retry_interval_backoff_multiplier


      #
      # Mapper for JobStepExecutionOptions class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'JobStepExecutionOptions',
          type: {
            name: 'Composite',
            class_name: 'JobStepExecutionOptions',
            model_properties: {
              timeout_seconds: {
                client_side_validation: true,
                required: false,
                serialized_name: 'timeoutSeconds',
                default_value: 43200,
                type: {
                  name: 'Number'
                }
              },
              retry_attempts: {
                client_side_validation: true,
                required: false,
                serialized_name: 'retryAttempts',
                default_value: 10,
                type: {
                  name: 'Number'
                }
              },
              initial_retry_interval_seconds: {
                client_side_validation: true,
                required: false,
                serialized_name: 'initialRetryIntervalSeconds',
                default_value: 1,
                type: {
                  name: 'Number'
                }
              },
              maximum_retry_interval_seconds: {
                client_side_validation: true,
                required: false,
                serialized_name: 'maximumRetryIntervalSeconds',
                default_value: 120,
                type: {
                  name: 'Number'
                }
              },
              retry_interval_backoff_multiplier: {
                client_side_validation: true,
                required: false,
                serialized_name: 'retryIntervalBackoffMultiplier',
                default_value: 2,
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
