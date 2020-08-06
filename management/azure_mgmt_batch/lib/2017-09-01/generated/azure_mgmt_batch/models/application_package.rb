# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Batch::Mgmt::V2017_09_01
  module Models
    #
    # An application package which represents a particular version of an
    # application.
    #
    class ApplicationPackage

      include MsRestAzure

      # @return [String] The ID of the application.
      attr_accessor :id

      # @return [String] The version of the application package.
      attr_accessor :version

      # @return [PackageState] The current state of the application package.
      # Possible values include: 'Pending', 'Active', 'Unmapped'
      attr_accessor :state

      # @return [String] The format of the application package, if the package
      # is active.
      attr_accessor :format

      # @return [String] The URL for the application package in Azure Storage.
      attr_accessor :storage_url

      # @return [DateTime] The UTC time at which the Azure Storage URL will
      # expire.
      attr_accessor :storage_url_expiry

      # @return [DateTime] The time at which the package was last activated, if
      # the package is active.
      attr_accessor :last_activation_time


      #
      # Mapper for ApplicationPackage class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationPackage',
          type: {
            name: 'Composite',
            class_name: 'ApplicationPackage',
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
              version: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'version',
                type: {
                  name: 'String'
                }
              },
              state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'state',
                type: {
                  name: 'Enum',
                  module: 'PackageState'
                }
              },
              format: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'format',
                type: {
                  name: 'String'
                }
              },
              storage_url: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'storageUrl',
                type: {
                  name: 'String'
                }
              },
              storage_url_expiry: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'storageUrlExpiry',
                type: {
                  name: 'DateTime'
                }
              },
              last_activation_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'lastActivationTime',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
