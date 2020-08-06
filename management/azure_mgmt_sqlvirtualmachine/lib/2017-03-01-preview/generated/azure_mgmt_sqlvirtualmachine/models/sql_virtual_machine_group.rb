# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Sqlvirtualmachine::Mgmt::V2017_03_01_preview
  module Models
    #
    # A SQL virtual machine group.
    #
    class SqlVirtualMachineGroup < TrackedResource

      include MsRestAzure

      # @return [String] Provisioning state to track the async operation
      # status.
      attr_accessor :provisioning_state

      # @return [String] SQL image offer. Examples may include SQL2016-WS2016,
      # SQL2017-WS2016.
      attr_accessor :sql_image_offer

      # @return [SqlVmGroupImageSku] SQL image sku. Possible values include:
      # 'Developer', 'Enterprise'
      attr_accessor :sql_image_sku

      # @return [ScaleType] Scale type. Possible values include: 'HA'
      attr_accessor :scale_type

      # @return [ClusterManagerType] Type of cluster manager: Windows Server
      # Failover Cluster (WSFC), implied by the scale type of the group and the
      # OS type. Possible values include: 'WSFC'
      attr_accessor :cluster_manager_type

      # @return [ClusterConfiguration] Cluster type. Possible values include:
      # 'Domainful'
      attr_accessor :cluster_configuration

      # @return [WsfcDomainProfile] Cluster Active Directory domain profile.
      attr_accessor :wsfc_domain_profile


      #
      # Mapper for SqlVirtualMachineGroup class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SqlVirtualMachineGroup',
          type: {
            name: 'Composite',
            class_name: 'SqlVirtualMachineGroup',
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
                required: true,
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
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              sql_image_offer: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.sqlImageOffer',
                type: {
                  name: 'String'
                }
              },
              sql_image_sku: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.sqlImageSku',
                type: {
                  name: 'String'
                }
              },
              scale_type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.scaleType',
                type: {
                  name: 'String'
                }
              },
              cluster_manager_type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.clusterManagerType',
                type: {
                  name: 'String'
                }
              },
              cluster_configuration: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.clusterConfiguration',
                type: {
                  name: 'String'
                }
              },
              wsfc_domain_profile: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.wsfcDomainProfile',
                type: {
                  name: 'Composite',
                  class_name: 'WsfcDomainProfile'
                }
              }
            }
          }
        }
      end
    end
  end
end
