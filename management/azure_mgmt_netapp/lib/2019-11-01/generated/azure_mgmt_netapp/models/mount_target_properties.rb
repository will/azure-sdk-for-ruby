# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::NetApp::Mgmt::V2019_11_01
  module Models
    #
    # Mount target properties
    #
    class MountTargetProperties

      include MsRestAzure

      # @return [String] mountTargetId. UUID v4 used to identify the
      # MountTarget
      attr_accessor :mount_target_id

      # @return [String] fileSystemId. UUID v4 used to identify the MountTarget
      attr_accessor :file_system_id

      # @return [String] ipAddress. The mount target's IPv4 address
      attr_accessor :ip_address

      # @return [String] subnet. The subnet
      attr_accessor :subnet

      # @return [String] startIp. The start of IPv4 address range to use when
      # creating a new mount target
      attr_accessor :start_ip

      # @return [String] endIp. The end of IPv4 address range to use when
      # creating a new mount target
      attr_accessor :end_ip

      # @return [String] gateway. The gateway of the IPv4 address range to use
      # when creating a new mount target
      attr_accessor :gateway

      # @return [String] netmask. The netmask of the IPv4 address range to use
      # when creating a new mount target
      attr_accessor :netmask

      # @return [String] smbServerFQDN. The SMB server's Fully Qualified Domain
      # Name, FQDN
      attr_accessor :smb_server_fqdn


      #
      # Mapper for MountTargetProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'mountTargetProperties',
          type: {
            name: 'Composite',
            class_name: 'MountTargetProperties',
            model_properties: {
              mount_target_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'mountTargetId',
                constraints: {
                  MaxLength: 36,
                  MinLength: 36,
                  Pattern: '^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$'
                },
                type: {
                  name: 'String'
                }
              },
              file_system_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'fileSystemId',
                constraints: {
                  MaxLength: 36,
                  MinLength: 36,
                  Pattern: '^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$'
                },
                type: {
                  name: 'String'
                }
              },
              ip_address: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'ipAddress',
                type: {
                  name: 'String'
                }
              },
              subnet: {
                client_side_validation: true,
                required: false,
                serialized_name: 'subnet',
                type: {
                  name: 'String'
                }
              },
              start_ip: {
                client_side_validation: true,
                required: false,
                serialized_name: 'startIp',
                type: {
                  name: 'String'
                }
              },
              end_ip: {
                client_side_validation: true,
                required: false,
                serialized_name: 'endIp',
                type: {
                  name: 'String'
                }
              },
              gateway: {
                client_side_validation: true,
                required: false,
                serialized_name: 'gateway',
                type: {
                  name: 'String'
                }
              },
              netmask: {
                client_side_validation: true,
                required: false,
                serialized_name: 'netmask',
                type: {
                  name: 'String'
                }
              },
              smb_server_fqdn: {
                client_side_validation: true,
                required: false,
                serialized_name: 'smbServerFqdn',
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
