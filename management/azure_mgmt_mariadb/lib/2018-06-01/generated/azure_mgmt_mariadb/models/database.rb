# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MariaDB::Mgmt::V2018_06_01
  module Models
    #
    # Represents a Database.
    #
    class Database < ProxyResource

      include MsRestAzure

      # @return [String] The charset of the database.
      attr_accessor :charset

      # @return [String] The collation of the database.
      attr_accessor :collation


      #
      # Mapper for Database class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Database',
          type: {
            name: 'Composite',
            class_name: 'Database',
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
              charset: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.charset',
                type: {
                  name: 'String'
                }
              },
              collation: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.collation',
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
