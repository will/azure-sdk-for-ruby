# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::BotService::Mgmt::V2017_12_01_preview
  module Models
    #
    # Properties for a Connection Setting Item
    #
    class ConnectionSettingProperties

      include MsRestAzure

      # @return [String] Client Id associated with the Connection Setting.
      attr_accessor :client_id

      # @return [String] Setting Id set by the service for the Connection
      # Setting.
      attr_accessor :setting_id

      # @return [String] Client Secret associated with the Connection Setting
      attr_accessor :client_secret

      # @return [String] Scopes associated with the Connection Setting
      attr_accessor :scopes

      # @return [String] Service Provider Id associated with the Connection
      # Setting
      attr_accessor :service_provider_id

      # @return [String] Service Provider Display Name associated with the
      # Connection Setting
      attr_accessor :service_provider_display_name

      # @return [Array<ConnectionSettingParameter>] Service Provider Parameters
      # associated with the Connection Setting
      attr_accessor :parameters


      #
      # Mapper for ConnectionSettingProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ConnectionSettingProperties',
          type: {
            name: 'Composite',
            class_name: 'ConnectionSettingProperties',
            model_properties: {
              client_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'clientId',
                type: {
                  name: 'String'
                }
              },
              setting_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'settingId',
                type: {
                  name: 'String'
                }
              },
              client_secret: {
                client_side_validation: true,
                required: false,
                serialized_name: 'clientSecret',
                type: {
                  name: 'String'
                }
              },
              scopes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'scopes',
                type: {
                  name: 'String'
                }
              },
              service_provider_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'serviceProviderId',
                type: {
                  name: 'String'
                }
              },
              service_provider_display_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'serviceProviderDisplayName',
                type: {
                  name: 'String'
                }
              },
              parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'parameters',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ConnectionSettingParameterElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ConnectionSettingParameter'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
