# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorSimple8000Series::Mgmt::V2017_06_01
  module Models
    #
    # The cloud appliance.
    #
    class CloudAppliance

      include MsRestAzure

      # @return [String] The name.
      attr_accessor :name

      # @return [String] The name of the virtual network.
      attr_accessor :vnet_name

      # @return [String] The virtual network region.
      attr_accessor :vnet_region

      # @return [Boolean] Indicates whether virtual network used is configured
      # with DNS or not.
      attr_accessor :is_vnet_dns_configured

      # @return [Boolean] Indicates whether virtual network used is configured
      # with express route or not.
      attr_accessor :is_vnet_express_configured

      # @return [String] The name of the subnet.
      attr_accessor :subnet_name

      # @return [String] The name of the storage account.
      attr_accessor :storage_account_name

      # @return [String] The type of the storage account.
      attr_accessor :storage_account_type

      # @return [String] The type of the virtual machine.
      attr_accessor :vm_type

      # @return [String] The name of the virtual machine image.
      attr_accessor :vm_image_name

      # @return [String] The model number.
      attr_accessor :model_number


      #
      # Mapper for CloudAppliance class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CloudAppliance',
          type: {
            name: 'Composite',
            class_name: 'CloudAppliance',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              vnet_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'vnetName',
                type: {
                  name: 'String'
                }
              },
              vnet_region: {
                client_side_validation: true,
                required: true,
                serialized_name: 'vnetRegion',
                type: {
                  name: 'String'
                }
              },
              is_vnet_dns_configured: {
                client_side_validation: true,
                required: false,
                serialized_name: 'isVnetDnsConfigured',
                type: {
                  name: 'Boolean'
                }
              },
              is_vnet_express_configured: {
                client_side_validation: true,
                required: false,
                serialized_name: 'isVnetExpressConfigured',
                type: {
                  name: 'Boolean'
                }
              },
              subnet_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'subnetName',
                type: {
                  name: 'String'
                }
              },
              storage_account_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'storageAccountName',
                type: {
                  name: 'String'
                }
              },
              storage_account_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'storageAccountType',
                type: {
                  name: 'String'
                }
              },
              vm_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'vmType',
                type: {
                  name: 'String'
                }
              },
              vm_image_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'vmImageName',
                type: {
                  name: 'String'
                }
              },
              model_number: {
                client_side_validation: true,
                required: false,
                serialized_name: 'modelNumber',
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
