# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # The workflow trigger recurrence.
    #
    class ScheduleTriggerRecurrence

      include MsRestAzure

      # @return Unmatched properties from the message are deserialized this
      # collection
      attr_accessor :additional_properties

      # @return [RecurrenceFrequency] The frequency. Possible values include:
      # 'NotSpecified', 'Minute', 'Hour', 'Day', 'Week', 'Month', 'Year'
      attr_accessor :frequency

      # @return [Integer] The interval.
      attr_accessor :interval

      # @return [DateTime] The start time.
      attr_accessor :start_time

      # @return [DateTime] The end time.
      attr_accessor :end_time

      # @return [String] The time zone.
      attr_accessor :time_zone

      # @return [RecurrenceSchedule] The recurrence schedule.
      attr_accessor :schedule


      #
      # Mapper for ScheduleTriggerRecurrence class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ScheduleTriggerRecurrence',
          type: {
            name: 'Composite',
            class_name: 'ScheduleTriggerRecurrence',
            model_properties: {
              additional_properties: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              frequency: {
                client_side_validation: true,
                required: false,
                serialized_name: 'frequency',
                type: {
                  name: 'String'
                }
              },
              interval: {
                client_side_validation: true,
                required: false,
                serialized_name: 'interval',
                type: {
                  name: 'Number'
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
              time_zone: {
                client_side_validation: true,
                required: false,
                serialized_name: 'timeZone',
                type: {
                  name: 'String'
                }
              },
              schedule: {
                client_side_validation: true,
                required: false,
                serialized_name: 'schedule',
                type: {
                  name: 'Composite',
                  class_name: 'RecurrenceSchedule'
                }
              }
            }
          }
        }
      end
    end
  end
end
