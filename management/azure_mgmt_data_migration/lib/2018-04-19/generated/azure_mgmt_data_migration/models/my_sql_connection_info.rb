# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_04_19
  module Models
    #
    # Information for connecting to MySQL server
    #
    class MySqlConnectionInfo < ConnectionInfo

      include MsRestAzure


      def initialize
        @type = "MySqlConnectionInfo"
      end

      attr_accessor :type

      # @return [String] Name of the server
      attr_accessor :server_name

      # @return [Integer] Port for Server
      attr_accessor :port


      #
      # Mapper for MySqlConnectionInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MySqlConnectionInfo',
          type: {
            name: 'Composite',
            class_name: 'MySqlConnectionInfo',
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
              server_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'serverName',
                type: {
                  name: 'String'
                }
              },
              port: {
                client_side_validation: true,
                required: true,
                serialized_name: 'port',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
