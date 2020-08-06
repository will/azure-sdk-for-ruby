# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Signalr::Mgmt::V2018_10_01
  module Models
    #
    # Feature of a SignalR resource, which controls the SignalR runtime
    # behavior.
    #
    class SignalRFeature

      include MsRestAzure

      # @return [FeatureFlags] FeatureFlags is the supported features of Azure
      # SignalR service.
      # - ServiceMode: Flag for backend server for SignalR service. Values
      # allowed: "Default": have your own backend server; "Serverless": your
      # application doesn't have a backend server; "Classic": for backward
      # compatibility. Support both Default and Serverless mode but not
      # recommended; "PredefinedOnly": for future use.
      # - EnableConnectivityLogs: "true"/"false", to enable/disable the
      # connectivity log category respectively. Possible values include:
      # 'ServiceMode', 'EnableConnectivityLogs'
      attr_accessor :flag

      # @return [String] Value of the feature flag. See Azure SignalR service
      # document https://docs.microsoft.com/azure/azure-signalr/ for allowed
      # values.
      attr_accessor :value

      # @return [Hash{String => String}] Optional properties related to this
      # feature.
      attr_accessor :properties


      #
      # Mapper for SignalRFeature class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SignalRFeature',
          type: {
            name: 'Composite',
            class_name: 'SignalRFeature',
            model_properties: {
              flag: {
                client_side_validation: true,
                required: true,
                serialized_name: 'flag',
                type: {
                  name: 'String'
                }
              },
              value: {
                client_side_validation: true,
                required: true,
                serialized_name: 'value',
                constraints: {
                  MaxLength: 128,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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
