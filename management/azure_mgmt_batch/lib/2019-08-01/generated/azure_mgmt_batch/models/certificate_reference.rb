# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Batch::Mgmt::V2019_08_01
  module Models
    #
    # A reference to a certificate to be installed on compute nodes in a pool.
    # This must exist inside the same account as the pool.
    #
    #
    class CertificateReference

      include MsRestAzure

      # @return [String] The fully qualified ID of the certificate to install
      # on the pool. This must be inside the same batch account as the pool.
      attr_accessor :id

      # @return [CertificateStoreLocation] The location of the certificate
      # store on the compute node into which to install the certificate. The
      # default value is currentUser. This property is applicable only for
      # pools configured with Windows nodes (that is, created with
      # cloudServiceConfiguration, or with virtualMachineConfiguration using a
      # Windows image reference). For Linux compute nodes, the certificates are
      # stored in a directory inside the task working directory and an
      # environment variable AZ_BATCH_CERTIFICATES_DIR is supplied to the task
      # to query for this location. For certificates with visibility of
      # 'remoteUser', a 'certs' directory is created in the user's home
      # directory (e.g., /home/{user-name}/certs) and certificates are placed
      # in that directory. Possible values include: 'CurrentUser',
      # 'LocalMachine'
      attr_accessor :store_location

      # @return [String] The name of the certificate store on the compute node
      # into which to install the certificate. This property is applicable only
      # for pools configured with Windows nodes (that is, created with
      # cloudServiceConfiguration, or with virtualMachineConfiguration using a
      # Windows image reference). Common store names include: My, Root, CA,
      # Trust, Disallowed, TrustedPeople, TrustedPublisher, AuthRoot,
      # AddressBook, but any custom store name can also be used. The default
      # value is My.
      attr_accessor :store_name

      # @return [Array<CertificateVisibility>] Which user accounts on the
      # compute node should have access to the private data of the certificate.
      attr_accessor :visibility


      #
      # Mapper for CertificateReference class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CertificateReference',
          type: {
            name: 'Composite',
            class_name: 'CertificateReference',
            model_properties: {
              id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              store_location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'storeLocation',
                type: {
                  name: 'Enum',
                  module: 'CertificateStoreLocation'
                }
              },
              store_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'storeName',
                type: {
                  name: 'String'
                }
              },
              visibility: {
                client_side_validation: true,
                required: false,
                serialized_name: 'visibility',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'CertificateVisibilityElementType',
                      type: {
                        name: 'Enum',
                        module: 'CertificateVisibility'
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
