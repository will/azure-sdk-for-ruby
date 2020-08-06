# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2019_06_15
  module Models
    #
    # This class is used to send blob details after exporting jobs.
    #
    class ExportJobsOperationResultInfo < OperationResultInfoBase

      include MsRestAzure


      def initialize
        @objectType = "ExportJobsOperationResultInfo"
      end

      attr_accessor :objectType

      # @return [String] URL of the blob into which the serialized string of
      # list of jobs is exported.
      attr_accessor :blob_url

      # @return [String] SAS key to access the blob. It expires in 15 mins.
      attr_accessor :blob_sas_key

      # @return [String] URL of the blob into which the ExcelFile is uploaded.
      attr_accessor :excel_file_blob_url

      # @return [String] SAS key to access the blob. It expires in 15 mins.
      attr_accessor :excel_file_blob_sas_key


      #
      # Mapper for ExportJobsOperationResultInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ExportJobsOperationResultInfo',
          type: {
            name: 'Composite',
            class_name: 'ExportJobsOperationResultInfo',
            model_properties: {
              objectType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'objectType',
                type: {
                  name: 'String'
                }
              },
              blob_url: {
                client_side_validation: true,
                required: false,
                serialized_name: 'blobUrl',
                type: {
                  name: 'String'
                }
              },
              blob_sas_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'blobSasKey',
                type: {
                  name: 'String'
                }
              },
              excel_file_blob_url: {
                client_side_validation: true,
                required: false,
                serialized_name: 'excelFileBlobUrl',
                type: {
                  name: 'String'
                }
              },
              excel_file_blob_sas_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'excelFileBlobSasKey',
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
