# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::Mgmt::V2016_09_01
  module Models
    #
    # Cluster update request
    #
    class ClusterUpdateParameters

      include MsRestAzure

      # @return [Enum] This level is used to set the number of replicas of the
      # system services. Possible values include: 'Bronze', 'Silver', 'Gold'
      attr_accessor :reliability_level

      # @return [Enum] Cluster upgrade mode indicates if fabric upgrade is
      # initiated automatically by the system or not. Possible values include:
      # 'Automatic', 'Manual'
      attr_accessor :upgrade_mode

      # @return [String] The ServiceFabric code version, if set it, please make
      # sure you have set upgradeMode to Manual, otherwise ,it will fail, if
      # you are using PUT new cluster, you can get the version by using
      # ClusterVersions_List, if you are updating existing cluster, you can get
      # the availableClusterVersions from Clusters_Get
      attr_accessor :cluster_code_version

      # @return [CertificateDescription] This primay certificate will be used
      # as cluster node to node security, SSL certificate for cluster
      # management endpoint and default admin client, the certificate should
      # exist in the virtual machine scale sets or Azure key vault, before you
      # add it. It will override original value
      attr_accessor :certificate

      # @return [Array<ClientCertificateThumbprint>] The client thumbprint
      # details, it is used for client access for cluster operation, it will
      # override existing collection
      attr_accessor :client_certificate_thumbprints

      # @return [Array<ClientCertificateCommonName>] List of client
      # certificates to whitelist based on common names.
      attr_accessor :client_certificate_common_names

      # @return [Array<SettingsSectionDescription>] List of custom fabric
      # settings to configure the cluster, Note, it will overwrite existing
      # collection
      attr_accessor :fabric_settings

      # @return [CertificateDescription] Certificate for the reverse proxy
      attr_accessor :reverse_proxy_certificate

      # @return [Array<NodeTypeDescription>] The list of nodetypes that make up
      # the cluster, it will override
      attr_accessor :node_types

      # @return [ClusterUpgradePolicy] The policy to use when upgrading the
      # cluster.
      attr_accessor :upgrade_description

      # @return [Hash{String => String}] Cluster update parameters
      attr_accessor :tags


      #
      # Mapper for ClusterUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ClusterUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'ClusterUpdateParameters',
            model_properties: {
              reliability_level: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.reliabilityLevel',
                type: {
                  name: 'String'
                }
              },
              upgrade_mode: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.upgradeMode',
                type: {
                  name: 'String'
                }
              },
              cluster_code_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.clusterCodeVersion',
                type: {
                  name: 'String'
                }
              },
              certificate: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.certificate',
                type: {
                  name: 'Composite',
                  class_name: 'CertificateDescription'
                }
              },
              client_certificate_thumbprints: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.clientCertificateThumbprints',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ClientCertificateThumbprintElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ClientCertificateThumbprint'
                      }
                  }
                }
              },
              client_certificate_common_names: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.clientCertificateCommonNames',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ClientCertificateCommonNameElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ClientCertificateCommonName'
                      }
                  }
                }
              },
              fabric_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.fabricSettings',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SettingsSectionDescriptionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SettingsSectionDescription'
                      }
                  }
                }
              },
              reverse_proxy_certificate: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.reverseProxyCertificate',
                type: {
                  name: 'Composite',
                  class_name: 'CertificateDescription'
                }
              },
              node_types: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.nodeTypes',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'NodeTypeDescriptionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'NodeTypeDescription'
                      }
                  }
                }
              },
              upgrade_description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.upgradeDescription',
                type: {
                  name: 'Composite',
                  class_name: 'ClusterUpgradePolicy'
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
              }
            }
          }
        }
      end
    end
  end
end
