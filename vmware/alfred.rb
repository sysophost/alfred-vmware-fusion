require './vmware'

module Vmware
  class Alfred

    include Commands

    attr_reader :vmrun
    attr_reader :vmpath

    def initialize
      @vmrun = '/Applications/VMware Fusion.app/Contents/Library/vmrun'
    end

    def self.start(vm)
      new.start vm
    end

    def self.startHeadless(vm)
      new.startHeadless vm
    end

    def self.reset(vm)
      new.reset vm
    end

    def self.resetHard(vm)
      new.resetHard vm
    end

    def self.stop(vm)
      new.stop vm
    end

    def self.stopHard(vm)
      new.stopHard vm
    end

    def self.suspend(vm)
      new.suspend vm
    end

    def self.list_running
      new.list_running
    end

    def self.list_idle(search_paths)
      new.list_idle search_paths
    end

  end
end
