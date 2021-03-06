# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_06_01_preview
  module Models
    #
    # Parameters supplied to the Update OpenID Connect Provider operation.
    #
    class OpenidConnectProviderUpdateContract

      include MsRestAzure

      # @return [String] User-friendly OpenID Connect Provider name.
      attr_accessor :display_name

      # @return [String] User-friendly description of OpenID Connect Provider.
      attr_accessor :description

      # @return [String] Metadata endpoint URI.
      attr_accessor :metadata_endpoint

      # @return [String] Client ID of developer console which is the client
      # application.
      attr_accessor :client_id

      # @return [String] Client Secret of developer console which is the client
      # application.
      attr_accessor :client_secret


      #
      # Mapper for OpenidConnectProviderUpdateContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OpenidConnectProviderUpdateContract',
          type: {
            name: 'Composite',
            class_name: 'OpenidConnectProviderUpdateContract',
            model_properties: {
              display_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.displayName',
                constraints: {
                  MaxLength: 50
                },
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              metadata_endpoint: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.metadataEndpoint',
                type: {
                  name: 'String'
                }
              },
              client_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.clientId',
                type: {
                  name: 'String'
                }
              },
              client_secret: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.clientSecret',
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
