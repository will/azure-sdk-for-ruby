# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Automation::Mgmt::V2015_10_31
  module Models
    #
    # Definition of the job.
    #
    class Job

      include MsRestAzure

      # @return [String] Id of the resource.
      attr_accessor :id

      # @return [RunbookAssociationProperty] Gets or sets the runbook.
      attr_accessor :runbook

      # @return [String] Gets or sets the job started by.
      attr_accessor :started_by

      # @return [String] Gets or sets the runOn which specifies the group name
      # where the job is to be executed.
      attr_accessor :run_on

      # @return Gets or sets the id of the job.
      attr_accessor :job_id

      # @return [DateTime] Gets or sets the creation time of the job.
      attr_accessor :creation_time

      # @return [JobStatus] Gets or sets the status of the job. Possible values
      # include: 'New', 'Activating', 'Running', 'Completed', 'Failed',
      # 'Stopped', 'Blocked', 'Suspended', 'Disconnected', 'Suspending',
      # 'Stopping', 'Resuming', 'Removing'
      attr_accessor :status

      # @return [String] Gets or sets the status details of the job.
      attr_accessor :status_details

      # @return [DateTime] Gets or sets the start time of the job.
      attr_accessor :start_time

      # @return [DateTime] Gets or sets the end time of the job.
      attr_accessor :end_time

      # @return [String] Gets or sets the exception of the job.
      attr_accessor :exception

      # @return [DateTime] Gets or sets the last modified time of the job.
      attr_accessor :last_modified_time

      # @return [DateTime] Gets or sets the last status modified time of the
      # job.
      attr_accessor :last_status_modified_time

      # @return [Hash{String => String}] Gets or sets the parameters of the
      # job.
      attr_accessor :parameters

      # @return [JobProvisioningState] The provisioning state of a resource.
      # Possible values include: 'Failed', 'Succeeded', 'Suspended',
      # 'Processing'
      attr_accessor :provisioning_state

      # @return [String] Gets or sets the id of job schedule.
      attr_accessor :job_schedule_id

      # @return [ScheduleAssociationProperty] Gets or sets the runbook.
      attr_accessor :schedule


      #
      # Mapper for Job class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Job',
          type: {
            name: 'Composite',
            class_name: 'Job',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              runbook: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.runbook',
                type: {
                  name: 'Composite',
                  class_name: 'RunbookAssociationProperty'
                }
              },
              started_by: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.startedBy',
                type: {
                  name: 'String'
                }
              },
              run_on: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.runOn',
                type: {
                  name: 'String'
                }
              },
              job_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.jobId',
                type: {
                  name: 'String'
                }
              },
              creation_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.creationTime',
                type: {
                  name: 'DateTime'
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
              status_details: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.statusDetails',
                type: {
                  name: 'String'
                }
              },
              start_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.startTime',
                type: {
                  name: 'DateTime'
                }
              },
              end_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.endTime',
                type: {
                  name: 'DateTime'
                }
              },
              exception: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.exception',
                type: {
                  name: 'String'
                }
              },
              last_modified_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.lastModifiedTime',
                type: {
                  name: 'DateTime'
                }
              },
              last_status_modified_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.lastStatusModifiedTime',
                type: {
                  name: 'DateTime'
                }
              },
              parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.parameters',
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
              provisioning_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              job_schedule_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.jobScheduleId',
                type: {
                  name: 'String'
                }
              },
              schedule: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.schedule',
                type: {
                  name: 'Composite',
                  class_name: 'ScheduleAssociationProperty'
                }
              }
            }
          }
        }
      end
    end
  end
end
