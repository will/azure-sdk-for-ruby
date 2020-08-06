# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorSimple8000Series::Mgmt::V2017_06_01
  module Models
    #
    # The public key.
    #
    class PublicKey

      include MsRestAzure

      # @return [String] The key.
      attr_accessor :key


      #
      # Mapper for PublicKey class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PublicKey',
          type: {
            name: 'Composite',
            class_name: 'PublicKey',
            model_properties: {
              key: {
                client_side_validation: true,
                required: true,
                serialized_name: 'key',
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
