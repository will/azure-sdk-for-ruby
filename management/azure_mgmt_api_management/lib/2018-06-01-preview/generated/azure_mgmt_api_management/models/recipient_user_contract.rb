# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_06_01_preview
  module Models
    #
    # Recipient User details.
    #
    class RecipientUserContract < Resource

      include MsRestAzure

      # @return [String] API Management UserId subscribed to notification.
      attr_accessor :user_id


      #
      # Mapper for RecipientUserContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RecipientUserContract',
          type: {
            name: 'Composite',
            class_name: 'RecipientUserContract',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              user_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.userId',
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
