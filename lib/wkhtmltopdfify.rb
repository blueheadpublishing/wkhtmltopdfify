require 'wkhtmltopdfify/version'
require 'rbconfig'

module Wkhtmltopdfify
  
  class Execute
  
    HOST_OS = RbConfig::CONFIG['host_os']
  
    def self.determine_os_executable(os_string)
      case os_string
        when /darwin/ then @executable = 'bin/wkhtmltopdf.app/Contents/MacOS/wkhtmltopdf'
        when /linux/ then @executable = 'bin/linux/wkhtmltopdf_linux_386'
        when /mswin|mingw/ then @executable = 'bin/windows/wkhtmltopdf.exe'
        else raise InvalidOSError
      end
    end
  
    def self.execute_os_executable
      @executable = File.join(File.dirname(__FILE__), @executable)
      system(@executable + " " + $*.join(" "))
    end
    
    determine_os_executable(HOST_OS)
    
  end
end