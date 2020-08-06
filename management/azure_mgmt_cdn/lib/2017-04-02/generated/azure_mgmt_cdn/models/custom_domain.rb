# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2017_04_02
  module Models
    #
    # Friendly domain name mapping to the endpoint hostname that the customer
    # provides for branding purposes, e.g. www.contoso.com.
    #
    class CustomDomain < ProxyResource

      include MsRestAzure

      # @return [String] The host name of the custom domain. Must be a domain
      # name.
      attr_accessor :host_name

      # @return [CustomDomainResourceState] Resource status of the custom
      # domain. Possible values include: 'Creating', 'Active', 'Deleting'
      attr_accessor :resource_state

      # @return [CustomHttpsProvisioningState] Provisioning status of Custom
      # Https of the custom domain. Possible values include: 'Enabling',
      # 'Enabled', 'Disabling', 'Disabled', 'Failed'
      attr_accessor :custom_https_provisioning_state

      # @return [CustomHttpsProvisioningSubstate] Provisioning substate shows
      # the progress of custom HTTPS enabling/disabling process step by step.
      # Possible values include: 'SubmittingDomainControlValidationRequest',
      # 'PendingDomainControlValidationREquestApproval',
      # 'DomainControlValidationRequestApproved',
      # 'DomainControlValidationRequestRejected',
      # 'DomainControlValidationRequestTimedOut', 'IssuingCertificate',
      # 'DeployingCertificate', 'CertificateDeployed', 'DeletingCertificate',
      # 'CertificateDeleted'
      attr_accessor :custom_https_provisioning_substate

      # @return [String] Special validation or data may be required when
      # delivering CDN to some regions due to local compliance reasons. E.g.
      # ICP license number of a custom domain is required to deliver content in
      # China.
      attr_accessor :validation_data

      # @return [String] Provisioning status of the custom domain.
      attr_accessor :provisioning_state


      #
      # Mapper for CustomDomain class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CustomDomain',
          type: {
            name: 'Composite',
            class_name: 'CustomDomain',
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
              host_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.hostName',
                type: {
                  name: 'String'
                }
              },
              resource_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.resourceState',
                type: {
                  name: 'String'
                }
              },
              custom_https_provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.customHttpsProvisioningState',
                type: {
                  name: 'String'
                }
              },
              custom_https_provisioning_substate: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.customHttpsProvisioningSubstate',
                type: {
                  name: 'String'
                }
              },
              validation_data: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.validationData',
                type: {
                  name: 'String'
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
              }
            }
          }
        }
      end
    end
  end
end
