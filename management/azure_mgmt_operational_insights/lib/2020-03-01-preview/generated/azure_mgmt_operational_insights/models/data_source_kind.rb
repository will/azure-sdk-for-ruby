# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::OperationalInsights::Mgmt::V2020_03_01_preview
  module Models
    #
    # Defines values for DataSourceKind
    #
    module DataSourceKind
      WindowsEvent = "WindowsEvent"
      WindowsPerformanceCounter = "WindowsPerformanceCounter"
      IISLogs = "IISLogs"
      LinuxSyslog = "LinuxSyslog"
      LinuxSyslogCollection = "LinuxSyslogCollection"
      LinuxPerformanceObject = "LinuxPerformanceObject"
      LinuxPerformanceCollection = "LinuxPerformanceCollection"
      CustomLog = "CustomLog"
      CustomLogCollection = "CustomLogCollection"
      AzureAuditLog = "AzureAuditLog"
      AzureActivityLog = "AzureActivityLog"
      GenericDataSource = "GenericDataSource"
      ChangeTrackingCustomPath = "ChangeTrackingCustomPath"
      ChangeTrackingPath = "ChangeTrackingPath"
      ChangeTrackingServices = "ChangeTrackingServices"
      ChangeTrackingDataTypeConfiguration = "ChangeTrackingDataTypeConfiguration"
      ChangeTrackingDefaultRegistry = "ChangeTrackingDefaultRegistry"
      ChangeTrackingRegistry = "ChangeTrackingRegistry"
      ChangeTrackingLinuxPath = "ChangeTrackingLinuxPath"
      LinuxChangeTrackingPath = "LinuxChangeTrackingPath"
      ChangeTrackingContentLocation = "ChangeTrackingContentLocation"
      WindowsTelemetry = "WindowsTelemetry"
      Office365 = "Office365"
      SecurityWindowsBaselineConfiguration = "SecurityWindowsBaselineConfiguration"
      SecurityCenterSecurityWindowsBaselineConfiguration = "SecurityCenterSecurityWindowsBaselineConfiguration"
      SecurityEventCollectionConfiguration = "SecurityEventCollectionConfiguration"
      SecurityInsightsSecurityEventCollectionConfiguration = "SecurityInsightsSecurityEventCollectionConfiguration"
      ImportComputerGroup = "ImportComputerGroup"
      NetworkMonitoring = "NetworkMonitoring"
      Itsm = "Itsm"
      DnsAnalytics = "DnsAnalytics"
      ApplicationInsights = "ApplicationInsights"
      SqlDataClassification = "SqlDataClassification"
    end
  end
end
