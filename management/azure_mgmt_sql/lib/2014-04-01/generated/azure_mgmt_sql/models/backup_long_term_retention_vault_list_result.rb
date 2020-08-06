# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2014_04_01
  module Models
    #
    # Represents the response to a list vaults request.
    #
    class BackupLongTermRetentionVaultListResult

      include MsRestAzure

      # @return [Array<BackupLongTermRetentionVault>] The list of vaults in the
      # server.
      attr_accessor :value


      #
      # Mapper for BackupLongTermRetentionVaultListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'BackupLongTermRetentionVaultListResult',
          type: {
            name: 'Composite',
            class_name: 'BackupLongTermRetentionVaultListResult',
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
                      serialized_name: 'BackupLongTermRetentionVaultElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'BackupLongTermRetentionVault'
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
