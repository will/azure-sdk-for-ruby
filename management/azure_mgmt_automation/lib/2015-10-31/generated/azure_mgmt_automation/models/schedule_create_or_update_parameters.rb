# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Automation::Mgmt::V2015_10_31
  module Models
    #
    # The parameters supplied to the create or update schedule operation.
    #
    class ScheduleCreateOrUpdateParameters

      include MsRestAzure

      # @return [String] Gets or sets the name of the Schedule.
      attr_accessor :name

      # @return [String] Gets or sets the description of the schedule.
      attr_accessor :description

      # @return [DateTime] Gets or sets the start time of the schedule.
      attr_accessor :start_time

      # @return [DateTime] Gets or sets the end time of the schedule.
      attr_accessor :expiry_time

      # @return Gets or sets the interval of the schedule.
      attr_accessor :interval

      # @return [ScheduleFrequency] Possible values include: 'OneTime', 'Day',
      # 'Hour', 'Week', 'Month'
      attr_accessor :frequency

      # @return [String] Gets or sets the time zone of the schedule.
      attr_accessor :time_zone

      # @return [AdvancedSchedule] Gets or sets the AdvancedSchedule.
      attr_accessor :advanced_schedule


      #
      # Mapper for ScheduleCreateOrUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ScheduleCreateOrUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'ScheduleCreateOrUpdateParameters',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              start_time: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.startTime',
                type: {
                  name: 'DateTime'
                }
              },
              expiry_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.expiryTime',
                type: {
                  name: 'DateTime'
                }
              },
              interval: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.interval',
                type: {
                  name: 'Object'
                }
              },
              frequency: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.frequency',
                type: {
                  name: 'String'
                }
              },
              time_zone: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.timeZone',
                type: {
                  name: 'String'
                }
              },
              advanced_schedule: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.advancedSchedule',
                type: {
                  name: 'Composite',
                  class_name: 'AdvancedSchedule'
                }
              }
            }
          }
        }
      end
    end
  end
end
