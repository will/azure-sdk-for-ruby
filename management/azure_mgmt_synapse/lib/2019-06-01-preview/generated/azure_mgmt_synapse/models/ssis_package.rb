# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Synapse::Mgmt::V2019_06_01_preview
  module Models
    #
    # Ssis Package.
    #
    class SsisPackage < SsisObjectMetadata

      include MsRestAzure


      def initialize
        @type = "Package"
      end

      attr_accessor :type

      # @return [Integer] Folder id which contains package.
      attr_accessor :folder_id

      # @return [Integer] Project version which contains package.
      attr_accessor :project_version

      # @return [Integer] Project id which contains package.
      attr_accessor :project_id

      # @return [Array<SsisParameter>] Parameters in package
      attr_accessor :parameters


      #
      # Mapper for SsisPackage class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Package',
          type: {
            name: 'Composite',
            class_name: 'SsisPackage',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'Number'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              folder_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'folderId',
                type: {
                  name: 'Number'
                }
              },
              project_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'projectVersion',
                type: {
                  name: 'Number'
                }
              },
              project_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'projectId',
                type: {
                  name: 'Number'
                }
              },
              parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'parameters',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SsisParameterElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SsisParameter'
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
