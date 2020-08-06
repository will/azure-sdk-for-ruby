# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_07_15_preview
  module Models
    #
    # Defines values for DatabaseMigrationState
    #
    module DatabaseMigrationState
      UNDEFINED = "UNDEFINED"
      INITIAL = "INITIAL"
      FULLBACKUPUPLOADSTART = "FULL_BACKUP_UPLOAD_START"
      LOGSHIPPINGSTART = "LOG_SHIPPING_START"
      UPLOADLOGFILESSTART = "UPLOAD_LOG_FILES_START"
      CUTOVERSTART = "CUTOVER_START"
      POSTCUTOVERCOMPLETE = "POST_CUTOVER_COMPLETE"
      COMPLETED = "COMPLETED"
      CANCELLED = "CANCELLED"
      FAILED = "FAILED"
    end
  end
end
