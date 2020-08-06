# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorSimple8000Series::Mgmt::V2017_06_01
  module Models
    #
    # The collection of hardware component groups.
    #
    class HardwareComponentGroupList

      include MsRestAzure

      # @return [Array<HardwareComponentGroup>] The value.
      attr_accessor :value


      #
      # Mapper for HardwareComponentGroupList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'HardwareComponentGroupList',
          type: {
            name: 'Composite',
            class_name: 'HardwareComponentGroupList',
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
                      serialized_name: 'HardwareComponentGroupElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'HardwareComponentGroup'
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
