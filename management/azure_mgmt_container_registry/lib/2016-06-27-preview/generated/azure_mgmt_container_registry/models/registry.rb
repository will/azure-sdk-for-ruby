# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerRegistry::Mgmt::V2016_06_27_preview
  module Models
    #
    # An object that represents a container registry.
    #
    class Registry < Resource

      include MsRestAzure

      # @return [String] The URL that can be used to log into the container
      # registry.
      attr_accessor :login_server

      # @return [DateTime] The creation date of the container registry in
      # ISO8601 format.
      attr_accessor :creation_date

      # @return [Boolean] The value that indicates whether the admin user is
      # enabled. This value is false by default. Default value: false .
      attr_accessor :admin_user_enabled

      # @return [StorageAccountProperties] The properties of the storage
      # account for the container registry. If specified, the storage account
      # must be in the same physical location as the container registry.
      attr_accessor :storage_account


      #
      # Mapper for Registry class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Registry',
          type: {
            name: 'Composite',
            class_name: 'Registry',
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
              login_server: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.loginServer',
                type: {
                  name: 'String'
                }
              },
              creation_date: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.creationDate',
                type: {
                  name: 'DateTime'
                }
              },
              admin_user_enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.adminUserEnabled',
                default_value: false,
                type: {
                  name: 'Boolean'
                }
              },
              storage_account: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.storageAccount',
                type: {
                  name: 'Composite',
                  class_name: 'StorageAccountProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
