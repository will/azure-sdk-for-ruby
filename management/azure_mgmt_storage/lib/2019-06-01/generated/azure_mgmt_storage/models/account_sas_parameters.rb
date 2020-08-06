# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Storage::Mgmt::V2019_06_01
  module Models
    #
    # The parameters to list SAS credentials of a storage account.
    #
    class AccountSasParameters

      include MsRestAzure

      # @return [Services] The signed services accessible with the account SAS.
      # Possible values include: Blob (b), Queue (q), Table (t), File (f).
      # Possible values include: 'b', 'q', 't', 'f'
      attr_accessor :services

      # @return [SignedResourceTypes] The signed resource types that are
      # accessible with the account SAS. Service (s): Access to service-level
      # APIs; Container (c): Access to container-level APIs; Object (o): Access
      # to object-level APIs for blobs, queue messages, table entities, and
      # files. Possible values include: 's', 'c', 'o'
      attr_accessor :resource_types

      # @return [Permissions] The signed permissions for the account SAS.
      # Possible values include: Read (r), Write (w), Delete (d), List (l), Add
      # (a), Create (c), Update (u) and Process (p). Possible values include:
      # 'r', 'd', 'w', 'l', 'a', 'c', 'u', 'p'
      attr_accessor :permissions

      # @return [String] An IP address or a range of IP addresses from which to
      # accept requests.
      attr_accessor :ipaddress_or_range

      # @return [HttpProtocol] The protocol permitted for a request made with
      # the account SAS. Possible values include: 'https,http', 'https'
      attr_accessor :protocols

      # @return [DateTime] The time at which the SAS becomes valid.
      attr_accessor :shared_access_start_time

      # @return [DateTime] The time at which the shared access signature
      # becomes invalid.
      attr_accessor :shared_access_expiry_time

      # @return [String] The key to sign the account SAS token with.
      attr_accessor :key_to_sign


      #
      # Mapper for AccountSasParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AccountSasParameters',
          type: {
            name: 'Composite',
            class_name: 'AccountSasParameters',
            model_properties: {
              services: {
                client_side_validation: true,
                required: true,
                serialized_name: 'signedServices',
                type: {
                  name: 'String'
                }
              },
              resource_types: {
                client_side_validation: true,
                required: true,
                serialized_name: 'signedResourceTypes',
                type: {
                  name: 'String'
                }
              },
              permissions: {
                client_side_validation: true,
                required: true,
                serialized_name: 'signedPermission',
                type: {
                  name: 'String'
                }
              },
              ipaddress_or_range: {
                client_side_validation: true,
                required: false,
                serialized_name: 'signedIp',
                type: {
                  name: 'String'
                }
              },
              protocols: {
                client_side_validation: true,
                required: false,
                serialized_name: 'signedProtocol',
                type: {
                  name: 'Enum',
                  module: 'HttpProtocol'
                }
              },
              shared_access_start_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'signedStart',
                type: {
                  name: 'DateTime'
                }
              },
              shared_access_expiry_time: {
                client_side_validation: true,
                required: true,
                serialized_name: 'signedExpiry',
                type: {
                  name: 'DateTime'
                }
              },
              key_to_sign: {
                client_side_validation: true,
                required: false,
                serialized_name: 'keyToSign',
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
