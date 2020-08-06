# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2017_07_01
  module Models
    #
    # Base class for backup items.
    #
    class GenericProtectedItem < ProtectedItem

      include MsRestAzure


      def initialize
        @protectedItemType = "GenericProtectedItem"
      end

      attr_accessor :protectedItemType

      # @return [String] Friendly name of the container.
      attr_accessor :friendly_name

      # @return [String] Indicates consistency of policy object and policy
      # applied to this backup item.
      attr_accessor :policy_state

      # @return [ProtectionState] Backup state of this backup item. Possible
      # values include: 'Invalid', 'IRPending', 'Protected', 'ProtectionError',
      # 'ProtectionStopped', 'ProtectionPaused'
      attr_accessor :protection_state

      # @return [Integer] Data Plane Service ID of the protected item.
      attr_accessor :protected_item_id

      # @return [Hash{String => String}] Loosely coupled (type, value)
      # associations (example - parent of a protected item)
      attr_accessor :source_associations

      # @return [String] Name of this backup item's fabric.
      attr_accessor :fabric_name


      #
      # Mapper for GenericProtectedItem class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GenericProtectedItem',
          type: {
            name: 'Composite',
            class_name: 'GenericProtectedItem',
            model_properties: {
              backup_management_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'backupManagementType',
                type: {
                  name: 'String'
                }
              },
              workload_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'workloadType',
                type: {
                  name: 'String'
                }
              },
              container_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'containerName',
                type: {
                  name: 'String'
                }
              },
              source_resource_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceResourceId',
                type: {
                  name: 'String'
                }
              },
              policy_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'policyId',
                type: {
                  name: 'String'
                }
              },
              last_recovery_point: {
                client_side_validation: true,
                required: false,
                serialized_name: 'lastRecoveryPoint',
                type: {
                  name: 'DateTime'
                }
              },
              backup_set_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'backupSetName',
                type: {
                  name: 'String'
                }
              },
              create_mode: {
                client_side_validation: true,
                required: false,
                serialized_name: 'createMode',
                type: {
                  name: 'String'
                }
              },
              protectedItemType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'protectedItemType',
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
              },
              policy_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'policyState',
                type: {
                  name: 'String'
                }
              },
              protection_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'protectionState',
                type: {
                  name: 'String'
                }
              },
              protected_item_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'protectedItemId',
                type: {
                  name: 'Number'
                }
              },
              source_associations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceAssociations',
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
              fabric_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'fabricName',
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
