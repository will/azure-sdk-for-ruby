# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # Implements the event query parameter.
    #
    class EventQueryParameter

      include MsRestAzure

      # @return [String] The source id of the events to be queried.
      attr_accessor :event_code

      # @return [String] The severity of the events to be queried.
      attr_accessor :severity

      # @return [String] The type of the events to be queried.
      attr_accessor :event_type

      # @return [String] The affected object server id of the events to be
      # queried.
      attr_accessor :fabric_name

      # @return [String] The affected object name of the events to be queried.
      attr_accessor :affected_object_friendly_name

      # @return [DateTime] The start time of the time range within which the
      # events are to be queried.
      attr_accessor :start_time

      # @return [DateTime] The end time of the time range within which the
      # events are to be queried.
      attr_accessor :end_time


      #
      # Mapper for EventQueryParameter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EventQueryParameter',
          type: {
            name: 'Composite',
            class_name: 'EventQueryParameter',
            model_properties: {
              event_code: {
                client_side_validation: true,
                required: false,
                serialized_name: 'EventCode',
                type: {
                  name: 'String'
                }
              },
              severity: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Severity',
                type: {
                  name: 'String'
                }
              },
              event_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'EventType',
                type: {
                  name: 'String'
                }
              },
              fabric_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'FabricName',
                type: {
                  name: 'String'
                }
              },
              affected_object_friendly_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'AffectedObjectFriendlyName',
                type: {
                  name: 'String'
                }
              },
              start_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'StartTime',
                type: {
                  name: 'DateTime'
                }
              },
              end_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'EndTime',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
