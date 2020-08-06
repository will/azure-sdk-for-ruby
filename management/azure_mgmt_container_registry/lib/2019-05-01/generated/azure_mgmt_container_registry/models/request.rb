# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerRegistry::Mgmt::V2019_05_01
  module Models
    #
    # The request that generated the event.
    #
    class Request

      include MsRestAzure

      # @return [String] The ID of the request that initiated the event.
      attr_accessor :id

      # @return [String] The IP or hostname and possibly port of the client
      # connection that initiated the event. This is the RemoteAddr from the
      # standard http request.
      attr_accessor :addr

      # @return [String] The externally accessible hostname of the registry
      # instance, as specified by the http host header on incoming requests.
      attr_accessor :host

      # @return [String] The request method that generated the event.
      attr_accessor :method

      # @return [String] The user agent header of the request.
      attr_accessor :useragent


      #
      # Mapper for Request class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Request',
          type: {
            name: 'Composite',
            class_name: 'Request',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              addr: {
                client_side_validation: true,
                required: false,
                serialized_name: 'addr',
                type: {
                  name: 'String'
                }
              },
              host: {
                client_side_validation: true,
                required: false,
                serialized_name: 'host',
                type: {
                  name: 'String'
                }
              },
              method: {
                client_side_validation: true,
                required: false,
                serialized_name: 'method',
                type: {
                  name: 'String'
                }
              },
              useragent: {
                client_side_validation: true,
                required: false,
                serialized_name: 'useragent',
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
