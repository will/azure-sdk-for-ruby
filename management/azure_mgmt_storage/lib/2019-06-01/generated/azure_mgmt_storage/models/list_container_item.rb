# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Storage::Mgmt::V2019_06_01
  module Models
    #
    # The blob container properties be listed out.
    #
    class ListContainerItem < AzureEntityResource

      include MsRestAzure

      # @return [String] The version of the deleted blob container.
      attr_accessor :version

      # @return [Boolean] Indicates whether the blob container was deleted.
      attr_accessor :deleted

      # @return [DateTime] Blob container deletion time.
      attr_accessor :deleted_time

      # @return [Integer] Remaining retention days for soft deleted blob
      # container.
      attr_accessor :remaining_retention_days

      # @return [String] Default the container to use specified encryption
      # scope for all writes.
      attr_accessor :default_encryption_scope

      # @return [Boolean] Block override of encryption scope from the container
      # default.
      attr_accessor :deny_encryption_scope_override

      # @return [PublicAccess] Specifies whether data in the container may be
      # accessed publicly and the level of access. Possible values include:
      # 'Container', 'Blob', 'None'
      attr_accessor :public_access

      # @return [DateTime] Returns the date and time the container was last
      # modified.
      attr_accessor :last_modified_time

      # @return [LeaseStatus] The lease status of the container. Possible
      # values include: 'Locked', 'Unlocked'
      attr_accessor :lease_status

      # @return [LeaseState] Lease state of the container. Possible values
      # include: 'Available', 'Leased', 'Expired', 'Breaking', 'Broken'
      attr_accessor :lease_state

      # @return [LeaseDuration] Specifies whether the lease on a container is
      # of infinite or fixed duration, only when the container is leased.
      # Possible values include: 'Infinite', 'Fixed'
      attr_accessor :lease_duration

      # @return [Hash{String => String}] A name-value pair to associate with
      # the container as metadata.
      attr_accessor :metadata

      # @return [ImmutabilityPolicyProperties] The ImmutabilityPolicy property
      # of the container.
      attr_accessor :immutability_policy

      # @return [LegalHoldProperties] The LegalHold property of the container.
      attr_accessor :legal_hold

      # @return [Boolean] The hasLegalHold public property is set to true by
      # SRP if there are at least one existing tag. The hasLegalHold public
      # property is set to false by SRP if all existing legal hold tags are
      # cleared out. There can be a maximum of 1000 blob containers with
      # hasLegalHold=true for a given account.
      attr_accessor :has_legal_hold

      # @return [Boolean] The hasImmutabilityPolicy public property is set to
      # true by SRP if ImmutabilityPolicy has been created for this container.
      # The hasImmutabilityPolicy public property is set to false by SRP if
      # ImmutabilityPolicy has not been created for this container.
      attr_accessor :has_immutability_policy


      #
      # Mapper for ListContainerItem class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ListContainerItem',
          type: {
            name: 'Composite',
            class_name: 'ListContainerItem',
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
              etag: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'etag',
                type: {
                  name: 'String'
                }
              },
              version: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.version',
                type: {
                  name: 'String'
                }
              },
              deleted: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.deleted',
                type: {
                  name: 'Boolean'
                }
              },
              deleted_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.deletedTime',
                type: {
                  name: 'DateTime'
                }
              },
              remaining_retention_days: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.remainingRetentionDays',
                type: {
                  name: 'Number'
                }
              },
              default_encryption_scope: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.defaultEncryptionScope',
                type: {
                  name: 'String'
                }
              },
              deny_encryption_scope_override: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.denyEncryptionScopeOverride',
                type: {
                  name: 'Boolean'
                }
              },
              public_access: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.publicAccess',
                type: {
                  name: 'Enum',
                  module: 'PublicAccess'
                }
              },
              last_modified_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.lastModifiedTime',
                type: {
                  name: 'DateTime'
                }
              },
              lease_status: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.leaseStatus',
                type: {
                  name: 'String'
                }
              },
              lease_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.leaseState',
                type: {
                  name: 'String'
                }
              },
              lease_duration: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.leaseDuration',
                type: {
                  name: 'String'
                }
              },
              metadata: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.metadata',
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
              immutability_policy: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.immutabilityPolicy',
                type: {
                  name: 'Composite',
                  class_name: 'ImmutabilityPolicyProperties'
                }
              },
              legal_hold: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.legalHold',
                type: {
                  name: 'Composite',
                  class_name: 'LegalHoldProperties'
                }
              },
              has_legal_hold: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.hasLegalHold',
                type: {
                  name: 'Boolean'
                }
              },
              has_immutability_policy: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.hasImmutabilityPolicy',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
