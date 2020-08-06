# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_07_15_preview
  module Models
    #
    # Properties required to create a connection to Azure SQL database Managed
    # instance
    #
    class MiSqlConnectionInfo < ConnectionInfo

      include MsRestAzure


      def initialize
        @type = "MiSqlConnectionInfo"
      end

      attr_accessor :type

      # @return [String] Resource id for Azure SQL database Managed instance
      attr_accessor :managed_instance_resource_id


      #
      # Mapper for MiSqlConnectionInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MiSqlConnectionInfo',
          type: {
            name: 'Composite',
            class_name: 'MiSqlConnectionInfo',
            model_properties: {
              user_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'userName',
                type: {
                  name: 'String'
                }
              },
              password: {
                client_side_validation: true,
                required: false,
                serialized_name: 'password',
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
              managed_instance_resource_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'managedInstanceResourceId',
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
