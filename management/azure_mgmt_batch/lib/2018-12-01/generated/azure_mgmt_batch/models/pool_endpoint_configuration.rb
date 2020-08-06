# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Batch::Mgmt::V2018_12_01
  module Models
    #
    # The endpoint configuration for a pool.
    #
    #
    class PoolEndpointConfiguration

      include MsRestAzure

      # @return [Array<InboundNatPool>] A list of inbound NAT pools that can be
      # used to address specific ports on an individual compute node
      # externally. The maximum number of inbound NAT pools per Batch pool is
      # 5. If the maximum number of inbound NAT pools is exceeded the request
      # fails with HTTP status code 400.
      attr_accessor :inbound_nat_pools


      #
      # Mapper for PoolEndpointConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PoolEndpointConfiguration',
          type: {
            name: 'Composite',
            class_name: 'PoolEndpointConfiguration',
            model_properties: {
              inbound_nat_pools: {
                client_side_validation: true,
                required: true,
                serialized_name: 'inboundNatPools',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'InboundNatPoolElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'InboundNatPool'
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
