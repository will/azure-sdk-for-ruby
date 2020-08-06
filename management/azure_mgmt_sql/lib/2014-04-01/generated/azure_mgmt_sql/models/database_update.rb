# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2014_04_01
  module Models
    #
    # Represents a database update.
    #
    class DatabaseUpdate < Resource

      include MsRestAzure

      # @return [Hash{String => String}] Resource tags.
      attr_accessor :tags

      # @return [String] The collation of the database. If createMode is not
      # Default, this value is ignored.
      attr_accessor :collation

      # @return [DateTime] The creation date of the database (ISO8601 format).
      attr_accessor :creation_date

      # @return [Integer] The containment state of the database.
      attr_accessor :containment_state

      # @return The current service level objective ID of the database. This is
      # the ID of the service level objective that is currently active.
      attr_accessor :current_service_objective_id

      # @return The ID of the database.
      attr_accessor :database_id

      # @return [DateTime] This records the earliest start date and time that
      # restore is available for this database (ISO8601 format).
      attr_accessor :earliest_restore_date

      # @return [CreateMode] Specifies the mode of database creation.
      #
      # Default: regular database creation.
      #
      # Copy: creates a database as a copy of an existing database.
      # sourceDatabaseId must be specified as the resource ID of the source
      # database.
      #
      # OnlineSecondary/NonReadableSecondary: creates a database as a (readable
      # or nonreadable) secondary replica of an existing database.
      # sourceDatabaseId must be specified as the resource ID of the existing
      # primary database.
      #
      # PointInTimeRestore: Creates a database by restoring a point in time
      # backup of an existing database. sourceDatabaseId must be specified as
      # the resource ID of the existing database, and restorePointInTime must
      # be specified.
      #
      # Recovery: Creates a database by restoring a geo-replicated backup.
      # sourceDatabaseId must be specified as the recoverable database resource
      # ID to restore.
      #
      # Restore: Creates a database by restoring a backup of a deleted
      # database. sourceDatabaseId must be specified. If sourceDatabaseId is
      # the database's original resource ID, then sourceDatabaseDeletionDate
      # must be specified. Otherwise sourceDatabaseId must be the restorable
      # dropped database resource ID and sourceDatabaseDeletionDate is ignored.
      # restorePointInTime may also be specified to restore from an earlier
      # point in time.
      #
      # RestoreLongTermRetentionBackup: Creates a database by restoring from a
      # long term retention vault. recoveryServicesRecoveryPointResourceId must
      # be specified as the recovery point resource ID.
      #
      # Copy, NonReadableSecondary, OnlineSecondary and
      # RestoreLongTermRetentionBackup are not supported for DataWarehouse
      # edition. Possible values include: 'Copy', 'Default',
      # 'NonReadableSecondary', 'OnlineSecondary', 'PointInTimeRestore',
      # 'Recovery', 'Restore', 'RestoreLongTermRetentionBackup'
      attr_accessor :create_mode

      # @return [String] Conditional. If createMode is Copy,
      # NonReadableSecondary, OnlineSecondary, PointInTimeRestore, Recovery, or
      # Restore, then this value is required. Specifies the resource ID of the
      # source database. If createMode is NonReadableSecondary or
      # OnlineSecondary, the name of the source database must be the same as
      # the new database being created.
      attr_accessor :source_database_id

      # @return [DateTime] Conditional. If createMode is Restore and
      # sourceDatabaseId is the deleted database's original resource id when it
      # existed (as opposed to its current restorable dropped database id),
      # then this value is required. Specifies the time that the database was
      # deleted.
      attr_accessor :source_database_deletion_date

      # @return [DateTime] Conditional. If createMode is PointInTimeRestore,
      # this value is required. If createMode is Restore, this value is
      # optional. Specifies the point in time (ISO8601 format) of the source
      # database that will be restored to create the new database. Must be
      # greater than or equal to the source database's earliestRestoreDate
      # value.
      attr_accessor :restore_point_in_time

      # @return [String] Conditional. If createMode is
      # RestoreLongTermRetentionBackup, then this value is required. Specifies
      # the resource ID of the recovery point to restore from.
      attr_accessor :recovery_services_recovery_point_resource_id

      # @return [DatabaseEdition] The edition of the database. The
      # DatabaseEditions enumeration contains all the valid editions. If
      # createMode is NonReadableSecondary or OnlineSecondary, this value is
      # ignored.
      #
      # The list of SKUs may vary by region and support offer. To determine the
      # SKUs (including the SKU name, tier/edition, family, and capacity) that
      # are available to your subscription in an Azure region, use the
      # `Capabilities_ListByLocation` REST API or one of the following
      # commands:
      #
      # ```azurecli
      # az sql db list-editions -l <location> -o table
      # ````
      #
      # ```powershell
      # Get-AzSqlServerServiceObjective -Location <location>
      # ````
      # . Possible values include: 'Web', 'Business', 'Basic', 'Standard',
      # 'Premium', 'PremiumRS', 'Free', 'Stretch', 'DataWarehouse', 'System',
      # 'System2', 'GeneralPurpose', 'BusinessCritical', 'Hyperscale'
      attr_accessor :edition

      # @return [String] The max size of the database expressed in bytes. If
      # createMode is not Default, this value is ignored. To see possible
      # values, query the capabilities API
      # (/subscriptions/{subscriptionId}/providers/Microsoft.Sql/locations/{locationID}/capabilities)
      # referred to by operationId: "Capabilities_ListByLocation."
      attr_accessor :max_size_bytes

      # @return The configured service level objective ID of the database. This
      # is the service level objective that is in the process of being applied
      # to the database. Once successfully updated, it will match the value of
      # currentServiceObjectiveId property. If requestedServiceObjectiveId and
      # requestedServiceObjectiveName are both updated, the value of
      # requestedServiceObjectiveId overrides the value of
      # requestedServiceObjectiveName.
      #
      # The list of SKUs may vary by region and support offer. To determine the
      # service objective ids that are available to your subscription in an
      # Azure region, use the `Capabilities_ListByLocation` REST API.
      attr_accessor :requested_service_objective_id

      # @return [ServiceObjectiveName] The name of the configured service level
      # objective of the database. This is the service level objective that is
      # in the process of being applied to the database. Once successfully
      # updated, it will match the value of serviceLevelObjective property.
      #
      # The list of SKUs may vary by region and support offer. To determine the
      # SKUs (including the SKU name, tier/edition, family, and capacity) that
      # are available to your subscription in an Azure region, use the
      # `Capabilities_ListByLocation` REST API or one of the following
      # commands:
      #
      # ```azurecli
      # az sql db list-editions -l <location> -o table
      # ````
      #
      # ```powershell
      # Get-AzSqlServerServiceObjective -Location <location>
      # ````
      # . Possible values include: 'System', 'System0', 'System1', 'System2',
      # 'System3', 'System4', 'System2L', 'System3L', 'System4L', 'Free',
      # 'Basic', 'S0', 'S1', 'S2', 'S3', 'S4', 'S6', 'S7', 'S9', 'S12', 'P1',
      # 'P2', 'P3', 'P4', 'P6', 'P11', 'P15', 'PRS1', 'PRS2', 'PRS4', 'PRS6',
      # 'DW100', 'DW200', 'DW300', 'DW400', 'DW500', 'DW600', 'DW1000',
      # 'DW1200', 'DW1000c', 'DW1500', 'DW1500c', 'DW2000', 'DW2000c',
      # 'DW3000', 'DW2500c', 'DW3000c', 'DW6000', 'DW5000c', 'DW6000c',
      # 'DW7500c', 'DW10000c', 'DW15000c', 'DW30000c', 'DS100', 'DS200',
      # 'DS300', 'DS400', 'DS500', 'DS600', 'DS1000', 'DS1200', 'DS1500',
      # 'DS2000', 'ElasticPool'
      attr_accessor :requested_service_objective_name

      # @return [ServiceObjectiveName] The current service level objective of
      # the database. Possible values include: 'System', 'System0', 'System1',
      # 'System2', 'System3', 'System4', 'System2L', 'System3L', 'System4L',
      # 'Free', 'Basic', 'S0', 'S1', 'S2', 'S3', 'S4', 'S6', 'S7', 'S9', 'S12',
      # 'P1', 'P2', 'P3', 'P4', 'P6', 'P11', 'P15', 'PRS1', 'PRS2', 'PRS4',
      # 'PRS6', 'DW100', 'DW200', 'DW300', 'DW400', 'DW500', 'DW600', 'DW1000',
      # 'DW1200', 'DW1000c', 'DW1500', 'DW1500c', 'DW2000', 'DW2000c',
      # 'DW3000', 'DW2500c', 'DW3000c', 'DW6000', 'DW5000c', 'DW6000c',
      # 'DW7500c', 'DW10000c', 'DW15000c', 'DW30000c', 'DS100', 'DS200',
      # 'DS300', 'DS400', 'DS500', 'DS600', 'DS1000', 'DS1200', 'DS1500',
      # 'DS2000', 'ElasticPool'
      attr_accessor :service_level_objective

      # @return [String] The status of the database.
      attr_accessor :status

      # @return [String] The name of the elastic pool the database is in. If
      # elasticPoolName and requestedServiceObjectiveName are both updated, the
      # value of requestedServiceObjectiveName is ignored. Not supported for
      # DataWarehouse edition.
      attr_accessor :elastic_pool_name

      # @return [String] The default secondary region for this database.
      attr_accessor :default_secondary_location

      # @return [Array<ServiceTierAdvisor>] The list of service tier advisors
      # for this database. Expanded property
      attr_accessor :service_tier_advisors

      # @return [Array<TransparentDataEncryption>] The transparent data
      # encryption info for this database.
      attr_accessor :transparent_data_encryption

      # @return [Array<RecommendedIndex>] The recommended indices for this
      # database.
      attr_accessor :recommended_index

      # @return [String] The resource identifier of the failover group
      # containing this database.
      attr_accessor :failover_group_id

      # @return [ReadScale] Conditional. If the database is a geo-secondary,
      # readScale indicates whether read-only connections are allowed to this
      # database or not. Not supported for DataWarehouse edition. Possible
      # values include: 'Enabled', 'Disabled'
      attr_accessor :read_scale

      # @return [SampleName] Indicates the name of the sample schema to apply
      # when creating this database. If createMode is not Default, this value
      # is ignored. Not supported for DataWarehouse edition. Possible values
      # include: 'AdventureWorksLT'
      attr_accessor :sample_name

      # @return [Boolean] Whether or not this database is zone redundant, which
      # means the replicas of this database will be spread across multiple
      # availability zones.
      attr_accessor :zone_redundant


      #
      # Mapper for DatabaseUpdate class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DatabaseUpdate',
          type: {
            name: 'Composite',
            class_name: 'DatabaseUpdate',
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
              collation: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.collation',
                type: {
                  name: 'String'
                }
              },
              creation_date: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.creationDate',
                type: {
                  name: 'DateTime'
                }
              },
              containment_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.containmentState',
                type: {
                  name: 'Number'
                }
              },
              current_service_objective_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.currentServiceObjectiveId',
                type: {
                  name: 'String'
                }
              },
              database_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.databaseId',
                type: {
                  name: 'String'
                }
              },
              earliest_restore_date: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.earliestRestoreDate',
                type: {
                  name: 'DateTime'
                }
              },
              create_mode: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.createMode',
                type: {
                  name: 'String'
                }
              },
              source_database_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.sourceDatabaseId',
                type: {
                  name: 'String'
                }
              },
              source_database_deletion_date: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.sourceDatabaseDeletionDate',
                type: {
                  name: 'DateTime'
                }
              },
              restore_point_in_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.restorePointInTime',
                type: {
                  name: 'DateTime'
                }
              },
              recovery_services_recovery_point_resource_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.recoveryServicesRecoveryPointResourceId',
                type: {
                  name: 'String'
                }
              },
              edition: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.edition',
                type: {
                  name: 'String'
                }
              },
              max_size_bytes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.maxSizeBytes',
                type: {
                  name: 'String'
                }
              },
              requested_service_objective_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.requestedServiceObjectiveId',
                type: {
                  name: 'String'
                }
              },
              requested_service_objective_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.requestedServiceObjectiveName',
                type: {
                  name: 'String'
                }
              },
              service_level_objective: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.serviceLevelObjective',
                type: {
                  name: 'String'
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.status',
                type: {
                  name: 'String'
                }
              },
              elastic_pool_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.elasticPoolName',
                type: {
                  name: 'String'
                }
              },
              default_secondary_location: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.defaultSecondaryLocation',
                type: {
                  name: 'String'
                }
              },
              service_tier_advisors: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.serviceTierAdvisors',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ServiceTierAdvisorElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ServiceTierAdvisor'
                      }
                  }
                }
              },
              transparent_data_encryption: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.transparentDataEncryption',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'TransparentDataEncryptionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'TransparentDataEncryption'
                      }
                  }
                }
              },
              recommended_index: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.recommendedIndex',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'RecommendedIndexElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RecommendedIndex'
                      }
                  }
                }
              },
              failover_group_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.failoverGroupId',
                type: {
                  name: 'String'
                }
              },
              read_scale: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.readScale',
                type: {
                  name: 'Enum',
                  module: 'ReadScale'
                }
              },
              sample_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.sampleName',
                type: {
                  name: 'String'
                }
              },
              zone_redundant: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.zoneRedundant',
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
