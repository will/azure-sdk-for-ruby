# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2019_06_01
  module Models
    #
    # List of virtual network gateway vpn client connection health.
    #
    class VpnClientConnectionHealthDetailListResult

      include MsRestAzure

      # @return [Array<VpnClientConnectionHealthDetail>] List of vpn client
      # connection health.
      attr_accessor :value


      #
      # Mapper for VpnClientConnectionHealthDetailListResult class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VpnClientConnectionHealthDetailListResult',
          type: {
            name: 'Composite',
            class_name: 'VpnClientConnectionHealthDetailListResult',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'VpnClientConnectionHealthDetailElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VpnClientConnectionHealthDetail'
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
