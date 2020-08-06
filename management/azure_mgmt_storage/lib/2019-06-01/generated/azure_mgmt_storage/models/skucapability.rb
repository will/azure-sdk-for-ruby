# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Storage::Mgmt::V2019_06_01
  module Models
    #
    # The capability information in the specified SKU, including file
    # encryption, network ACLs, change notification, etc.
    #
    class SKUCapability

      include MsRestAzure

      # @return [String] The name of capability, The capability information in
      # the specified SKU, including file encryption, network ACLs, change
      # notification, etc.
      attr_accessor :name

      # @return [String] A string value to indicate states of given capability.
      # Possibly 'true' or 'false'.
      attr_accessor :value


      #
      # Mapper for SKUCapability class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SKUCapability',
          type: {
            name: 'Composite',
            class_name: 'SKUCapability',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              value: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'value',
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
