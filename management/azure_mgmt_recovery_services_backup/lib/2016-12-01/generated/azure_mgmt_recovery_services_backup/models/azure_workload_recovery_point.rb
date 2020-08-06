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
    # Workload specific recoverypoint, specifcally encaspulates full/diff
    # recoverypoint
    #
    class AzureWorkloadRecoveryPoint < RecoveryPoint

      include MsRestAzure


      def initialize
        @objectType = "AzureWorkloadRecoveryPoint"
      end

      attr_accessor :objectType

      # @return [DateTime] UTC time at which recoverypoint was created
      attr_accessor :recovery_point_time_in_utc

      # @return [RestorePointType] Type of restore point. Possible values
      # include: 'Invalid', 'Full', 'Log', 'Differential'
      attr_accessor :type


      #
      # Mapper for AzureWorkloadRecoveryPoint class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureWorkloadRecoveryPoint',
          type: {
            name: 'Composite',
            class_name: 'AzureWorkloadRecoveryPoint',
            model_properties: {
              objectType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'objectType',
                type: {
                  name: 'String'
                }
              },
              recovery_point_time_in_utc: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recoveryPointTimeInUTC',
                type: {
                  name: 'DateTime'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'type',
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
