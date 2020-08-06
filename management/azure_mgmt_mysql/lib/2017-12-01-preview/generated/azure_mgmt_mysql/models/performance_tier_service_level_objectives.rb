# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Mysql::Mgmt::V2017_12_01_preview
  module Models
    #
    # Service level objectives for performance tier.
    #
    class PerformanceTierServiceLevelObjectives

      include MsRestAzure

      # @return [String] ID for the service level objective.
      attr_accessor :id

      # @return [String] Edition of the performance tier.
      attr_accessor :edition

      # @return [Integer] vCore associated with the service level objective
      attr_accessor :v_core

      # @return [String] Hardware generation associated with the service level
      # objective
      attr_accessor :hardware_generation

      # @return [Integer] Maximum Backup retention in days for the performance
      # tier edition
      attr_accessor :max_backup_retention_days

      # @return [Integer] Minimum Backup retention in days for the performance
      # tier edition
      attr_accessor :min_backup_retention_days

      # @return [Integer] Max storage allowed for a server.
      attr_accessor :max_storage_mb

      # @return [Integer] Max storage allowed for a server.
      attr_accessor :min_storage_mb


      #
      # Mapper for PerformanceTierServiceLevelObjectives class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PerformanceTierServiceLevelObjectives',
          type: {
            name: 'Composite',
            class_name: 'PerformanceTierServiceLevelObjectives',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              edition: {
                client_side_validation: true,
                required: false,
                serialized_name: 'edition',
                type: {
                  name: 'String'
                }
              },
              v_core: {
                client_side_validation: true,
                required: false,
                serialized_name: 'vCore',
                type: {
                  name: 'Number'
                }
              },
              hardware_generation: {
                client_side_validation: true,
                required: false,
                serialized_name: 'hardwareGeneration',
                type: {
                  name: 'String'
                }
              },
              max_backup_retention_days: {
                client_side_validation: true,
                required: false,
                serialized_name: 'maxBackupRetentionDays',
                type: {
                  name: 'Number'
                }
              },
              min_backup_retention_days: {
                client_side_validation: true,
                required: false,
                serialized_name: 'minBackupRetentionDays',
                type: {
                  name: 'Number'
                }
              },
              max_storage_mb: {
                client_side_validation: true,
                required: false,
                serialized_name: 'maxStorageMB',
                type: {
                  name: 'Number'
                }
              },
              min_storage_mb: {
                client_side_validation: true,
                required: false,
                serialized_name: 'minStorageMB',
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
