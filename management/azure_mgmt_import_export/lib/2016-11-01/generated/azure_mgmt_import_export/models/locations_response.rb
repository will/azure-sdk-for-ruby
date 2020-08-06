# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ImportExport::Mgmt::V2016_11_01
  module Models
    #
    # Locations response
    #
    class LocationsResponse

      include MsRestAzure

      # @return [Array<Location>] locations
      attr_accessor :value


      #
      # Mapper for LocationsResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'LocationsResponse',
          type: {
            name: 'Composite',
            class_name: 'LocationsResponse',
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
                      serialized_name: 'LocationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Location'
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
