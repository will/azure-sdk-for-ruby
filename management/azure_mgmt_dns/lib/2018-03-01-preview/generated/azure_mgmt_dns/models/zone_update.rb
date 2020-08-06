# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Dns::Mgmt::V2018_03_01_preview
  module Models
    #
    # Describes a request to update a DNS zone.
    #
    class ZoneUpdate

      include MsRestAzure

      # @return [Hash{String => String}] Resource tags.
      attr_accessor :tags


      #
      # Mapper for ZoneUpdate class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ZoneUpdate',
          type: {
            name: 'Composite',
            class_name: 'ZoneUpdate',
            model_properties: {
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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
