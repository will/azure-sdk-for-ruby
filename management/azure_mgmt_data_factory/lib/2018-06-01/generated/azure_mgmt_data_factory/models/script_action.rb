# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # Custom script action to run on HDI ondemand cluster once it's up.
    #
    class ScriptAction

      include MsRestAzure

      # @return [String] The user provided name of the script action.
      attr_accessor :name

      # @return [String] The URI for the script action.
      attr_accessor :uri

      # @return The node types on which the script action should be executed.
      attr_accessor :roles

      # @return [String] The parameters for the script action.
      attr_accessor :parameters


      #
      # Mapper for ScriptAction class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ScriptAction',
          type: {
            name: 'Composite',
            class_name: 'ScriptAction',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              uri: {
                client_side_validation: true,
                required: true,
                serialized_name: 'uri',
                type: {
                  name: 'String'
                }
              },
              roles: {
                client_side_validation: true,
                required: true,
                serialized_name: 'roles',
                type: {
                  name: 'Object'
                }
              },
              parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'parameters',
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
