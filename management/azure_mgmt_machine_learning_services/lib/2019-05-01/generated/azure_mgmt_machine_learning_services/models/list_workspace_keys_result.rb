# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MachineLearningServices::Mgmt::V2019_05_01
  module Models
    #
    # Model object.
    #
    #
    class ListWorkspaceKeysResult

      include MsRestAzure

      # @return [String]
      attr_accessor :user_storage_key

      # @return [String]
      attr_accessor :user_storage_resource_id

      # @return [String]
      attr_accessor :app_insights_instrumentation_key

      # @return [RegistryListCredentialsResult]
      attr_accessor :container_registry_credentials


      #
      # Mapper for ListWorkspaceKeysResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ListWorkspaceKeysResult',
          type: {
            name: 'Composite',
            class_name: 'ListWorkspaceKeysResult',
            model_properties: {
              user_storage_key: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'userStorageKey',
                type: {
                  name: 'String'
                }
              },
              user_storage_resource_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'userStorageResourceId',
                type: {
                  name: 'String'
                }
              },
              app_insights_instrumentation_key: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'appInsightsInstrumentationKey',
                type: {
                  name: 'String'
                }
              },
              container_registry_credentials: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'containerRegistryCredentials',
                type: {
                  name: 'Composite',
                  class_name: 'RegistryListCredentialsResult'
                }
              }
            }
          }
        }
      end
    end
  end
end
