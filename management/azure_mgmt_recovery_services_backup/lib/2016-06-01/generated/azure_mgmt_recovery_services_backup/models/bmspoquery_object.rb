# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2016_06_01
  module Models
    #
    # Filters the list of backup items.
    #
    class BMSPOQueryObject

      include MsRestAzure

      # @return [BackupManagementType] The backup management type. Possible
      # values include: 'Invalid', 'AzureIaasVM', 'MAB', 'DPM',
      # 'AzureBackupServer', 'AzureSql'
      attr_accessor :backup_management_type

      # @return [String] The backup status query parameter.
      attr_accessor :status

      # @return [String] The friendly name for the item.
      attr_accessor :friendly_name


      #
      # Mapper for BMSPOQueryObject class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'BMSPOQueryObject',
          type: {
            name: 'Composite',
            class_name: 'BMSPOQueryObject',
            model_properties: {
              backup_management_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'backupManagementType',
                type: {
                  name: 'Enum',
                  module: 'BackupManagementType'
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              friendly_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'friendlyName',
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
