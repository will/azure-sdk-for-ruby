# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2016_04_02
  module Models
    #
    # Model object.
    #
    #
    class OriginListResult

      include MsRestAzure

      # @return [Array<Origin>] List of CDN origins within an endpoint
      attr_accessor :value


      #
      # Mapper for OriginListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OriginListResult',
          type: {
            name: 'Composite',
            class_name: 'OriginListResult',
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
                      serialized_name: 'OriginElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Origin'
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
