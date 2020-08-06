# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Hdinsight::Mgmt::V2015_03_01_preview
  module Models
    #
    # The encryption-in-transit properties.
    #
    class EncryptionInTransitProperties

      include MsRestAzure

      # @return [Boolean] Indicates whether or not inter cluster node
      # communication is encrypted in transit. Default value: false .
      attr_accessor :is_encryption_in_transit_enabled


      #
      # Mapper for EncryptionInTransitProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EncryptionInTransitProperties',
          type: {
            name: 'Composite',
            class_name: 'EncryptionInTransitProperties',
            model_properties: {
              is_encryption_in_transit_enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'isEncryptionInTransitEnabled',
                default_value: false,
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
