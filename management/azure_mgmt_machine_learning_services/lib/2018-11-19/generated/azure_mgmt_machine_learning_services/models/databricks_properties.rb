# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MachineLearningServices::Mgmt::V2018_11_19
  module Models
    #
    # Model object.
    #
    #
    class DatabricksProperties

      include MsRestAzure

      # @return [String] Databricks access token
      attr_accessor :databricks_access_token


      #
      # Mapper for DatabricksProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Databricks_properties',
          type: {
            name: 'Composite',
            class_name: 'DatabricksProperties',
            model_properties: {
              databricks_access_token: {
                client_side_validation: true,
                required: false,
                serialized_name: 'databricksAccessToken',
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
