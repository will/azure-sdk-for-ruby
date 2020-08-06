# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2019_06_15
  module Models
    #
    # AzureWorkload SQL -specific restore. Specifically for PointInTime/Log
    # restore
    #
    class AzureWorkloadSQLPointInTimeRestoreRequest < AzureWorkloadSQLRestoreRequest

      include MsRestAzure


      def initialize
        @objectType = "AzureWorkloadSQLPointInTimeRestoreRequest"
      end

      attr_accessor :objectType

      # @return [DateTime] PointInTime value
      attr_accessor :point_in_time


      #
      # Mapper for AzureWorkloadSQLPointInTimeRestoreRequest class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureWorkloadSQLPointInTimeRestoreRequest',
          type: {
            name: 'Composite',
            class_name: 'AzureWorkloadSQLPointInTimeRestoreRequest',
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
              target_info: {
                client_side_validation: true,
                required: false,
                serialized_name: 'targetInfo',
                type: {
                  name: 'Composite',
                  class_name: 'TargetRestoreInfo'
                }
              },
              recovery_mode: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recoveryMode',
                type: {
                  name: 'String'
                }
              },
              should_use_alternate_target_location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'shouldUseAlternateTargetLocation',
                type: {
                  name: 'Boolean'
                }
              },
              is_non_recoverable: {
                client_side_validation: true,
                required: false,
                serialized_name: 'isNonRecoverable',
                type: {
                  name: 'Boolean'
                }
              },
              alternate_directory_paths: {
                client_side_validation: true,
                required: false,
                serialized_name: 'alternateDirectoryPaths',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SQLDataDirectoryMappingElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SQLDataDirectoryMapping'
                      }
                  }
                }
              },
              point_in_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'pointInTime',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
