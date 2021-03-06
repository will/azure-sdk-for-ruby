# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ADHybridHealthService::Mgmt::V2014_01_01
  module Models
    #
    # The details of the onboarded tenant.
    #
    class Tenant

      include MsRestAzure

      # @return [String] The Id of the tenant.
      attr_accessor :tenant_id

      # @return [String] The Azure Active Directory license of the tenant.
      attr_accessor :aad_license

      # @return [Boolean] Indicate if the tenant has Azure Active Directory
      # Premium license or not.
      attr_accessor :aad_premium

      # @return [Boolean] Indicates if the tenant is configured to
      # automatically receive updates for Azure Active Directory Connect Health
      # client side features.
      attr_accessor :agent_auto_update

      # @return [Integer] The time in minutes after which an alert will be
      # auto-suppressed.
      attr_accessor :alert_suppression_time_in_mins

      # @return [Boolean] Indicates if the tenant data can be seen by Microsoft
      # through Azure portal.
      attr_accessor :consented_to_microsoft_dev_ops

      # @return [String] The country letter code of the tenant.
      attr_accessor :country_letter_code

      # @return [DateTime] The date, in UTC, when the tenant was onboarded to
      # Azure Active Directory Connect Health.
      attr_accessor :created_date

      # @return [DateTime] The date and time, in UTC, till when the tenant data
      # can be seen by Microsoft through Azure portal.
      attr_accessor :dev_ops_ttl

      # @return [Boolean] Indicates if the tenant is disabled in Azure Active
      # Directory Connect Health.
      attr_accessor :disabled

      # @return [Integer] The reason due to which the tenant was disabled in
      # Azure Active Directory Connect Health.
      attr_accessor :disabled_reason

      # @return [Array<String>] The list of global administrators for the
      # tenant.
      attr_accessor :global_admins_email

      # @return [String] The initial domain of the tenant.
      attr_accessor :initial_domain

      # @return [DateTime] The date and time, in UTC, when the tenant was last
      # disabled in Azure Active Directory Connect Health.
      attr_accessor :last_disabled

      # @return [DateTime] The date and time, in UTC, when the tenant
      # onboarding status in Azure Active Directory Connect Health was last
      # verified.
      attr_accessor :last_verified

      # @return [Boolean] Indicates if the tenant is allowed to  onboard to
      # Azure Active Directory Connect Health.
      attr_accessor :onboarding_allowed

      # @return [Boolean] Indicates if the tenant is already onboarded to Azure
      # Active Directory Connect Health.
      attr_accessor :onboarded

      # @return The certificate associated with the tenant to onboard data to
      # Azure Active Directory Connect Health.
      attr_accessor :pks_certificate

      # @return [Boolean] Indicates if the tenant has signed up for private
      # preview of Azure Active Directory Connect Health features.
      attr_accessor :private_preview_tenant

      # @return [Boolean] Indicates if data collection for this tenant is
      # disabled or not.
      attr_accessor :tenant_in_quarantine

      # @return [String] The name of the tenant.
      attr_accessor :tenant_name


      #
      # Mapper for Tenant class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Tenant',
          type: {
            name: 'Composite',
            class_name: 'Tenant',
            model_properties: {
              tenant_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tenantId',
                type: {
                  name: 'String'
                }
              },
              aad_license: {
                client_side_validation: true,
                required: false,
                serialized_name: 'aadLicense',
                type: {
                  name: 'String'
                }
              },
              aad_premium: {
                client_side_validation: true,
                required: false,
                serialized_name: 'aadPremium',
                type: {
                  name: 'Boolean'
                }
              },
              agent_auto_update: {
                client_side_validation: true,
                required: false,
                serialized_name: 'agentAutoUpdate',
                type: {
                  name: 'Boolean'
                }
              },
              alert_suppression_time_in_mins: {
                client_side_validation: true,
                required: false,
                serialized_name: 'alertSuppressionTimeInMins',
                type: {
                  name: 'Number'
                }
              },
              consented_to_microsoft_dev_ops: {
                client_side_validation: true,
                required: false,
                serialized_name: 'consentedToMicrosoftDevOps',
                type: {
                  name: 'Boolean'
                }
              },
              country_letter_code: {
                client_side_validation: true,
                required: false,
                serialized_name: 'countryLetterCode',
                type: {
                  name: 'String'
                }
              },
              created_date: {
                client_side_validation: true,
                required: false,
                serialized_name: 'createdDate',
                type: {
                  name: 'DateTime'
                }
              },
              dev_ops_ttl: {
                client_side_validation: true,
                required: false,
                serialized_name: 'devOpsTtl',
                type: {
                  name: 'DateTime'
                }
              },
              disabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'disabled',
                type: {
                  name: 'Boolean'
                }
              },
              disabled_reason: {
                client_side_validation: true,
                required: false,
                serialized_name: 'disabledReason',
                type: {
                  name: 'Number'
                }
              },
              global_admins_email: {
                client_side_validation: true,
                required: false,
                serialized_name: 'globalAdminsEmail',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              initial_domain: {
                client_side_validation: true,
                required: false,
                serialized_name: 'initialDomain',
                type: {
                  name: 'String'
                }
              },
              last_disabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'lastDisabled',
                type: {
                  name: 'DateTime'
                }
              },
              last_verified: {
                client_side_validation: true,
                required: false,
                serialized_name: 'lastVerified',
                type: {
                  name: 'DateTime'
                }
              },
              onboarding_allowed: {
                client_side_validation: true,
                required: false,
                serialized_name: 'onboardingAllowed',
                type: {
                  name: 'Boolean'
                }
              },
              onboarded: {
                client_side_validation: true,
                required: false,
                serialized_name: 'onboarded',
                type: {
                  name: 'Boolean'
                }
              },
              pks_certificate: {
                client_side_validation: true,
                required: false,
                serialized_name: 'pksCertificate',
                type: {
                  name: 'Object'
                }
              },
              private_preview_tenant: {
                client_side_validation: true,
                required: false,
                serialized_name: 'privatePreviewTenant',
                type: {
                  name: 'Boolean'
                }
              },
              tenant_in_quarantine: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tenantInQuarantine',
                type: {
                  name: 'Boolean'
                }
              },
              tenant_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tenantName',
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
