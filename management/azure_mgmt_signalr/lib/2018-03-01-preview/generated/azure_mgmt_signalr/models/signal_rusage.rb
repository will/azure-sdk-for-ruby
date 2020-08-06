# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Signalr::Mgmt::V2018_03_01_preview
  module Models
    #
    # Object that describes a specific usage of SignalR resources.
    #
    class SignalRUsage

      include MsRestAzure

      # @return [String] Fully qualified ARM resource id
      attr_accessor :id

      # @return [Integer] Current value for the usage quota.
      attr_accessor :current_value

      # @return [Integer] The maximum permitted value for the usage quota. If
      # there is no limit, this value will be -1.
      attr_accessor :limit

      # @return [SignalRUsageName] Localizable String object containing the
      # name and a localized value.
      attr_accessor :name

      # @return [String] Representing the units of the usage quota. Possible
      # values are: Count, Bytes, Seconds, Percent, CountPerSecond,
      # BytesPerSecond.
      attr_accessor :unit


      #
      # Mapper for SignalRUsage class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SignalRUsage',
          type: {
            name: 'Composite',
            class_name: 'SignalRUsage',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              current_value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'currentValue',
                type: {
                  name: 'Number'
                }
              },
              limit: {
                client_side_validation: true,
                required: false,
                serialized_name: 'limit',
                type: {
                  name: 'Number'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'Composite',
                  class_name: 'SignalRUsageName'
                }
              },
              unit: {
                client_side_validation: true,
                required: false,
                serialized_name: 'unit',
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
