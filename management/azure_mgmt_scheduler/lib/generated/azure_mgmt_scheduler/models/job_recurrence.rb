# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Scheduler
  module Models
    #
    # Model object.
    #
    #
    class JobRecurrence

      include MsRestAzure

      # @return [RecurrenceFrequency] Gets or sets the frequency of recurrence
      # (second, minute, hour, day, week, month). Possible values include:
      # 'Minute', 'Hour', 'Day', 'Week', 'Month'
      attr_accessor :frequency

      # @return [Integer] Gets or sets the interval between retries.
      attr_accessor :interval

      # @return [Integer] Gets or sets the maximum number of times that the job
      # should run.
      attr_accessor :count

      # @return [DateTime] Gets or sets the time at which the job will
      # complete.
      attr_accessor :end_time

      # @return [JobRecurrenceSchedule]
      attr_accessor :schedule


      #
      # Mapper for JobRecurrence class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'JobRecurrence',
          type: {
            name: 'Composite',
            class_name: 'JobRecurrence',
            model_properties: {
              frequency: {
                required: false,
                serialized_name: 'frequency',
                type: {
                  name: 'Enum',
                  module: 'RecurrenceFrequency'
                }
              },
              interval: {
                required: false,
                serialized_name: 'interval',
                type: {
                  name: 'Number'
                }
              },
              count: {
                required: false,
                serialized_name: 'count',
                type: {
                  name: 'Number'
                }
              },
              end_time: {
                required: false,
                serialized_name: 'endTime',
                type: {
                  name: 'DateTime'
                }
              },
              schedule: {
                required: false,
                serialized_name: 'schedule',
                type: {
                  name: 'Composite',
                  class_name: 'JobRecurrenceSchedule'
                }
              }
            }
          }
        }
      end
    end
  end
end
