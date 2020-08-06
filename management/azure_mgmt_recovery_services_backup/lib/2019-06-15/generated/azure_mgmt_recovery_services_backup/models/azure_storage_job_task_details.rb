# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2019_06_15
  module Models
    #
    # Azure storage workload specific job task details.
    #
    class AzureStorageJobTaskDetails

      include MsRestAzure

      # @return [String] The task display name.
      attr_accessor :task_id

      # @return [String] The status.
      attr_accessor :status


      #
      # Mapper for AzureStorageJobTaskDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureStorageJobTaskDetails',
          type: {
            name: 'Composite',
            class_name: 'AzureStorageJobTaskDetails',
            model_properties: {
              task_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'taskId',
                type: {
                  name: 'String'
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'status',
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
