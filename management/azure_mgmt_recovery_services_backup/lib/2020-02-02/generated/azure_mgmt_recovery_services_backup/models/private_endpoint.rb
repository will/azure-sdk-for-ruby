# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2020_02_02
  module Models
    #
    # The Private Endpoint network resource that is linked to the Private
    # Endpoint connection
    #
    class PrivateEndpoint

      include MsRestAzure

      # @return [String] Gets or sets id
      attr_accessor :id


      #
      # Mapper for PrivateEndpoint class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PrivateEndpoint',
          type: {
            name: 'Composite',
            class_name: 'PrivateEndpoint',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
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
