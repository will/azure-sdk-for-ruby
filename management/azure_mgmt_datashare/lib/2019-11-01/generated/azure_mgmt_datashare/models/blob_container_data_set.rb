# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataShare::Mgmt::V2019_11_01
  module Models
    #
    # An Azure storage blob container data set.
    #
    class BlobContainerDataSet < DataSet

      include MsRestAzure


      def initialize
        @kind = "Container"
      end

      attr_accessor :kind

      # @return [String] BLOB Container name.
      attr_accessor :container_name

      # @return [String] Unique id for identifying a data set resource
      attr_accessor :data_set_id

      # @return [String] Resource group of storage account
      attr_accessor :resource_group

      # @return [String] Storage account name of the source data set
      attr_accessor :storage_account_name

      # @return [String] Subscription id of storage account
      attr_accessor :subscription_id


      #
      # Mapper for BlobContainerDataSet class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Container',
          type: {
            name: 'Composite',
            class_name: 'BlobContainerDataSet',
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
              kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              container_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.containerName',
                type: {
                  name: 'String'
                }
              },
              data_set_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.dataSetId',
                type: {
                  name: 'String'
                }
              },
              resource_group: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.resourceGroup',
                type: {
                  name: 'String'
                }
              },
              storage_account_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.storageAccountName',
                type: {
                  name: 'String'
                }
              },
              subscription_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.subscriptionId',
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
