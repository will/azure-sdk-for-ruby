# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2017_03_01
  module Models
    #
    # Tenant access information contract of the API Management service.
    #
    class AccessInformationContract

      include MsRestAzure

      # @return [String] Identifier.
      attr_accessor :id

      # @return [String] Primary access key.
      attr_accessor :primary_key

      # @return [String] Secondary access key.
      attr_accessor :secondary_key

      # @return [Boolean] Tenant access information of the API Management
      # service.
      attr_accessor :enabled


      #
      # Mapper for AccessInformationContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AccessInformationContract',
          type: {
            name: 'Composite',
            class_name: 'AccessInformationContract',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              primary_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'primaryKey',
                type: {
                  name: 'String'
                }
              },
              secondary_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'secondaryKey',
                type: {
                  name: 'String'
                }
              },
              enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'enabled',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
