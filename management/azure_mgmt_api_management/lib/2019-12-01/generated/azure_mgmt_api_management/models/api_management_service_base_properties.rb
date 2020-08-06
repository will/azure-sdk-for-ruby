# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2019_12_01
  module Models
    #
    # Base Properties of an API Management service resource description.
    #
    class ApiManagementServiceBaseProperties

      include MsRestAzure

      # @return [String] Email address from which the notification will be
      # sent.
      attr_accessor :notification_sender_email

      # @return [String] The current provisioning state of the API Management
      # service which can be one of the following:
      # Created/Activating/Succeeded/Updating/Failed/Stopped/Terminating/TerminationFailed/Deleted.
      attr_accessor :provisioning_state

      # @return [String] The provisioning state of the API Management service,
      # which is targeted by the long running operation started on the service.
      attr_accessor :target_provisioning_state

      # @return [DateTime] Creation UTC date of the API Management service.The
      # date conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as
      # specified by the ISO 8601 standard.
      attr_accessor :created_at_utc

      # @return [String] Gateway URL of the API Management service.
      attr_accessor :gateway_url

      # @return [String] Gateway URL of the API Management service in the
      # Default Region.
      attr_accessor :gateway_regional_url

      # @return [String] Publisher portal endpoint Url of the API Management
      # service.
      attr_accessor :portal_url

      # @return [String] Management API endpoint URL of the API Management
      # service.
      attr_accessor :management_api_url

      # @return [String] SCM endpoint URL of the API Management service.
      attr_accessor :scm_url

      # @return [String] DEveloper Portal endpoint URL of the API Management
      # service.
      attr_accessor :developer_portal_url

      # @return [Array<HostnameConfiguration>] Custom hostname configuration of
      # the API Management service.
      attr_accessor :hostname_configurations

      # @return [Array<String>] Public Static Load Balanced IP addresses of the
      # API Management service in Primary region. Available only for Basic,
      # Standard and Premium SKU.
      attr_accessor :public_ipaddresses

      # @return [Array<String>] Private Static Load Balanced IP addresses of
      # the API Management service in Primary region which is deployed in an
      # Internal Virtual Network. Available only for Basic, Standard and
      # Premium SKU.
      attr_accessor :private_ipaddresses

      # @return [VirtualNetworkConfiguration] Virtual network configuration of
      # the API Management service.
      attr_accessor :virtual_network_configuration

      # @return [Array<AdditionalLocation>] Additional datacenter locations of
      # the API Management service.
      attr_accessor :additional_locations

      # @return [Hash{String => String}] Custom properties of the API
      # Management service.</br>Setting
      # `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Ciphers.TripleDes168`
      # will disable the cipher TLS_RSA_WITH_3DES_EDE_CBC_SHA for all TLS(1.0,
      # 1.1 and 1.2).</br>Setting
      # `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Protocols.Tls11`
      # can be used to disable just TLS 1.1.</br>Setting
      # `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Protocols.Tls10`
      # can be used to disable TLS 1.0 on an API Management
      # service.</br>Setting
      # `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Backend.Protocols.Tls11`
      # can be used to disable just TLS 1.1 for communications with
      # backends.</br>Setting
      # `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Backend.Protocols.Tls10`
      # can be used to disable TLS 1.0 for communications with
      # backends.</br>Setting
      # `Microsoft.WindowsAzure.ApiManagement.Gateway.Protocols.Server.Http2`
      # can be used to enable HTTP2 protocol on an API Management
      # service.</br>Not specifying any of these properties on PATCH operation
      # will reset omitted properties' values to their defaults. For all the
      # settings except Http2 the default value is `True` if the service was
      # created on or before April 1st 2018 and `False` otherwise. Http2
      # setting's default value is `False`.</br></br>You can disable any of
      # next ciphers by using settings
      # `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Ciphers.[cipher_name]`:
      # TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA,
      # TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA,
      # TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA, TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA,
      # TLS_RSA_WITH_AES_128_GCM_SHA256, TLS_RSA_WITH_AES_256_CBC_SHA256,
      # TLS_RSA_WITH_AES_128_CBC_SHA256, TLS_RSA_WITH_AES_256_CBC_SHA,
      # TLS_RSA_WITH_AES_128_CBC_SHA. For example,
      # `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Ciphers.TLS_RSA_WITH_AES_128_CBC_SHA256`:`false`.
      # The default value is `true` for them.  Note: next ciphers can't be
      # disabled since they are required by Azure CloudService internal
      # components:
      # TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384,TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256,TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384,TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256,TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384,TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256,TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384,TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256,TLS_RSA_WITH_AES_256_GCM_SHA384
      attr_accessor :custom_properties

      # @return [Array<CertificateConfiguration>] List of Certificates that
      # need to be installed in the API Management service. Max supported
      # certificates that can be installed is 10.
      attr_accessor :certificates

      # @return [Boolean] Property only meant to be used for Consumption SKU
      # Service. This enforces a client certificate to be presented on each
      # request to the gateway. This also enables the ability to authenticate
      # the certificate in the policy on the gateway. Default value: false .
      attr_accessor :enable_client_certificate

      # @return [Boolean] Property only valid for an Api Management service
      # deployed in multiple locations. This can be used to disable the gateway
      # in master region. Default value: false .
      attr_accessor :disable_gateway

      # @return [VirtualNetworkType] The type of VPN in which API Management
      # service needs to be configured in. None (Default Value) means the API
      # Management service is not part of any Virtual Network, External means
      # the API Management deployment is set up inside a Virtual Network having
      # an Internet Facing Endpoint, and Internal means that API Management
      # deployment is setup inside a Virtual Network having an Intranet Facing
      # Endpoint only. Possible values include: 'None', 'External', 'Internal'.
      # Default value: 'None' .
      attr_accessor :virtual_network_type

      # @return [ApiVersionConstraint] Control Plane Apis version constraint
      # for the API Management service.
      attr_accessor :api_version_constraint


      #
      # Mapper for ApiManagementServiceBaseProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApiManagementServiceBaseProperties',
          type: {
            name: 'Composite',
            class_name: 'ApiManagementServiceBaseProperties',
            model_properties: {
              notification_sender_email: {
                client_side_validation: true,
                required: false,
                serialized_name: 'notificationSenderEmail',
                constraints: {
                  MaxLength: 100
                },
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
              target_provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'targetProvisioningState',
                type: {
                  name: 'String'
                }
              },
              created_at_utc: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'createdAtUtc',
                type: {
                  name: 'DateTime'
                }
              },
              gateway_url: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'gatewayUrl',
                type: {
                  name: 'String'
                }
              },
              gateway_regional_url: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'gatewayRegionalUrl',
                type: {
                  name: 'String'
                }
              },
              portal_url: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'portalUrl',
                type: {
                  name: 'String'
                }
              },
              management_api_url: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'managementApiUrl',
                type: {
                  name: 'String'
                }
              },
              scm_url: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'scmUrl',
                type: {
                  name: 'String'
                }
              },
              developer_portal_url: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'developerPortalUrl',
                type: {
                  name: 'String'
                }
              },
              hostname_configurations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'hostnameConfigurations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'HostnameConfigurationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'HostnameConfiguration'
                      }
                  }
                }
              },
              public_ipaddresses: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'publicIPAddresses',
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
              private_ipaddresses: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'privateIPAddresses',
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
              virtual_network_configuration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'virtualNetworkConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualNetworkConfiguration'
                }
              },
              additional_locations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'additionalLocations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AdditionalLocationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AdditionalLocation'
                      }
                  }
                }
              },
              custom_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'customProperties',
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
              certificates: {
                client_side_validation: true,
                required: false,
                serialized_name: 'certificates',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'CertificateConfigurationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'CertificateConfiguration'
                      }
                  }
                }
              },
              enable_client_certificate: {
                client_side_validation: true,
                required: false,
                serialized_name: 'enableClientCertificate',
                default_value: false,
                type: {
                  name: 'Boolean'
                }
              },
              disable_gateway: {
                client_side_validation: true,
                required: false,
                serialized_name: 'disableGateway',
                default_value: false,
                type: {
                  name: 'Boolean'
                }
              },
              virtual_network_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'virtualNetworkType',
                default_value: 'None',
                type: {
                  name: 'String'
                }
              },
              api_version_constraint: {
                client_side_validation: true,
                required: false,
                serialized_name: 'apiVersionConstraint',
                type: {
                  name: 'Composite',
                  class_name: 'ApiVersionConstraint'
                }
              }
            }
          }
        }
      end
    end
  end
end
