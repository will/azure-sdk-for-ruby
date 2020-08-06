# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::Mgmt::V2017_07_01_preview
  module Models
    #
    # A version resource for the specified application type name.
    #
    class VersionResource < ProxyResource

      include MsRestAzure

      # @return [String] The current deployment or provisioning state, which
      # only appears in the response
      attr_accessor :provisioning_state

      # @return [String] The URL to the application package
      attr_accessor :app_package_url

      # @return [Array<ApplicationParameter>]
      attr_accessor :default_parameter_list


      #
      # Mapper for VersionResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VersionResource',
          type: {
            name: 'Composite',
            class_name: 'VersionResource',
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
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              app_package_url: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.appPackageUrl',
                type: {
                  name: 'String'
                }
              },
              default_parameter_list: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.defaultParameterList',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ApplicationParameterElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApplicationParameter'
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
