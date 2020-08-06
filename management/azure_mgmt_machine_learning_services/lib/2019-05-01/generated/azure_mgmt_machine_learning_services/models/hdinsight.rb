# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MachineLearningServices::Mgmt::V2019_05_01
  module Models
    #
    # A HDInsight compute.
    #
    class HDInsight < Compute

      include MsRestAzure


      def initialize
        @computeType = "HDInsight"
      end

      attr_accessor :computeType

      # @return [HDInsightProperties]
      attr_accessor :properties


      #
      # Mapper for HDInsight class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'HDInsight',
          type: {
            name: 'Composite',
            class_name: 'HDInsight',
            model_properties: {
              compute_location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'computeLocation',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'provisioningState',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              created_on: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'createdOn',
                type: {
                  name: 'DateTime'
                }
              },
              modified_on: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'modifiedOn',
                type: {
                  name: 'DateTime'
                }
              },
              resource_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resourceId',
                type: {
                  name: 'String'
                }
              },
              provisioning_errors: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'provisioningErrors',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'MachineLearningServiceErrorElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MachineLearningServiceError'
                      }
                  }
                }
              },
              is_attached_compute: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'isAttachedCompute',
                type: {
                  name: 'Boolean'
                }
              },
              computeType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'computeType',
                type: {
                  name: 'String'
                }
              },
              properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'HDInsightProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
