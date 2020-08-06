# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataShare::Mgmt::V2019_11_01
  module Models
    #
    # An ADLS Gen 1 folder data set.
    #
    class ADLSGen1FolderDataSet < DataSet

      include MsRestAzure


      def initialize
        @kind = "AdlsGen1Folder"
      end

      attr_accessor :kind

      # @return [String] The ADLS account name.
      attr_accessor :account_name

      # @return [String] Unique id for identifying a data set resource
      attr_accessor :data_set_id

      # @return [String] The folder path within the ADLS account.
      attr_accessor :folder_path

      # @return [String] Resource group of ADLS account.
      attr_accessor :resource_group

      # @return [String] Subscription id of ADLS account.
      attr_accessor :subscription_id


      #
      # Mapper for ADLSGen1FolderDataSet class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AdlsGen1Folder',
          type: {
            name: 'Composite',
            class_name: 'ADLSGen1FolderDataSet',
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
              account_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.accountName',
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
              folder_path: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.folderPath',
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
