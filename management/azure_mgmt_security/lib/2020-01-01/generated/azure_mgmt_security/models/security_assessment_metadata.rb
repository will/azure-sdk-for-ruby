# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Security::Mgmt::V2020_01_01
  module Models
    #
    # Security assessment metadata
    #
    class SecurityAssessmentMetadata < Resource

      include MsRestAzure

      # @return [String] User friendly display name of the assessment
      attr_accessor :display_name

      # @return [String] Azure resource ID of the policy definition that turns
      # this assessment calculation on
      attr_accessor :policy_definition_id

      # @return [String] Human readable description of the assessment
      attr_accessor :description

      # @return [String] Human readable description of what you should do to
      # mitigate this security issue
      attr_accessor :remediation_description

      # @return [Array<Category>]
      attr_accessor :category

      # @return [Severity] The severity level of the assessment. Possible
      # values include: 'Low', 'Medium', 'High'
      attr_accessor :severity

      # @return [UserImpact] The user impact of the assessment. Possible values
      # include: 'Low', 'Moderate', 'High'
      attr_accessor :user_impact

      # @return [ImplementationEffort] The implementation effort required to
      # remediate this assessment. Possible values include: 'Low', 'Moderate',
      # 'High'
      attr_accessor :implementation_effort

      # @return [Array<Threats>]
      attr_accessor :threats

      # @return [Boolean] True if this assessment is in preview release status
      attr_accessor :preview

      # @return [AssessmentType] BuiltIn if the assessment based on built-in
      # Azure Policy definition, Custom if the assessment based on custom Azure
      # Policy definition. Possible values include: 'BuiltIn', 'CustomPolicy',
      # 'CustomerManaged', 'VerifiedPartner'
      attr_accessor :assessment_type

      # @return [SecurityAssessmentMetadataPartnerData]
      attr_accessor :partner_data


      #
      # Mapper for SecurityAssessmentMetadata class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SecurityAssessmentMetadata',
          type: {
            name: 'Composite',
            class_name: 'SecurityAssessmentMetadata',
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
              display_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.displayName',
                type: {
                  name: 'String'
                }
              },
              policy_definition_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.policyDefinitionId',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              remediation_description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.remediationDescription',
                type: {
                  name: 'String'
                }
              },
              category: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.category',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'CategoryElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              severity: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.severity',
                type: {
                  name: 'String'
                }
              },
              user_impact: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.userImpact',
                type: {
                  name: 'String'
                }
              },
              implementation_effort: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.implementationEffort',
                type: {
                  name: 'String'
                }
              },
              threats: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.threats',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ThreatsElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              preview: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.preview',
                type: {
                  name: 'Boolean'
                }
              },
              assessment_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.assessmentType',
                type: {
                  name: 'String'
                }
              },
              partner_data: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.partnerData',
                type: {
                  name: 'Composite',
                  class_name: 'SecurityAssessmentMetadataPartnerData'
                }
              }
            }
          }
        }
      end
    end
  end
end
