# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Batch::Mgmt::V2017_09_01
  module Models
    #
    # Link to an application package inside the batch account
    #
    #
    class ApplicationPackageReference

      include MsRestAzure

      # @return [String] The ID of the application package to install. This
      # must be inside the same batch account as the pool. This can either be a
      # reference to a specific version or the default version if one exists.
      attr_accessor :id

      # @return [String] The version of the application to deploy. If omitted,
      # the default version is deployed. If this is omitted, and no default
      # version is specified for this application, the request fails with the
      # error code InvalidApplicationPackageReferences. If you are calling the
      # REST API directly, the HTTP status code is 409.
      attr_accessor :version


      #
      # Mapper for ApplicationPackageReference class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationPackageReference',
          type: {
            name: 'Composite',
            class_name: 'ApplicationPackageReference',
            model_properties: {
              id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'version',
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
