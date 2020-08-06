# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Kusto::Mgmt::V2019_05_15
  module Models
    #
    # Represents a tenant ID that is trusted by the cluster.
    #
    class TrustedExternalTenant

      include MsRestAzure

      # @return [String] GUID representing an external tenant.
      attr_accessor :value


      #
      # Mapper for TrustedExternalTenant class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TrustedExternalTenant',
          type: {
            name: 'Composite',
            class_name: 'TrustedExternalTenant',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
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
