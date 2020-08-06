# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Batch::Mgmt::V2019_08_01
  module Models
    #
    # Contains information about an application in a Batch account.
    #
    class Application < ProxyResource

      include MsRestAzure

      # @return [String] The display name for the application.
      attr_accessor :display_name

      # @return [Boolean] A value indicating whether packages within the
      # application may be overwritten using the same version string.
      attr_accessor :allow_updates

      # @return [String] The package to use if a client requests the
      # application but does not specify a version. This property can only be
      # set to the name of an existing package.
      attr_accessor :default_version


      #
      # Mapper for Application class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Application',
          type: {
            name: 'Composite',
            class_name: 'Application',
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
              etag: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'etag',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.displayName',
                type: {
                  name: 'String'
                }
              },
              allow_updates: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.allowUpdates',
                type: {
                  name: 'Boolean'
                }
              },
              default_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.defaultVersion',
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
