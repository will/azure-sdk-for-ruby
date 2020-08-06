# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventHub::Mgmt::V2018_01_01_preview
  module Models
    #
    # Pre-provisioned and readily available Event Hubs Cluster count per
    # region.
    #
    class AvailableCluster

      include MsRestAzure

      # @return [String] Location fo the Available Cluster
      attr_accessor :location


      #
      # Mapper for AvailableCluster class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AvailableCluster',
          type: {
            name: 'Composite',
            class_name: 'AvailableCluster',
            model_properties: {
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
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
