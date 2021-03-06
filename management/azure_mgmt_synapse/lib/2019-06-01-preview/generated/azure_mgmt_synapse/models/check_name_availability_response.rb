# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Synapse::Mgmt::V2019_06_01_preview
  module Models
    #
    # Check name availability response

    # A response saying whether the workspace name is available
    #
    class CheckNameAvailabilityResponse

      include MsRestAzure

      # @return [String] Validation message
      attr_accessor :message

      # @return [Boolean] Whether the workspace name is available
      attr_accessor :available

      # @return [String] Reason the workspace name is or is not available
      attr_accessor :reason

      # @return [String] Workspace name
      attr_accessor :name


      #
      # Mapper for CheckNameAvailabilityResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CheckNameAvailabilityResponse',
          type: {
            name: 'Composite',
            class_name: 'CheckNameAvailabilityResponse',
            model_properties: {
              message: {
                client_side_validation: true,
                required: false,
                serialized_name: 'message',
                type: {
                  name: 'String'
                }
              },
              available: {
                client_side_validation: true,
                required: false,
                serialized_name: 'available',
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
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
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
