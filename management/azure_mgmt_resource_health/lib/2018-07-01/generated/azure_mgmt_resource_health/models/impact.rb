# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ResourceHealth::Mgmt::V2018_07_01
  module Models
    #
    # Azure service impacted by the service health event.
    #
    class Impact

      include MsRestAzure

      # @return [String] Impacted service name.
      attr_accessor :impacted_service

      # @return [Array<ImpactedServiceRegion>] List regions impacted by the
      # service health event.
      attr_accessor :impacted_regions


      #
      # Mapper for Impact class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'impact',
          type: {
            name: 'Composite',
            class_name: 'Impact',
            model_properties: {
              impacted_service: {
                client_side_validation: true,
                required: false,
                serialized_name: 'impactedService',
                type: {
                  name: 'String'
                }
              },
              impacted_regions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'impactedRegions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ImpactedServiceRegionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ImpactedServiceRegion'
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
