# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2016_03_01
  module Models
    #
    # Information regarding availbility of a resource name.
    #
    class ResourceNameAvailability

      include MsRestAzure

      # @return [Boolean] <code>true</code> indicates name is valid and
      # available. <code>false</code> indicates the name is invalid,
      # unavailable, or both.
      attr_accessor :name_available

      # @return [InAvailabilityReasonType] <code>Invalid</code> indicates the
      # name provided does not match Azure App Service naming requirements.
      # <code>AlreadyExists</code> indicates that the name is already in use
      # and is therefore unavailable. Possible values include: 'Invalid',
      # 'AlreadyExists'
      attr_accessor :reason

      # @return [String] If reason == invalid, provide the user with the reason
      # why the given name is invalid, and provide the resource naming
      # requirements so that the user can select a valid name. If reason ==
      # AlreadyExists, explain that resource name is already in use, and direct
      # them to select a different name.
      attr_accessor :message


      #
      # Mapper for ResourceNameAvailability class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ResourceNameAvailability',
          type: {
            name: 'Composite',
            class_name: 'ResourceNameAvailability',
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
