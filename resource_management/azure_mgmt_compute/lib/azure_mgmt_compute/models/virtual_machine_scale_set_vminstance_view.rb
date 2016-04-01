# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.16.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # The instance view of a virtual machine scale set VM.
    #
    class VirtualMachineScaleSetVMInstanceView

      include MsRestAzure

      # @return [Integer] Gets or sets the Update Domain count.
      attr_accessor :platform_update_domain

      # @return [Integer] Gets or sets the Fault Domain count.
      attr_accessor :platform_fault_domain

      # @return [String] Gets or sets the Remote desktop certificate
      # thumbprint.
      attr_accessor :rdp_thumb_print

      # @return [VirtualMachineAgentInstanceView] Gets or sets the VM Agent
      # running on the virtual machine.
      attr_accessor :vm_agent

      # @return [Array<DiskInstanceView>] Gets or sets the disks information.
      attr_accessor :disks

      # @return [Array<VirtualMachineExtensionInstanceView>] Gets or sets the
      # extensions information.
      attr_accessor :extensions

      # @return [BootDiagnosticsInstanceView] Gets or sets the boot
      # diagnostics.
      attr_accessor :boot_diagnostics

      # @return [Array<InstanceViewStatus>] Gets or sets the resource status
      # information.
      attr_accessor :statuses

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        @vm_agent.validate unless @vm_agent.nil?
        @disks.each{ |e| e.validate if e.respond_to?(:validate) } unless @disks.nil?
        @extensions.each{ |e| e.validate if e.respond_to?(:validate) } unless @extensions.nil?
        @boot_diagnostics.validate unless @boot_diagnostics.nil?
        @statuses.each{ |e| e.validate if e.respond_to?(:validate) } unless @statuses.nil?
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.platform_update_domain
        output_object['platformUpdateDomain'] = serialized_property unless serialized_property.nil?

        serialized_property = object.platform_fault_domain
        output_object['platformFaultDomain'] = serialized_property unless serialized_property.nil?

        serialized_property = object.rdp_thumb_print
        output_object['rdpThumbPrint'] = serialized_property unless serialized_property.nil?

        serialized_property = object.vm_agent
        unless serialized_property.nil?
          serialized_property = VirtualMachineAgentInstanceView.serialize_object(serialized_property)
        end
        output_object['vmAgent'] = serialized_property unless serialized_property.nil?

        serialized_property = object.disks
        unless serialized_property.nil?
          serializedArray = []
          serialized_property.each do |element|
            unless element.nil?
              element = DiskInstanceView.serialize_object(element)
            end
            serializedArray.push(element)
          end
          serialized_property = serializedArray
        end
        output_object['disks'] = serialized_property unless serialized_property.nil?

        serialized_property = object.extensions
        unless serialized_property.nil?
          serializedArray = []
          serialized_property.each do |element1|
            unless element1.nil?
              element1 = VirtualMachineExtensionInstanceView.serialize_object(element1)
            end
            serializedArray.push(element1)
          end
          serialized_property = serializedArray
        end
        output_object['extensions'] = serialized_property unless serialized_property.nil?

        serialized_property = object.boot_diagnostics
        unless serialized_property.nil?
          serialized_property = BootDiagnosticsInstanceView.serialize_object(serialized_property)
        end
        output_object['bootDiagnostics'] = serialized_property unless serialized_property.nil?

        serialized_property = object.statuses
        unless serialized_property.nil?
          serializedArray = []
          serialized_property.each do |element2|
            unless element2.nil?
              element2 = InstanceViewStatus.serialize_object(element2)
            end
            serializedArray.push(element2)
          end
          serialized_property = serializedArray
        end
        output_object['statuses'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [VirtualMachineScaleSetVMInstanceView] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = VirtualMachineScaleSetVMInstanceView.new

        deserialized_property = object['platformUpdateDomain']
        deserialized_property = Integer(deserialized_property) unless deserialized_property.to_s.empty?
        output_object.platform_update_domain = deserialized_property

        deserialized_property = object['platformFaultDomain']
        deserialized_property = Integer(deserialized_property) unless deserialized_property.to_s.empty?
        output_object.platform_fault_domain = deserialized_property

        deserialized_property = object['rdpThumbPrint']
        output_object.rdp_thumb_print = deserialized_property

        deserialized_property = object['vmAgent']
        unless deserialized_property.nil?
          deserialized_property = VirtualMachineAgentInstanceView.deserialize_object(deserialized_property)
        end
        output_object.vm_agent = deserialized_property

        deserialized_property = object['disks']
        unless deserialized_property.nil?
          deserialized_array = []
          deserialized_property.each do |element3|
            unless element3.nil?
              element3 = DiskInstanceView.deserialize_object(element3)
            end
            deserialized_array.push(element3)
          end
          deserialized_property = deserialized_array
        end
        output_object.disks = deserialized_property

        deserialized_property = object['extensions']
        unless deserialized_property.nil?
          deserialized_array = []
          deserialized_property.each do |element4|
            unless element4.nil?
              element4 = VirtualMachineExtensionInstanceView.deserialize_object(element4)
            end
            deserialized_array.push(element4)
          end
          deserialized_property = deserialized_array
        end
        output_object.extensions = deserialized_property

        deserialized_property = object['bootDiagnostics']
        unless deserialized_property.nil?
          deserialized_property = BootDiagnosticsInstanceView.deserialize_object(deserialized_property)
        end
        output_object.boot_diagnostics = deserialized_property

        deserialized_property = object['statuses']
        unless deserialized_property.nil?
          deserialized_array = []
          deserialized_property.each do |element5|
            unless element5.nil?
              element5 = InstanceViewStatus.deserialize_object(element5)
            end
            deserialized_array.push(element5)
          end
          deserialized_property = deserialized_array
        end
        output_object.statuses = deserialized_property

        output_object
      end
    end
  end
end