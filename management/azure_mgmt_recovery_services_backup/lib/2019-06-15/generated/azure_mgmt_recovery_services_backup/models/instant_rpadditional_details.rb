# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2019_06_15
  module Models
    #
    # Model object.
    #
    #
    class InstantRPAdditionalDetails

      include MsRestAzure

      # @return [String]
      attr_accessor :azure_backup_rgname_prefix

      # @return [String]
      attr_accessor :azure_backup_rgname_suffix


      #
      # Mapper for InstantRPAdditionalDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'InstantRPAdditionalDetails',
          type: {
            name: 'Composite',
            class_name: 'InstantRPAdditionalDetails',
            model_properties: {
              azure_backup_rgname_prefix: {
                client_side_validation: true,
                required: false,
                serialized_name: 'azureBackupRGNamePrefix',
                type: {
                  name: 'String'
                }
              },
              azure_backup_rgname_suffix: {
                client_side_validation: true,
                required: false,
                serialized_name: 'azureBackupRGNameSuffix',
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
