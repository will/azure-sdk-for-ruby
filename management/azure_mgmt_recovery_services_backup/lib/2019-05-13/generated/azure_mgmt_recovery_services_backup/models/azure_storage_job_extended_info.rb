# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2019_05_13
  module Models
    #
    # Azure Storage workload-specific additional information for job.
    #
    class AzureStorageJobExtendedInfo

      include MsRestAzure

      # @return [Array<AzureStorageJobTaskDetails>] List of tasks for this job
      attr_accessor :tasks_list

      # @return [Hash{String => String}] Job properties.
      attr_accessor :property_bag

      # @return [String] Non localized error message on job execution.
      attr_accessor :dynamic_error_message


      #
      # Mapper for AzureStorageJobExtendedInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureStorageJobExtendedInfo',
          type: {
            name: 'Composite',
            class_name: 'AzureStorageJobExtendedInfo',
            model_properties: {
              tasks_list: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tasksList',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AzureStorageJobTaskDetailsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AzureStorageJobTaskDetails'
                      }
                  }
                }
              },
              property_bag: {
                client_side_validation: true,
                required: false,
                serialized_name: 'propertyBag',
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
              },
              dynamic_error_message: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dynamicErrorMessage',
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
