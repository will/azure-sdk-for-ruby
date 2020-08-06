# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::NetApp::Mgmt::V2019_07_01
  module Models
    #
    # List of capacity pool resources
    #
    class CapacityPoolList

      include MsRestAzure

      # @return [Array<CapacityPool>] List of Capacity pools
      attr_accessor :value


      #
      # Mapper for CapacityPoolList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'capacityPoolList',
          type: {
            name: 'Composite',
            class_name: 'CapacityPoolList',
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
                      serialized_name: 'CapacityPoolElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'CapacityPool'
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
