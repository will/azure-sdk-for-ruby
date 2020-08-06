# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MariaDB::Mgmt::V2018_06_01
  module Models
    #
    # A list of servers.
    #
    class ServerListResult

      include MsRestAzure

      # @return [Array<Server>] The list of servers
      attr_accessor :value


      #
      # Mapper for ServerListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServerListResult',
          type: {
            name: 'Composite',
            class_name: 'ServerListResult',
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
                      serialized_name: 'ServerElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Server'
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
