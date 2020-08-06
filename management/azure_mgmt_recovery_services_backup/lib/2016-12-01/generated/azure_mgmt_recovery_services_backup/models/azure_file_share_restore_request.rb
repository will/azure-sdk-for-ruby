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
    # AzureFileShare Restore Request
    #
    class AzureFileShareRestoreRequest < RestoreRequest

      include MsRestAzure


      def initialize
        @objectType = "AzureFileShareRestoreRequest"
      end

      attr_accessor :objectType

      # @return [RecoveryType] Type of this recovery. Possible values include:
      # 'Invalid', 'OriginalLocation', 'AlternateLocation', 'RestoreDisks'
      attr_accessor :recovery_type

      # @return [String] Source storage account ARM Id
      attr_accessor :source_resource_id

      # @return [CopyOptions] Options to resolve copy conflicts. Possible
      # values include: 'Invalid', 'CreateCopy', 'Skip', 'Overwrite',
      # 'FailOnConflict'
      attr_accessor :copy_options

      # @return [RestoreRequestType] Restore Type (FullShareRestore or
      # ItemLevelRestore). Possible values include: 'Invalid',
      # 'FullShareRestore', 'ItemLevelRestore'
      attr_accessor :restore_request_type

      # @return [Array<RestoreFileSpecs>] List of Source Files/Folders(which
      # need to recover) and TargetFolderPath details
      attr_accessor :restore_file_specs

      # @return [TargetAFSRestoreInfo] Target File Share Details
      attr_accessor :target_details


      #
      # Mapper for AzureFileShareRestoreRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureFileShareRestoreRequest',
          type: {
            name: 'Composite',
            class_name: 'AzureFileShareRestoreRequest',
            model_properties: {
              objectType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'objectType',
                type: {
                  name: 'String'
                }
              },
              recovery_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recoveryType',
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
              copy_options: {
                client_side_validation: true,
                required: false,
                serialized_name: 'copyOptions',
                type: {
                  name: 'String'
                }
              },
              restore_request_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'restoreRequestType',
                type: {
                  name: 'String'
                }
              },
              restore_file_specs: {
                client_side_validation: true,
                required: false,
                serialized_name: 'restoreFileSpecs',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'RestoreFileSpecsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RestoreFileSpecs'
                      }
                  }
                }
              },
              target_details: {
                client_side_validation: true,
                required: false,
                serialized_name: 'targetDetails',
                type: {
                  name: 'Composite',
                  class_name: 'TargetAFSRestoreInfo'
                }
              }
            }
          }
        }
      end
    end
  end
end
