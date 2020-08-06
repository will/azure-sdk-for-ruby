# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Signalr::Mgmt::V2018_03_01_preview
  module Models
    #
    # Result of the request to check name availability. It contains a flag and
    # possible reason of failure.
    #
    class NameAvailability

      include MsRestAzure

      # @return [Boolean] Indicates whether the name is available or not.
      attr_accessor :name_available

      # @return [String] The reason of the availability. Required if name is
      # not available.
      attr_accessor :reason

      # @return [String] The message of the operation.
      attr_accessor :message


      #
      # Mapper for NameAvailability class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NameAvailability',
          type: {
            name: 'Composite',
            class_name: 'NameAvailability',
            model_properties: {
              name_available: {
                client_side_validation: true,
                required: false,
                serialized_name: 'nameAvailable',
                type: {
                  name: 'Boolean'
                }
              },
              reason: {
                client_side_validation: true,
                required: false,
                serialized_name: 'reason',
                type: {
                  name: 'String'
                }
              },
              message: {
                client_side_validation: true,
                required: false,
                serialized_name: 'message',
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
