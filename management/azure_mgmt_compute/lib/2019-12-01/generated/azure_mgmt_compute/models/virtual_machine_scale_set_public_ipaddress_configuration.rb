# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2019_12_01
  module Models
    #
    # Describes a virtual machines scale set IP Configuration's PublicIPAddress
    # configuration
    #
    class VirtualMachineScaleSetPublicIPAddressConfiguration

      include MsRestAzure

      # @return [String] The publicIP address configuration name.
      attr_accessor :name

      # @return [Integer] The idle timeout of the public IP address.
      attr_accessor :idle_timeout_in_minutes

      # @return [VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings]
      # The dns settings to be applied on the publicIP addresses .
      attr_accessor :dns_settings

      # @return [Array<VirtualMachineScaleSetIpTag>] The list of IP tags
      # associated with the public IP address.
      attr_accessor :ip_tags

      # @return [SubResource] The PublicIPPrefix from which to allocate
      # publicIP addresses.
      attr_accessor :public_ipprefix

      # @return [IPVersion] Available from Api-Version 2019-07-01 onwards, it
      # represents whether the specific ipconfiguration is IPv4 or IPv6.
      # Default is taken as IPv4. Possible values are: 'IPv4' and 'IPv6'.
      # Possible values include: 'IPv4', 'IPv6'
      attr_accessor :public_ipaddress_version


      #
      # Mapper for VirtualMachineScaleSetPublicIPAddressConfiguration class as
      # Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualMachineScaleSetPublicIPAddressConfiguration',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineScaleSetPublicIPAddressConfiguration',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              idle_timeout_in_minutes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.idleTimeoutInMinutes',
                type: {
                  name: 'Number'
                }
              },
              dns_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.dnsSettings',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings'
                }
              },
              ip_tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.ipTags',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'VirtualMachineScaleSetIpTagElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VirtualMachineScaleSetIpTag'
                      }
                  }
                }
              },
              public_ipprefix: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.publicIPPrefix',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              public_ipaddress_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.publicIPAddressVersion',
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
