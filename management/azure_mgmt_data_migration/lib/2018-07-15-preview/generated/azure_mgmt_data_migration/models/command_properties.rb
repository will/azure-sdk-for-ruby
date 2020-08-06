# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_07_15_preview
  module Models
    #
    # Base class for all types of DMS command properties. If command is not
    # supported by current client, this object is returned.
    #
    class CommandProperties

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["Migrate.SqlServer.AzureDbSqlMi.Complete"] = "MigrateMISyncCompleteCommandProperties"
      @@discriminatorMap["Migrate.Sync.Complete.Database"] = "MigrateSyncCompleteCommandProperties"
      @@discriminatorMap["cancel"] = "MongoDbCancelCommand"
      @@discriminatorMap["finish"] = "MongoDbFinishCommand"
      @@discriminatorMap["restart"] = "MongoDbRestartCommand"

      def initialize
        @commandType = "CommandProperties"
      end

      attr_accessor :commandType

      # @return [Array<ODataError>] Array of errors. This is ignored if
      # submitted.
      attr_accessor :errors

      # @return [CommandState] The state of the command. This is ignored if
      # submitted. Possible values include: 'Unknown', 'Accepted', 'Running',
      # 'Succeeded', 'Failed'
      attr_accessor :state


      #
      # Mapper for CommandProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CommandProperties',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'commandType',
            uber_parent: 'CommandProperties',
            class_name: 'CommandProperties',
            model_properties: {
              errors: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'errors',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ODataErrorElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ODataError'
                      }
                  }
                }
              },
              state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'state',
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
