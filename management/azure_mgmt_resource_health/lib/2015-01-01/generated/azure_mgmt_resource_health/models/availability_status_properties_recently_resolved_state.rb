# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ResourceHealth::Mgmt::V2015_01_01
  module Models
    #
    # An annotation describing a change in the availabilityState to Available
    # from Unavailable with a reasonType of type Unplanned
    #
    class AvailabilityStatusPropertiesRecentlyResolvedState

      include MsRestAzure

      # @return [DateTime] Timestamp for when the availabilityState changed to
      # Unavailable
      attr_accessor :unavailable_occurred_time

      # @return [DateTime] Timestamp when the availabilityState changes to
      # Available.
      attr_accessor :resolved_time

      # @return [String] Brief description of cause of the resource becoming
      # unavailable.
      attr_accessor :unavailability_summary


      #
      # Mapper for AvailabilityStatusPropertiesRecentlyResolvedState class as
      # Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'availabilityStatus_properties_recentlyResolvedState',
          type: {
            name: 'Composite',
            class_name: 'AvailabilityStatusPropertiesRecentlyResolvedState',
            model_properties: {
              unavailable_occurred_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'unavailableOccurredTime',
                type: {
                  name: 'DateTime'
                }
              },
              resolved_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resolvedTime',
                type: {
                  name: 'DateTime'
                }
              },
              unavailability_summary: {
                client_side_validation: true,
                required: false,
                serialized_name: 'unavailabilitySummary',
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
