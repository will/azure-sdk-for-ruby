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
    # Base class for backup schedule.
    #
    class SchedulePolicy

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["LogSchedulePolicy"] = "LogSchedulePolicy"
      @@discriminatorMap["LongTermSchedulePolicy"] = "LongTermSchedulePolicy"
      @@discriminatorMap["SimpleSchedulePolicy"] = "SimpleSchedulePolicy"

      def initialize
        @schedulePolicyType = "SchedulePolicy"
      end

      attr_accessor :schedulePolicyType


      #
      # Mapper for SchedulePolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SchedulePolicy',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'schedulePolicyType',
            uber_parent: 'SchedulePolicy',
            class_name: 'SchedulePolicy',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
