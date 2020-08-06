# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::BotService::Mgmt::V2018_07_12_preview
  module Models
    #
    # The list of bot service providers response.
    #
    class ServiceProviderResponseList

      include MsRestAzure

      # @return [String] The link used to get the next page of bot service
      # providers.
      attr_accessor :next_link

      # @return [Array<ServiceProvider>] Gets the list of bot service providers
      # and their properties.
      attr_accessor :value


      #
      # Mapper for ServiceProviderResponseList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServiceProviderResponseList',
          type: {
            name: 'Composite',
            class_name: 'ServiceProviderResponseList',
            model_properties: {
              next_link: {
                client_side_validation: true,
                required: false,
                serialized_name: 'nextLink',
                type: {
                  name: 'String'
                }
              },
              value: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ServiceProviderElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ServiceProvider'
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
