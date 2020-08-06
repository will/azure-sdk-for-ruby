# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2019_01_01
  module Models
    #
    # Save Tenant Configuration Contract details.
    #
    class SaveConfigurationParameter

      include MsRestAzure

      # @return [String] The name of the Git branch in which to commit the
      # current configuration snapshot.
      attr_accessor :branch

      # @return [Boolean] The value if true, the current configuration database
      # is committed to the Git repository, even if the Git repository has
      # newer changes that would be overwritten.
      attr_accessor :force


      #
      # Mapper for SaveConfigurationParameter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SaveConfigurationParameter',
          type: {
            name: 'Composite',
            class_name: 'SaveConfigurationParameter',
            model_properties: {
              branch: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.branch',
                type: {
                  name: 'String'
                }
              },
              force: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.force',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
