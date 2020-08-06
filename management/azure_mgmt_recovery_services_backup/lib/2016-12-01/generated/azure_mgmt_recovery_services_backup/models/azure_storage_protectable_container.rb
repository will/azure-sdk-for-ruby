# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2016_12_01
  module Models
    #
    # Azure Storage-specific protectable containers
    #
    class AzureStorageProtectableContainer < ProtectableContainer

      include MsRestAzure


      def initialize
        @protectableContainerType = "StorageContainer"
      end

      attr_accessor :protectableContainerType


      #
      # Mapper for AzureStorageProtectableContainer class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'StorageContainer',
          type: {
            name: 'Composite',
            class_name: 'AzureStorageProtectableContainer',
            model_properties: {
              friendly_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'friendlyName',
                type: {
                  name: 'String'
                }
              },
              backup_management_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'backupManagementType',
                type: {
                  name: 'String'
                }
              },
              health_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'healthStatus',
                type: {
                  name: 'String'
                }
              },
              container_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'containerId',
                type: {
                  name: 'String'
                }
              },
              protectableContainerType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'protectableContainerType',
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
