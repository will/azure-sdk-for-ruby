# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ManagedApplications::Mgmt::V2018_06_01
  module Models
    #
    # Information about managed application definition.
    #
    class ApplicationDefinition < GenericResource

      include MsRestAzure

      # @return [ApplicationLockLevel] The managed application lock level.
      # Possible values include: 'CanNotDelete', 'ReadOnly', 'None'
      attr_accessor :lock_level

      # @return [String] The managed application definition display name.
      attr_accessor :display_name

      # @return [String] A value indicating whether the package is enabled or
      # not.
      attr_accessor :is_enabled

      # @return [Array<ApplicationProviderAuthorization>] The managed
      # application provider authorizations.
      attr_accessor :authorizations

      # @return [Array<ApplicationArtifact>] The collection of managed
      # application artifacts. The portal will use the files specified as
      # artifacts to construct the user experience of creating a managed
      # application from a managed application definition.
      attr_accessor :artifacts

      # @return [String] The managed application definition description.
      attr_accessor :description

      # @return [String] The managed application definition package file Uri.
      # Use this element
      attr_accessor :package_file_uri

      # @return The inline main template json which has resources to be
      # provisioned. It can be a JObject or well-formed JSON string.
      attr_accessor :main_template

      # @return The createUiDefinition json for the backing template with
      # Microsoft.Solutions/applications resource. It can be a JObject or
      # well-formed JSON string.
      attr_accessor :create_ui_definition


      #
      # Mapper for ApplicationDefinition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationDefinition',
          type: {
            name: 'Composite',
            class_name: 'ApplicationDefinition',
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
              managed_by: {
                client_side_validation: true,
                required: false,
                serialized_name: 'managedBy',
                type: {
                  name: 'String'
                }
              },
              sku: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
                }
              },
              identity: {
                client_side_validation: true,
                required: false,
                serialized_name: 'identity',
                type: {
                  name: 'Composite',
                  class_name: 'Identity'
                }
              },
              lock_level: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.lockLevel',
                type: {
                  name: 'Enum',
                  module: 'ApplicationLockLevel'
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
              is_enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.isEnabled',
                type: {
                  name: 'String'
                }
              },
              authorizations: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.authorizations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ApplicationProviderAuthorizationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApplicationProviderAuthorization'
                      }
                  }
                }
              },
              artifacts: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.artifacts',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ApplicationArtifactElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApplicationArtifact'
                      }
                  }
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              package_file_uri: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.packageFileUri',
                type: {
                  name: 'String'
                }
              },
              main_template: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.mainTemplate',
                type: {
                  name: 'Object'
                }
              },
              create_ui_definition: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.createUiDefinition',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
