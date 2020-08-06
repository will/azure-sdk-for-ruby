# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_07_15_preview
  module Models
    #
    # Information about migration eligibility of a server object
    #
    class MigrationEligibilityInfo

      include MsRestAzure

      # @return [Boolean] Whether object is eligible for migration or not.
      attr_accessor :is_eligible_for_migration

      # @return [Array<String>] Information about eligibility failure for the
      # server object.
      attr_accessor :validation_messages


      #
      # Mapper for MigrationEligibilityInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MigrationEligibilityInfo',
          type: {
            name: 'Composite',
            class_name: 'MigrationEligibilityInfo',
            model_properties: {
              is_eligible_for_migration: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'isEligibleForMigration',
                type: {
                  name: 'Boolean'
                }
              },
              validation_messages: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'validationMessages',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
