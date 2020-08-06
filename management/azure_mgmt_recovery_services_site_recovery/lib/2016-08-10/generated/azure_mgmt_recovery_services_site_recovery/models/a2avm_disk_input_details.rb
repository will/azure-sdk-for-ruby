# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # Azure VM disk input details.
    #
    class A2AVmDiskInputDetails

      include MsRestAzure

      # @return [String] The disk Uri.
      attr_accessor :disk_uri

      # @return [String] The recovery VHD storage account Id.
      attr_accessor :recovery_azure_storage_account_id

      # @return [String] The primary staging storage account Id.
      attr_accessor :primary_staging_azure_storage_account_id


      #
      # Mapper for A2AVmDiskInputDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'A2AVmDiskInputDetails',
          type: {
            name: 'Composite',
            class_name: 'A2AVmDiskInputDetails',
            model_properties: {
              disk_uri: {
                client_side_validation: true,
                required: false,
                serialized_name: 'diskUri',
                type: {
                  name: 'String'
                }
              },
              recovery_azure_storage_account_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recoveryAzureStorageAccountId',
                type: {
                  name: 'String'
                }
              },
              primary_staging_azure_storage_account_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'primaryStagingAzureStorageAccountId',
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
