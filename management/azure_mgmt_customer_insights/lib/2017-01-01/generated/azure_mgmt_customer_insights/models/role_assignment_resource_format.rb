# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CustomerInsights::Mgmt::V2017_01_01
  module Models
    #
    # The Role Assignment resource format.
    #
    class RoleAssignmentResourceFormat < ProxyResource

      include MsRestAzure

      # @return [String] The hub name.
      attr_accessor :tenant_id

      # @return [String] The name of the metadata object.
      attr_accessor :assignment_name

      # @return [Hash{String => String}] Localized display names for the
      # metadata.
      attr_accessor :display_name

      # @return [Hash{String => String}] Localized description for the
      # metadata.
      attr_accessor :description

      # @return [ProvisioningStates] Provisioning state. Possible values
      # include: 'Provisioning', 'Succeeded', 'Expiring', 'Deleting',
      # 'HumanIntervention', 'Failed'
      attr_accessor :provisioning_state

      # @return [RoleTypes] Type of roles. Possible values include: 'Admin',
      # 'Reader', 'ManageAdmin', 'ManageReader', 'DataAdmin', 'DataReader'
      attr_accessor :role

      # @return [Array<AssignmentPrincipal>] The principals being assigned to.
      attr_accessor :principals

      # @return [ResourceSetDescription] Profiles set for the assignment.
      attr_accessor :profiles

      # @return [ResourceSetDescription] Interactions set for the assignment.
      attr_accessor :interactions

      # @return [ResourceSetDescription] Links set for the assignment.
      attr_accessor :links

      # @return [ResourceSetDescription] Kpis set for the assignment.
      attr_accessor :kpis

      # @return [ResourceSetDescription] Sas Policies set for the assignment.
      attr_accessor :sas_policies

      # @return [ResourceSetDescription] Connectors set for the assignment.
      attr_accessor :connectors

      # @return [ResourceSetDescription] Views set for the assignment.
      attr_accessor :views

      # @return [ResourceSetDescription] The Role assignments set for the
      # relationship links.
      attr_accessor :relationship_links

      # @return [ResourceSetDescription] The Role assignments set for the
      # relationships.
      attr_accessor :relationships

      # @return [ResourceSetDescription] Widget types set for the assignment.
      attr_accessor :widget_types

      # @return [ResourceSetDescription] The Role assignments set for the
      # assignment.
      attr_accessor :role_assignments

      # @return [ResourceSetDescription] Widget types set for the assignment.
      attr_accessor :conflation_policies

      # @return [ResourceSetDescription] The Role assignments set for the
      # assignment.
      attr_accessor :segments


      #
      # Mapper for RoleAssignmentResourceFormat class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RoleAssignmentResourceFormat',
          type: {
            name: 'Composite',
            class_name: 'RoleAssignmentResourceFormat',
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
              tenant_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.tenantId',
                type: {
                  name: 'String'
                }
              },
              assignment_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.assignmentName',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.displayName',
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
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.description',
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
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              role: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.role',
                type: {
                  name: 'Enum',
                  module: 'RoleTypes'
                }
              },
              principals: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.principals',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AssignmentPrincipalElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AssignmentPrincipal'
                      }
                  }
                }
              },
              profiles: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.profiles',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceSetDescription'
                }
              },
              interactions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.interactions',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceSetDescription'
                }
              },
              links: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.links',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceSetDescription'
                }
              },
              kpis: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.kpis',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceSetDescription'
                }
              },
              sas_policies: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.sasPolicies',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceSetDescription'
                }
              },
              connectors: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.connectors',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceSetDescription'
                }
              },
              views: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.views',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceSetDescription'
                }
              },
              relationship_links: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.relationshipLinks',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceSetDescription'
                }
              },
              relationships: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.relationships',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceSetDescription'
                }
              },
              widget_types: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.widgetTypes',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceSetDescription'
                }
              },
              role_assignments: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.roleAssignments',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceSetDescription'
                }
              },
              conflation_policies: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.conflationPolicies',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceSetDescription'
                }
              },
              segments: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.segments',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceSetDescription'
                }
              }
            }
          }
        }
      end
    end
  end
end
