# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::BotService::Mgmt::V2018_07_12_preview
  module Models
    #
    # The parameters to provide for the Direct Line channel.
    #
    class DirectLineChannelProperties

      include MsRestAzure

      # @return [Array<DirectLineSite>] The list of Direct Line sites
      attr_accessor :sites


      #
      # Mapper for DirectLineChannelProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DirectLineChannelProperties',
          type: {
            name: 'Composite',
            class_name: 'DirectLineChannelProperties',
            model_properties: {
              sites: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sites',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DirectLineSiteElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DirectLineSite'
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
