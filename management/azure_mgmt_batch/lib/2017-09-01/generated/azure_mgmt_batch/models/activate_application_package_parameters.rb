# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Batch::Mgmt::V2017_09_01
  module Models
    #
    # Parameters for an activating an application package.
    #
    class ActivateApplicationPackageParameters

      include MsRestAzure

      # @return [String] The format of the application package binary file.
      attr_accessor :format


      #
      # Mapper for ActivateApplicationPackageParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ActivateApplicationPackageParameters',
          type: {
            name: 'Composite',
            class_name: 'ActivateApplicationPackageParameters',
            model_properties: {
              format: {
                client_side_validation: true,
                required: true,
                serialized_name: 'format',
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
