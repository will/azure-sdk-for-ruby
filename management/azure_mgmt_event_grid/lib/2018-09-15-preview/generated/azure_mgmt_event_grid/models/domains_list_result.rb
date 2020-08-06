# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::Mgmt::V2018_09_15_preview
  module Models
    #
    # Result of the List Domains operation
    #
    class DomainsListResult

      include MsRestAzure

      # @return [Array<Domain>] A collection of Domains
      attr_accessor :value


      #
      # Mapper for DomainsListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DomainsListResult',
          type: {
            name: 'Composite',
            class_name: 'DomainsListResult',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DomainElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Domain'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
