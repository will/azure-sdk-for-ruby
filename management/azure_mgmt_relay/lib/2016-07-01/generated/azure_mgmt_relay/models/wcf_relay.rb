# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Relay::Mgmt::V2016_07_01
  module Models
    #
    # Description of WcfRelays Resource.
    #
    class WcfRelay < Resource

      include MsRestAzure

      # @return [Relaytype] WCFRelay Type. Possible values include: 'NetTcp',
      # 'Http'
      attr_accessor :relay_type

      # @return [DateTime] The time the WCFRelay was created.
      attr_accessor :created_at

      # @return [DateTime] The time the namespace was updated.
      attr_accessor :updated_at

      # @return [Integer] The number of listeners for this relay. min : 1 and
      # max:25 supported
      attr_accessor :listener_count

      # @return [Boolean] true if client authorization is needed for this
      # relay; otherwise, false.
      attr_accessor :requires_client_authorization

      # @return [Boolean] true if transport security is needed for this relay;
      # otherwise, false.
      attr_accessor :requires_transport_security

      # @return [Boolean] true if the relay is dynamic; otherwise, false.
      attr_accessor :is_dynamic

      # @return [String] usermetadata is a placeholder to store user-defined
      # string data for the HybridConnection endpoint.e.g. it can be used to
      # store  descriptive data, such as list of teams and their contact
      # information also user-defined configuration settings can be stored.
      attr_accessor :user_metadata


      #
      # Mapper for WcfRelay class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'WcfRelay',
          type: {
            name: 'Composite',
            class_name: 'WcfRelay',
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
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              relay_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.relayType',
                type: {
                  name: 'String'
                }
              },
              created_at: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.createdAt',
                type: {
                  name: 'DateTime'
                }
              },
              updated_at: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.updatedAt',
                type: {
                  name: 'DateTime'
                }
              },
              listener_count: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.listenerCount',
                type: {
                  name: 'Number'
                }
              },
              requires_client_authorization: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.requiresClientAuthorization',
                type: {
                  name: 'Boolean'
                }
              },
              requires_transport_security: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.requiresTransportSecurity',
                type: {
                  name: 'Boolean'
                }
              },
              is_dynamic: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.isDynamic',
                type: {
                  name: 'Boolean'
                }
              },
              user_metadata: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.userMetadata',
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
