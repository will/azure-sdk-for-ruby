# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Mgmt::V2017_04_18
  module Models
    #
    # The user owned storage for Cognitive Services account.
    #
    class UserOwnedStorage

      include MsRestAzure

      # @return [String] Full resource id of a Microsoft.Storage resource.
      attr_accessor :resource_id


      #
      # Mapper for UserOwnedStorage class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'UserOwnedStorage',
          type: {
            name: 'Composite',
            class_name: 'UserOwnedStorage',
            model_properties: {
              resource_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resourceId',
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
