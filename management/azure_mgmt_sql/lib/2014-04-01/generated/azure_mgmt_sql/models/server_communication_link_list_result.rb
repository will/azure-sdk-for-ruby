# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2014_04_01
  module Models
    #
    # A list of server communication links.
    #
    class ServerCommunicationLinkListResult

      include MsRestAzure

      # @return [Array<ServerCommunicationLink>] The list of server
      # communication links.
      attr_accessor :value


      #
      # Mapper for ServerCommunicationLinkListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServerCommunicationLinkListResult',
          type: {
            name: 'Composite',
            class_name: 'ServerCommunicationLinkListResult',
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
                      serialized_name: 'ServerCommunicationLinkElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ServerCommunicationLink'
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
