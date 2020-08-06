# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2015_06_01
  module Models
    #
    # Output of check name availability API.
    #
    class CheckNameAvailabilityOutput

      include MsRestAzure

      # @return [Boolean] Indicates whether the name is available.
      attr_accessor :name_available

      # @return [String] The reason why the name is not available.
      attr_accessor :reason

      # @return [String] The detailed error message describing why the name is
      # not available.
      attr_accessor :message


      #
      # Mapper for CheckNameAvailabilityOutput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CheckNameAvailabilityOutput',
          type: {
            name: 'Composite',
            class_name: 'CheckNameAvailabilityOutput',
            model_properties: {
              name_available: {
                client_side_validation: true,
                required: false,
                serialized_name: 'NameAvailable',
                type: {
                  name: 'Boolean'
                }
              },
              reason: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Reason',
                type: {
                  name: 'String'
                }
              },
              message: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Message',
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
