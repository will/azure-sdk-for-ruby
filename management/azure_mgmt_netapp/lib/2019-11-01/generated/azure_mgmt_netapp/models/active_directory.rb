# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::NetApp::Mgmt::V2019_11_01
  module Models
    #
    # Active Directory
    #
    class ActiveDirectory

      include MsRestAzure

      # @return [String] Id of the Active Directory
      attr_accessor :active_directory_id

      # @return [String] Username of Active Directory domain administrator
      attr_accessor :username

      # @return [String] Plain text password of Active Directory domain
      # administrator
      attr_accessor :password

      # @return [String] Name of the Active Directory domain
      attr_accessor :domain

      # @return [String] Comma separated list of DNS server IP addresses (IPv4
      # only) for the Active Directory domain
      attr_accessor :dns

      # @return [String] Status of the Active Directory
      attr_accessor :status

      # @return [String] NetBIOS name of the SMB server. This name will be
      # registered as a computer account in the AD and used to mount volumes
      attr_accessor :smb_server_name

      # @return [String] The Organizational Unit (OU) within the Windows Active
      # Directory
      attr_accessor :organizational_unit

      # @return [String] The Active Directory site the service will limit
      # Domain Controller discovery to
      attr_accessor :site


      #
      # Mapper for ActiveDirectory class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'activeDirectory',
          type: {
            name: 'Composite',
            class_name: 'ActiveDirectory',
            model_properties: {
              active_directory_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'activeDirectoryId',
                type: {
                  name: 'String'
                }
              },
              username: {
                client_side_validation: true,
                required: false,
                serialized_name: 'username',
                type: {
                  name: 'String'
                }
              },
              password: {
                client_side_validation: true,
                required: false,
                serialized_name: 'password',
                type: {
                  name: 'String'
                }
              },
              domain: {
                client_side_validation: true,
                required: false,
                serialized_name: 'domain',
                type: {
                  name: 'String'
                }
              },
              dns: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dns',
                type: {
                  name: 'String'
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              smb_server_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'smbServerName',
                type: {
                  name: 'String'
                }
              },
              organizational_unit: {
                client_side_validation: true,
                required: false,
                serialized_name: 'organizationalUnit',
                type: {
                  name: 'String'
                }
              },
              site: {
                client_side_validation: true,
                required: false,
                serialized_name: 'site',
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
