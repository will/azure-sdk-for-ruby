# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Automation::Mgmt::V2015_10_31
  module Models
    #
    # Definition of the module type.
    #
    class ModuleModel < TrackedResource

      include MsRestAzure

      # @return [Boolean] Gets or sets the isGlobal flag of the module.
      attr_accessor :is_global

      # @return [String] Gets or sets the version of the module.
      attr_accessor :version

      # @return [Integer] Gets or sets the size in bytes of the module.
      attr_accessor :size_in_bytes

      # @return [Integer] Gets or sets the activity count of the module.
      attr_accessor :activity_count

      # @return [ModuleProvisioningState] Gets or sets the provisioning state
      # of the module. Possible values include: 'Created', 'Creating',
      # 'StartingImportModuleRunbook', 'RunningImportModuleRunbook',
      # 'ContentRetrieved', 'ContentDownloaded', 'ContentValidated',
      # 'ConnectionTypeImported', 'ContentStored', 'ModuleDataStored',
      # 'ActivitiesStored', 'ModuleImportRunbookComplete', 'Succeeded',
      # 'Failed', 'Cancelled', 'Updating'
      attr_accessor :provisioning_state

      # @return [ContentLink] Gets or sets the contentLink of the module.
      attr_accessor :content_link

      # @return [ModuleErrorInfo] Gets or sets the error info of the module.
      attr_accessor :error

      # @return [DateTime] Gets or sets the creation time.
      attr_accessor :creation_time

      # @return [DateTime] Gets or sets the last modified time.
      attr_accessor :last_modified_time

      # @return [String] Gets or sets the description.
      attr_accessor :description

      # @return [Boolean] Gets or sets type of module, if its composite or not.
      attr_accessor :is_composite

      # @return [String] Gets or sets the etag of the resource.
      attr_accessor :etag


      #
      # Mapper for ModuleModel class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Module',
          type: {
            name: 'Composite',
            class_name: 'ModuleModel',
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
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              is_global: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.isGlobal',
                type: {
                  name: 'Boolean'
                }
              },
              version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.version',
                type: {
                  name: 'String'
                }
              },
              size_in_bytes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.sizeInBytes',
                type: {
                  name: 'Number'
                }
              },
              activity_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.activityCount',
                type: {
                  name: 'Number'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'Enum',
                  module: 'ModuleProvisioningState'
                }
              },
              content_link: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.contentLink',
                type: {
                  name: 'Composite',
                  class_name: 'ContentLink'
                }
              },
              error: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.error',
                type: {
                  name: 'Composite',
                  class_name: 'ModuleErrorInfo'
                }
              },
              creation_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.creationTime',
                type: {
                  name: 'DateTime'
                }
              },
              last_modified_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.lastModifiedTime',
                type: {
                  name: 'DateTime'
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
              is_composite: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.isComposite',
                type: {
                  name: 'Boolean'
                }
              },
              etag: {
                client_side_validation: true,
                required: false,
                serialized_name: 'etag',
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
