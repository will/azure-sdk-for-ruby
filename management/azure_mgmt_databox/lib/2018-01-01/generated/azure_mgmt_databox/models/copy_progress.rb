# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataBox::Mgmt::V2018_01_01
  module Models
    #
    # Copy progress.
    #
    class CopyProgress

      include MsRestAzure

      # @return [String] Name of the storage account where the data needs to be
      # uploaded.
      attr_accessor :storage_account_name

      # @return [String] Id of the account where the data needs to be uploaded.
      attr_accessor :account_id

      # @return [Integer] Amount of data uploaded by the job as of now.
      attr_accessor :bytes_sent_to_cloud

      # @return [Integer] Total amount of data to be processed by the job.
      attr_accessor :total_bytes_to_process

      # @return [Integer] Number of files processed by the job as of now.
      attr_accessor :files_processed

      # @return [Integer] Total number of files to be processed by the job.
      attr_accessor :total_files_to_process


      #
      # Mapper for CopyProgress class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CopyProgress',
          type: {
            name: 'Composite',
            class_name: 'CopyProgress',
            model_properties: {
              storage_account_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'storageAccountName',
                type: {
                  name: 'String'
                }
              },
              account_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'accountId',
                type: {
                  name: 'String'
                }
              },
              bytes_sent_to_cloud: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'bytesSentToCloud',
                type: {
                  name: 'Number'
                }
              },
              total_bytes_to_process: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'totalBytesToProcess',
                type: {
                  name: 'Number'
                }
              },
              files_processed: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'filesProcessed',
                type: {
                  name: 'Number'
                }
              },
              total_files_to_process: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'totalFilesToProcess',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
