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
    # Retention duration.
    #
    class RetentionDuration

      include MsRestAzure

      # @return [Integer] Count of the duration types. Retention duration is
      # determined by the combining the Count times and durationType.
      # For example, if Count = 3 and durationType = Weeks, then the retention
      # duration is three weeks.
      attr_accessor :count

      # @return [RetentionDurationType] The retention duration type of the
      # retention policy. Possible values include: 'Invalid', 'Days', 'Weeks',
      # 'Months', 'Years'
      attr_accessor :duration_type


      #
      # Mapper for RetentionDuration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RetentionDuration',
          type: {
            name: 'Composite',
            class_name: 'RetentionDuration',
            model_properties: {
              count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'count',
                type: {
                  name: 'Number'
                }
              },
              duration_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'durationType',
                type: {
                  name: 'Enum',
                  module: 'RetentionDurationType'
                }
              }
            }
          }
        }
      end
    end
  end
end
