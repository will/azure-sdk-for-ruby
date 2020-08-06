# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Advisor::Mgmt::V2020_01_01
  module Models
    #
    # Advisor Recommendation.
    #
    class ResourceRecommendationBase < Resource

      include MsRestAzure

      # @return [Category] The category of the recommendation. Possible values
      # include: 'HighAvailability', 'Security', 'Performance', 'Cost',
      # 'OperationalExcellence'
      attr_accessor :category

      # @return [Impact] The business impact of the recommendation. Possible
      # values include: 'High', 'Medium', 'Low'
      attr_accessor :impact

      # @return [String] The resource type identified by Advisor.
      attr_accessor :impacted_field

      # @return [String] The resource identified by Advisor.
      attr_accessor :impacted_value

      # @return [DateTime] The most recent time that Advisor checked the
      # validity of the recommendation.
      attr_accessor :last_updated

      # @return The recommendation metadata.
      attr_accessor :metadata

      # @return [String] The recommendation-type GUID.
      attr_accessor :recommendation_type_id

      # @return [Risk] The potential risk of not implementing the
      # recommendation. Possible values include: 'Error', 'Warning', 'None'
      attr_accessor :risk

      # @return [ShortDescription] A summary of the recommendation.
      attr_accessor :short_description

      # @return The list of snoozed and dismissed rules for the recommendation.
      attr_accessor :suppression_ids

      # @return [Hash{String => String}] Extended properties
      attr_accessor :extended_properties

      # @return [ResourceMetadata] Metadata of resource that was assessed
      attr_accessor :resource_metadata


      #
      # Mapper for ResourceRecommendationBase class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ResourceRecommendationBase',
          type: {
            name: 'Composite',
            class_name: 'ResourceRecommendationBase',
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
              category: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.category',
                type: {
                  name: 'String'
                }
              },
              impact: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.impact',
                type: {
                  name: 'String'
                }
              },
              impacted_field: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.impactedField',
                type: {
                  name: 'String'
                }
              },
              impacted_value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.impactedValue',
                type: {
                  name: 'String'
                }
              },
              last_updated: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.lastUpdated',
                type: {
                  name: 'DateTime'
                }
              },
              metadata: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.metadata',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              recommendation_type_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.recommendationTypeId',
                type: {
                  name: 'String'
                }
              },
              risk: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.risk',
                type: {
                  name: 'String'
                }
              },
              short_description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.shortDescription',
                type: {
                  name: 'Composite',
                  class_name: 'ShortDescription'
                }
              },
              suppression_ids: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.suppressionIds',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'UuidElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              extended_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.extendedProperties',
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
              resource_metadata: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.resourceMetadata',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceMetadata'
                }
              }
            }
          }
        }
      end
    end
  end
end
