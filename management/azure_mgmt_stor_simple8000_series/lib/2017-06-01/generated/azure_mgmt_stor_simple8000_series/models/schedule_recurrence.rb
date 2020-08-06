# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorSimple8000Series::Mgmt::V2017_06_01
  module Models
    #
    # The schedule recurrence.
    #
    class ScheduleRecurrence

      include MsRestAzure

      # @return [RecurrenceType] The recurrence type. Possible values include:
      # 'Minutes', 'Hourly', 'Daily', 'Weekly'
      attr_accessor :recurrence_type

      # @return [Integer] The recurrence value.
      attr_accessor :recurrence_value

      # @return [Array<DayOfWeek>] The week days list. Applicable only for
      # schedules of recurrence type 'weekly'.
      attr_accessor :weekly_days_list


      #
      # Mapper for ScheduleRecurrence class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ScheduleRecurrence',
          type: {
            name: 'Composite',
            class_name: 'ScheduleRecurrence',
            model_properties: {
              recurrence_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'recurrenceType',
                type: {
                  name: 'Enum',
                  module: 'RecurrenceType'
                }
              },
              recurrence_value: {
                client_side_validation: true,
                required: true,
                serialized_name: 'recurrenceValue',
                type: {
                  name: 'Number'
                }
              },
              weekly_days_list: {
                client_side_validation: true,
                required: false,
                serialized_name: 'weeklyDaysList',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DayOfWeekElementType',
                      type: {
                        name: 'Enum',
                        module: 'DayOfWeek'
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
