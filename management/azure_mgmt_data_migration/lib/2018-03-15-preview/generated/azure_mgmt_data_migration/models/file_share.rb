# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_03_15_preview
  module Models
    #
    # File share information with Path, Username, and Password.
    #
    class FileShare

      include MsRestAzure

      # @return [String] User name credential to connect to the share location
      attr_accessor :user_name

      # @return [String] Password credential used to connect to the share
      # location.
      attr_accessor :password

      # @return [String] The folder path for this share.
      attr_accessor :path


      #
      # Mapper for FileShare class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'FileShare',
          type: {
            name: 'Composite',
            class_name: 'FileShare',
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
              path: {
                client_side_validation: true,
                required: true,
                serialized_name: 'path',
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
