# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_07_15_preview
  module Models
    #
    # Output for task that validates migration input for Azure SQL Database
    # Managed Instance online migration
    #
    class ValidateMigrationInputSqlServerSqlMISyncTaskOutput

      include MsRestAzure

      # @return [String] Database identifier
      attr_accessor :id

      # @return [String] Name of database
      attr_accessor :name

      # @return [Array<ReportableException>] Errors associated with a selected
      # database object
      attr_accessor :validation_errors


      #
      # Mapper for ValidateMigrationInputSqlServerSqlMISyncTaskOutput class as
      # Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ValidateMigrationInputSqlServerSqlMISyncTaskOutput',
          type: {
            name: 'Composite',
            class_name: 'ValidateMigrationInputSqlServerSqlMISyncTaskOutput',
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
              validation_errors: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'validationErrors',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ReportableExceptionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ReportableException'
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
