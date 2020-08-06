# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2015_06_01
  module Models
    #
    # Endpoint properties required for new endpoint creation.
    #
    class EndpointCreateParameters

      include MsRestAzure

      # @return [String] Endpoint location
      attr_accessor :location

      # @return [Hash{String => String}] Endpoint tags
      attr_accessor :tags

      # @return [String] The host header CDN provider will send along with
      # content requests to origins. The default value is the host name of the
      # origin.
      attr_accessor :origin_host_header

      # @return [String] The path used for origin requests.
      attr_accessor :origin_path

      # @return [Array<String>] List of content types on which compression will
      # be applied. The value for the elements should be a valid MIME type.
      attr_accessor :content_types_to_compress

      # @return [Boolean] Indicates whether content compression is enabled.
      # Default value is false. If compression is enabled, the content
      # transferred from the CDN endpoint to the end user will be compressed.
      # The requested content must be larger than 1 byte and smaller than 1 MB.
      attr_accessor :is_compression_enabled

      # @return [Boolean] Indicates whether HTTP traffic is allowed on the
      # endpoint. Default value is true. At least one protocol (HTTP or HTTPS)
      # must be allowed.
      attr_accessor :is_http_allowed

      # @return [Boolean] Indicates whether https traffic is allowed on the
      # endpoint. Default value is true. At least one protocol (HTTP or HTTPS)
      # must be allowed.
      attr_accessor :is_https_allowed

      # @return [QueryStringCachingBehavior] Defines the query string caching
      # behavior. Possible values include: 'IgnoreQueryString',
      # 'BypassCaching', 'UseQueryString', 'NotSet'
      attr_accessor :query_string_caching_behavior

      # @return [Array<DeepCreatedOrigin>] The set of origins for the CDN
      # endpoint. When multiple origins exist, the first origin will be used as
      # primary and rest will be used as failover options.
      attr_accessor :origins


      #
      # Mapper for EndpointCreateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EndpointCreateParameters',
          type: {
            name: 'Composite',
            class_name: 'EndpointCreateParameters',
            model_properties: {
              location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              origin_host_header: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.originHostHeader',
                type: {
                  name: 'String'
                }
              },
              origin_path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.originPath',
                type: {
                  name: 'String'
                }
              },
              content_types_to_compress: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.contentTypesToCompress',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              is_compression_enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.isCompressionEnabled',
                type: {
                  name: 'Boolean'
                }
              },
              is_http_allowed: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.isHttpAllowed',
                type: {
                  name: 'Boolean'
                }
              },
              is_https_allowed: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.isHttpsAllowed',
                type: {
                  name: 'Boolean'
                }
              },
              query_string_caching_behavior: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.queryStringCachingBehavior',
                type: {
                  name: 'Enum',
                  module: 'QueryStringCachingBehavior'
                }
              },
              origins: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.origins',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DeepCreatedOriginElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DeepCreatedOrigin'
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
