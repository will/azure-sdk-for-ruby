# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::TimeSeriesInsights::Mgmt::V2018_08_15_preview
  module Models
    #
    # The response of the List EventSources operation.
    #
    class EventSourceListResponse

      include MsRestAzure

      # @return [Array<EventSourceResource>] Result of the List EventSources
      # operation.
      attr_accessor :value


      #
      # Mapper for EventSourceListResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EventSourceListResponse',
          type: {
            name: 'Composite',
            class_name: 'EventSourceListResponse',
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
                      serialized_name: 'EventSourceResourceElementType',
                      type: {
                        name: 'Composite',
                        polymorphic_discriminator: 'kind',
                        uber_parent: 'Resource',
                        class_name: 'EventSourceResource'
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
