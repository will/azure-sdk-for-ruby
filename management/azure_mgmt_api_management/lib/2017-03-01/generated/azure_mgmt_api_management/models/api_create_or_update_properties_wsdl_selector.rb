# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2017_03_01
  module Models
    #
    # Criteria to limit import of WSDL to a subset of the document.
    #
    class ApiCreateOrUpdatePropertiesWsdlSelector

      include MsRestAzure

      # @return [String] Name of service to import from WSDL
      attr_accessor :wsdl_service_name

      # @return [String] Name of endpoint(port) to import from WSDL
      attr_accessor :wsdl_endpoint_name


      #
      # Mapper for ApiCreateOrUpdatePropertiesWsdlSelector class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApiCreateOrUpdateProperties_wsdlSelector',
          type: {
            name: 'Composite',
            class_name: 'ApiCreateOrUpdatePropertiesWsdlSelector',
            model_properties: {
              wsdl_service_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'wsdlServiceName',
                type: {
                  name: 'String'
                }
              },
              wsdl_endpoint_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'wsdlEndpointName',
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
