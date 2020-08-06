# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DevTestLabs::Mgmt::V2016_05_15
  module Models
    #
    # A cost item.
    #
    class LabCost < Resource

      include MsRestAzure

      # @return [TargetCostProperties] The target cost properties
      attr_accessor :target_cost

      # @return [LabCostSummaryProperties] The lab cost summary component of
      # the cost data.
      attr_accessor :lab_cost_summary

      # @return [Array<LabCostDetailsProperties>] The lab cost details
      # component of the cost data.
      attr_accessor :lab_cost_details

      # @return [Array<LabResourceCostProperties>] The resource cost component
      # of the cost data.
      attr_accessor :resource_costs

      # @return [String] The currency code of the cost.
      attr_accessor :currency_code

      # @return [DateTime] The start time of the cost data.
      attr_accessor :start_date_time

      # @return [DateTime] The end time of the cost data.
      attr_accessor :end_date_time

      # @return [DateTime] The creation date of the cost.
      attr_accessor :created_date

      # @return [String] The provisioning status of the resource.
      attr_accessor :provisioning_state

      # @return [String] The unique immutable identifier of a resource (Guid).
      attr_accessor :unique_identifier


      #
      # Mapper for LabCost class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'LabCost',
          type: {
            name: 'Composite',
            class_name: 'LabCost',
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
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              target_cost: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.targetCost',
                type: {
                  name: 'Composite',
                  class_name: 'TargetCostProperties'
                }
              },
              lab_cost_summary: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.labCostSummary',
                type: {
                  name: 'Composite',
                  class_name: 'LabCostSummaryProperties'
                }
              },
              lab_cost_details: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.labCostDetails',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'LabCostDetailsPropertiesElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'LabCostDetailsProperties'
                      }
                  }
                }
              },
              resource_costs: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.resourceCosts',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'LabResourceCostPropertiesElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'LabResourceCostProperties'
                      }
                  }
                }
              },
              currency_code: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.currencyCode',
                type: {
                  name: 'String'
                }
              },
              start_date_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.startDateTime',
                type: {
                  name: 'DateTime'
                }
              },
              end_date_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.endDateTime',
                type: {
                  name: 'DateTime'
                }
              },
              created_date: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.createdDate',
                type: {
                  name: 'DateTime'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              unique_identifier: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.uniqueIdentifier',
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
