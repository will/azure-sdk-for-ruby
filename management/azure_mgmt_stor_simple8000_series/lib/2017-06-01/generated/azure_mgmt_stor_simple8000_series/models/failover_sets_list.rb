# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorSimple8000Series::Mgmt::V2017_06_01
  module Models
    #
    # The list of failover sets.
    #
    class FailoverSetsList

      include MsRestAzure

      # @return [Array<FailoverSet>] The list of failover sets.
      attr_accessor :value


      #
      # Mapper for FailoverSetsList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'FailoverSetsList',
          type: {
            name: 'Composite',
            class_name: 'FailoverSetsList',
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
                      serialized_name: 'FailoverSetElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'FailoverSet'
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
