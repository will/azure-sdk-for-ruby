# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Hdinsight::Mgmt::V2015_03_01_preview
  module Models
    #
    # The persisted script action for cluster.
    #
    class ScriptActionPersistedGetResponseSpec

      include MsRestAzure

      # @return [String] The name of script action.
      attr_accessor :name

      # @return [String] The URI to the script.
      attr_accessor :uri

      # @return [String] The parameters for the script provided.
      attr_accessor :parameters

      # @return [Array<String>] The list of roles where script will be
      # executed.
      attr_accessor :roles

      # @return [String] The application name for the script action.
      attr_accessor :application_name


      #
      # Mapper for ScriptActionPersistedGetResponseSpec class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ScriptActionPersistedGetResponseSpec',
          type: {
            name: 'Composite',
            class_name: 'ScriptActionPersistedGetResponseSpec',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              uri: {
                client_side_validation: true,
                required: false,
                serialized_name: 'uri',
                type: {
                  name: 'String'
                }
              },
              parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'parameters',
                type: {
                  name: 'String'
                }
              },
              roles: {
                client_side_validation: true,
                required: false,
                serialized_name: 'roles',
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
              application_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'applicationName',
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
