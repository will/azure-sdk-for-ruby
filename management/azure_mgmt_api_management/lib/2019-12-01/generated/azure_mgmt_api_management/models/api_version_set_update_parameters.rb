# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2019_12_01
  module Models
    #
    # Parameters to update or create an Api Version Set Contract.
    #
    class ApiVersionSetUpdateParameters

      include MsRestAzure

      # @return [String] Description of API Version Set.
      attr_accessor :description

      # @return [String] Name of query parameter that indicates the API Version
      # if versioningScheme is set to `query`.
      attr_accessor :version_query_name

      # @return [String] Name of HTTP header parameter that indicates the API
      # Version if versioningScheme is set to `header`.
      attr_accessor :version_header_name

      # @return [String] Name of API Version Set
      attr_accessor :display_name

      # @return [VersioningScheme] An value that determines where the API
      # Version identifer will be located in a HTTP request. Possible values
      # include: 'Segment', 'Query', 'Header'
      attr_accessor :versioning_scheme


      #
      # Mapper for ApiVersionSetUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApiVersionSetUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'ApiVersionSetUpdateParameters',
            model_properties: {
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              version_query_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.versionQueryName',
                constraints: {
                  MaxLength: 100,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              version_header_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.versionHeaderName',
                constraints: {
                  MaxLength: 100,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              display_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.displayName',
                constraints: {
                  MaxLength: 100,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              versioning_scheme: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.versioningScheme',
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
