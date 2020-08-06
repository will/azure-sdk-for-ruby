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
    # The base class for a backup request. Workload-specific backup requests
    # are derived from this class.
    #
    class BackupRequest

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["IaasVMBackupRequest"] = "IaasVMBackupRequest"

      def initialize
        @objectType = "BackupRequest"
      end

      attr_accessor :objectType


      #
      # Mapper for BackupRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'BackupRequest',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'objectType',
            uber_parent: 'BackupRequest',
            class_name: 'BackupRequest',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
