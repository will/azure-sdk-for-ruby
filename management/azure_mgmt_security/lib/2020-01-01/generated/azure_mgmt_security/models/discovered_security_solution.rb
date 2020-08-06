# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Security::Mgmt::V2020_01_01
  module Models
    #
    # Model object.
    #
    #
    class DiscoveredSecuritySolution

      include MsRestAzure

      # @return [String] Resource Id
      attr_accessor :id

      # @return [String] Resource name
      attr_accessor :name

      # @return [String] Resource type
      attr_accessor :type

      # @return [String] Location where the resource is stored
      attr_accessor :location

      # @return [SecurityFamily] The security family of the discovered
      # solution. Possible values include: 'Waf', 'Ngfw', 'SaasWaf', 'Va'
      attr_accessor :security_family

      # @return [String] The security solutions' image offer
      attr_accessor :offer

      # @return [String] The security solutions' image publisher
      attr_accessor :publisher

      # @return [String] The security solutions' image sku
      attr_accessor :sku


      #
      # Mapper for DiscoveredSecuritySolution class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DiscoveredSecuritySolution',
          type: {
            name: 'Composite',
            class_name: 'DiscoveredSecuritySolution',
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
              location: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              security_family: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.securityFamily',
                type: {
                  name: 'String'
                }
              },
              offer: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.offer',
                type: {
                  name: 'String'
                }
              },
              publisher: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.publisher',
                type: {
                  name: 'String'
                }
              },
              sku: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.sku',
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
