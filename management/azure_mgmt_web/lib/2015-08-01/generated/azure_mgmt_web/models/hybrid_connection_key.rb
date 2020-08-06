# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2015_08_01
  module Models
    #
    # Hybrid Connection key contract. This has the send key name and value for
    # a Hybrid Connection.
    #
    class HybridConnectionKey < ProxyOnlyResource

      include MsRestAzure

      # @return [String] The name of the send key.
      attr_accessor :send_key_name

      # @return [String] The value of the send key.
      attr_accessor :send_key_value


      #
      # Mapper for HybridConnectionKey class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'HybridConnectionKey',
          type: {
            name: 'Composite',
            class_name: 'HybridConnectionKey',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              kind: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              send_key_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.sendKeyName',
                type: {
                  name: 'String'
                }
              },
              send_key_value: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.sendKeyValue',
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
