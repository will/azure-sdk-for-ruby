# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Security::Mgmt::V2017_08_01
  module Models
    #
    # a compliance result
    #
    class ComplianceResult < Resource

      include MsRestAzure

      # @return [ResourceStatus] The status of the resource regarding a single
      # assessment. Possible values include: 'Healthy', 'NotApplicable',
      # 'OffByPolicy', 'NotHealthy'
      attr_accessor :resource_status


      #
      # Mapper for ComplianceResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ComplianceResult',
          type: {
            name: 'Composite',
            class_name: 'ComplianceResult',
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
              resource_status: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.resourceStatus',
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
