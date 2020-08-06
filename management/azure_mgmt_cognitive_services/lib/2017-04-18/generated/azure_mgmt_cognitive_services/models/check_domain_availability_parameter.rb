# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Mgmt::V2017_04_18
  module Models
    #
    # Check Domain availability parameter.
    #
    class CheckDomainAvailabilityParameter

      include MsRestAzure

      # @return [String] The subdomain name to use.
      attr_accessor :subdomain_name

      # @return [String] The Type of the resource.
      attr_accessor :type


      #
      # Mapper for CheckDomainAvailabilityParameter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CheckDomainAvailabilityParameter',
          type: {
            name: 'Composite',
            class_name: 'CheckDomainAvailabilityParameter',
            model_properties: {
              subdomain_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'subdomainName',
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
              }
            }
          }
        }
      end
    end
  end
end
