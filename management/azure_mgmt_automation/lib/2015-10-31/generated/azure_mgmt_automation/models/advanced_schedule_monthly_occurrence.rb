# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Automation::Mgmt::V2015_10_31
  module Models
    #
    # The properties of the create advanced schedule monthly occurrence.
    #
    class AdvancedScheduleMonthlyOccurrence

      include MsRestAzure

      # @return [Integer] Occurrence of the week within the month. Must be
      # between 1 and 5
      attr_accessor :occurrence

      # @return [ScheduleDay] Day of the occurrence. Must be one of monday,
      # tuesday, wednesday, thursday, friday, saturday, sunday. Possible values
      # include: 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday',
      # 'Saturday', 'Sunday'
      attr_accessor :day


      #
      # Mapper for AdvancedScheduleMonthlyOccurrence class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AdvancedScheduleMonthlyOccurrence',
          type: {
            name: 'Composite',
            class_name: 'AdvancedScheduleMonthlyOccurrence',
            model_properties: {
              occurrence: {
                client_side_validation: true,
                required: false,
                serialized_name: 'occurrence',
                type: {
                  name: 'Number'
                }
              },
              day: {
                client_side_validation: true,
                required: false,
                serialized_name: 'day',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
