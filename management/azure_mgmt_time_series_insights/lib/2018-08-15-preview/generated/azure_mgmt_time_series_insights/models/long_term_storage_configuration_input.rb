# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview
  module Models
    #
    # The storage configuration provides the connection details that allows the
    # Time Series Insights service to connect to the customer storage account
    # that is used to store the environment's data.
    #
    class LongTermStorageConfigurationInput

      include MsRestAzure

      # @return [String] The name of the storage account that will hold the
      # environment's long term data.
      attr_accessor :account_name

      # @return [String] The value of the management key that grants the Time
      # Series Insights service write access to the storage account. This
      # property is not shown in environment responses.
      attr_accessor :management_key


      #
      # Mapper for LongTermStorageConfigurationInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'LongTermStorageConfigurationInput',
          type: {
            name: 'Composite',
            class_name: 'LongTermStorageConfigurationInput',
            model_properties: {
              account_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'accountName',
                type: {
                  name: 'String'
                }
              },
              management_key: {
                client_side_validation: true,
                required: true,
                serialized_name: 'managementKey',
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
