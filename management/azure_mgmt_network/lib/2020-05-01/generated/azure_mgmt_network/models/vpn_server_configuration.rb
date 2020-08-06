# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_05_01
  module Models
    #
    # VpnServerConfiguration Resource.
    #
    class VpnServerConfiguration < Resource

      include MsRestAzure

      # @return [String] The name of the VpnServerConfiguration that is unique
      # within a resource group.
      attr_accessor :vpn_server_configuration_name

      # @return [Array<VpnGatewayTunnelingProtocol>] VPN protocols for the
      # VpnServerConfiguration.
      attr_accessor :vpn_protocols

      # @return [Array<VpnAuthenticationType>] VPN authentication types for the
      # VpnServerConfiguration.
      attr_accessor :vpn_authentication_types

      # @return [Array<VpnServerConfigVpnClientRootCertificate>] VPN client
      # root certificate of VpnServerConfiguration.
      attr_accessor :vpn_client_root_certificates

      # @return [Array<VpnServerConfigVpnClientRevokedCertificate>] VPN client
      # revoked certificate of VpnServerConfiguration.
      attr_accessor :vpn_client_revoked_certificates

      # @return [Array<VpnServerConfigRadiusServerRootCertificate>] Radius
      # Server root certificate of VpnServerConfiguration.
      attr_accessor :radius_server_root_certificates

      # @return [Array<VpnServerConfigRadiusClientRootCertificate>] Radius
      # client root certificate of VpnServerConfiguration.
      attr_accessor :radius_client_root_certificates

      # @return [Array<IpsecPolicy>] VpnClientIpsecPolicies for
      # VpnServerConfiguration.
      attr_accessor :vpn_client_ipsec_policies

      # @return [String] The radius server address property of the
      # VpnServerConfiguration resource for point to site client connection.
      attr_accessor :radius_server_address

      # @return [String] The radius secret property of the
      # VpnServerConfiguration resource for point to site client connection.
      attr_accessor :radius_server_secret

      # @return [Array<RadiusServer>] Multiple Radius Server configuration for
      # VpnServerConfiguration.
      attr_accessor :radius_servers

      # @return [AadAuthenticationParameters] The set of aad vpn authentication
      # parameters.
      attr_accessor :aad_authentication_parameters

      # @return [String] The provisioning state of the VpnServerConfiguration
      # resource. Possible values are: 'Updating', 'Deleting', and 'Failed'.
      attr_accessor :provisioning_state

      # @return [Array<P2SVpnGateway>] List of references to P2SVpnGateways.
      attr_accessor :p2svpn_gateways

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :vpn_server_configuration_properties_etag

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag


      #
      # Mapper for VpnServerConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VpnServerConfiguration',
          type: {
            name: 'Composite',
            class_name: 'VpnServerConfiguration',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
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
              vpn_server_configuration_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.name',
                type: {
                  name: 'String'
                }
              },
              vpn_protocols: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.vpnProtocols',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'VpnGatewayTunnelingProtocolElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              vpn_authentication_types: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.vpnAuthenticationTypes',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'VpnAuthenticationTypeElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              vpn_client_root_certificates: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.vpnClientRootCertificates',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'VpnServerConfigVpnClientRootCertificateElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VpnServerConfigVpnClientRootCertificate'
                      }
                  }
                }
              },
              vpn_client_revoked_certificates: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.vpnClientRevokedCertificates',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'VpnServerConfigVpnClientRevokedCertificateElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VpnServerConfigVpnClientRevokedCertificate'
                      }
                  }
                }
              },
              radius_server_root_certificates: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.radiusServerRootCertificates',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'VpnServerConfigRadiusServerRootCertificateElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VpnServerConfigRadiusServerRootCertificate'
                      }
                  }
                }
              },
              radius_client_root_certificates: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.radiusClientRootCertificates',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'VpnServerConfigRadiusClientRootCertificateElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VpnServerConfigRadiusClientRootCertificate'
                      }
                  }
                }
              },
              vpn_client_ipsec_policies: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.vpnClientIpsecPolicies',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'IpsecPolicyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'IpsecPolicy'
                      }
                  }
                }
              },
              radius_server_address: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.radiusServerAddress',
                type: {
                  name: 'String'
                }
              },
              radius_server_secret: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.radiusServerSecret',
                type: {
                  name: 'String'
                }
              },
              radius_servers: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.radiusServers',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'RadiusServerElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RadiusServer'
                      }
                  }
                }
              },
              aad_authentication_parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.aadAuthenticationParameters',
                type: {
                  name: 'Composite',
                  class_name: 'AadAuthenticationParameters'
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
              p2svpn_gateways: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.p2SVpnGateways',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'P2SVpnGatewayElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'P2SVpnGateway'
                      }
                  }
                }
              },
              vpn_server_configuration_properties_etag: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.etag',
                type: {
                  name: 'String'
                }
              },
              etag: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'etag',
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
