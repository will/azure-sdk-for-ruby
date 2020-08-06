# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorSimple8000Series::Mgmt::V2017_06_01
  module Models
    #
    # The collection of backup policies.
    #
    class BackupPolicyList

      include MsRestAzure

      # @return [Array<BackupPolicy>] The value.
      attr_accessor :value


      #
      # Mapper for BackupPolicyList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'BackupPolicyList',
          type: {
            name: 'Composite',
            class_name: 'BackupPolicyList',
            model_properties: {
              value: {
                client_side_validation: true,
                required: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'BackupPolicyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'BackupPolicy'
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
