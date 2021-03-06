# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2019_06_15
  module Models
    #
    # Simple policy retention.
    #
    class SimpleRetentionPolicy < RetentionPolicy

      include MsRestAzure


      def initialize
        @retentionPolicyType = "SimpleRetentionPolicy"
      end

      attr_accessor :retentionPolicyType

      # @return [RetentionDuration] Retention duration of the protection
      # policy.
      attr_accessor :retention_duration


      #
      # Mapper for SimpleRetentionPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SimpleRetentionPolicy',
          type: {
            name: 'Composite',
            class_name: 'SimpleRetentionPolicy',
            model_properties: {
              retentionPolicyType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'retentionPolicyType',
                type: {
                  name: 'String'
                }
              },
              retention_duration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'retentionDuration',
                type: {
                  name: 'Composite',
                  class_name: 'RetentionDuration'
                }
              }
            }
          }
        }
      end
    end
  end
end
