# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CostManagement::Mgmt::V2019_01_01
  module Models
    #
    # A export execution.
    #
    class ExportExecution < Resource

      include MsRestAzure

      # @return [ExecutionType] The type of the export execution. Possible
      # values include: 'OnDemand', 'Scheduled'
      attr_accessor :execution_type

      # @return [ExecutionStatus] The status of the export execution. Possible
      # values include: 'Queued', 'InProgress', 'Completed', 'Failed',
      # 'Timeout', 'NewDataNotAvailable', 'DataNotAvailable'
      attr_accessor :status

      # @return [String] The identifier for the entity that executed the
      # export. For OnDemand executions, it is the email id. For Scheduled
      # executions, it is the constant value - System.
      attr_accessor :submitted_by

      # @return [DateTime] The time when export was queued to be executed.
      attr_accessor :submitted_time

      # @return [DateTime] The time when export was picked up to be executed.
      attr_accessor :processing_start_time

      # @return [DateTime] The time when export execution finished.
      attr_accessor :processing_end_time

      # @return [String] The name of the file export got written to.
      attr_accessor :file_name

      # @return [CommonExportProperties]
      attr_accessor :run_settings


      #
      # Mapper for ExportExecution class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ExportExecution',
          type: {
            name: 'Composite',
            class_name: 'ExportExecution',
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
              tags: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              execution_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.executionType',
                type: {
                  name: 'String'
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.status',
                type: {
                  name: 'String'
                }
              },
              submitted_by: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.submittedBy',
                type: {
                  name: 'String'
                }
              },
              submitted_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.submittedTime',
                type: {
                  name: 'DateTime'
                }
              },
              processing_start_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.processingStartTime',
                type: {
                  name: 'DateTime'
                }
              },
              processing_end_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.processingEndTime',
                type: {
                  name: 'DateTime'
                }
              },
              file_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.fileName',
                type: {
                  name: 'String'
                }
              },
              run_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.runSettings',
                type: {
                  name: 'Composite',
                  class_name: 'CommonExportProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
