# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2017_04_02
  module Models
    #
    # Origin properties needed for origin creation or update.
    #
    class OriginUpdateParameters

      include MsRestAzure

      # @return [String] The address of the origin. Domain names, IPv4
      # addresses, and IPv6 addresses are supported.
      attr_accessor :host_name

      # @return [Integer] The value of the HTTP port. Must be between 1 and
      # 65535.
      attr_accessor :http_port

      # @return [Integer] The value of the HTTPS port. Must be between 1 and
      # 65535.
      attr_accessor :https_port


      #
      # Mapper for OriginUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OriginUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'OriginUpdateParameters',
            model_properties: {
              host_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.hostName',
                type: {
                  name: 'String'
                }
              },
              http_port: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.httpPort',
                constraints: {
                  InclusiveMaximum: 65535,
                  InclusiveMinimum: 1
                },
                type: {
                  name: 'Number'
                }
              },
              https_port: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.httpsPort',
                constraints: {
                  InclusiveMaximum: 65535,
                  InclusiveMinimum: 1
                },
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
