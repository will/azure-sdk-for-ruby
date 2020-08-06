# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Signalr::Mgmt::V2020_05_01
  module Models
    #
    # A class represents the access keys of SignalR service.
    #
    class SignalRKeys

      include MsRestAzure

      # @return [String] The primary access key.
      attr_accessor :primary_key

      # @return [String] The secondary access key.
      attr_accessor :secondary_key

      # @return [String] SignalR connection string constructed via the
      # primaryKey
      attr_accessor :primary_connection_string

      # @return [String] SignalR connection string constructed via the
      # secondaryKey
      attr_accessor :secondary_connection_string


      #
      # Mapper for SignalRKeys class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SignalRKeys',
          type: {
            name: 'Composite',
            class_name: 'SignalRKeys',
            model_properties: {
              primary_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'primaryKey',
                type: {
                  name: 'String'
                }
              },
              secondary_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'secondaryKey',
                type: {
                  name: 'String'
                }
              },
              primary_connection_string: {
                client_side_validation: true,
                required: false,
                serialized_name: 'primaryConnectionString',
                type: {
                  name: 'String'
                }
              },
              secondary_connection_string: {
                client_side_validation: true,
                required: false,
                serialized_name: 'secondaryConnectionString',
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
