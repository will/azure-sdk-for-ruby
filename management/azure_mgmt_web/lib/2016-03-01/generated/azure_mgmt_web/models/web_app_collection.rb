# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2016_03_01
  module Models
    #
    # Collection of App Service apps.
    #
    class WebAppCollection

      include MsRestAzure

      # @return [Array<Site>] Collection of resources.
      attr_accessor :value

      # @return [String] Link to next page of resources.
      attr_accessor :next_link


      #
      # Mapper for WebAppCollection class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'WebAppCollection',
          type: {
            name: 'Composite',
            class_name: 'WebAppCollection',
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
                      serialized_name: 'SiteElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Site'
                      }
                  }
                }
              },
              next_link: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'nextLink',
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
