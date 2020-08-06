# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_07_15_preview
  module Models
    #
    # Information for connecting to Oracle server
    #
    class OracleConnectionInfo < ConnectionInfo

      include MsRestAzure


      def initialize
        @type = "OracleConnectionInfo"
      end

      attr_accessor :type

      # @return [String] EZConnect or TNSName connection string.
      attr_accessor :data_source


      #
      # Mapper for OracleConnectionInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OracleConnectionInfo',
          type: {
            name: 'Composite',
            class_name: 'OracleConnectionInfo',
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
              data_source: {
                client_side_validation: true,
                required: true,
                serialized_name: 'dataSource',
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
