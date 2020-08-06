# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2018_02_01
  module Models
    #
    # Http logs to azure blob storage configuration.
    #
    class AzureBlobStorageHttpLogsConfig

      include MsRestAzure

      # @return [String] SAS url to a azure blob container with
      # read/write/list/delete permissions.
      attr_accessor :sas_url

      # @return [Integer] Retention in days.
      # Remove blobs older than X days.
      # 0 or lower means no retention.
      attr_accessor :retention_in_days

      # @return [Boolean] True if configuration is enabled, false if it is
      # disabled and null if configuration is not set.
      attr_accessor :enabled


      #
      # Mapper for AzureBlobStorageHttpLogsConfig class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureBlobStorageHttpLogsConfig',
          type: {
            name: 'Composite',
            class_name: 'AzureBlobStorageHttpLogsConfig',
            model_properties: {
              sas_url: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sasUrl',
                type: {
                  name: 'String'
                }
              },
              retention_in_days: {
                client_side_validation: true,
                required: false,
                serialized_name: 'retentionInDays',
                type: {
                  name: 'Number'
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
