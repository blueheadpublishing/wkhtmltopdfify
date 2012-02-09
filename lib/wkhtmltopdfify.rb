require 'wkhtmltopdfify/version'
require 'rbconfig'

module Wkhtmltopdfify
  
  def assign_os_string
    host_os = RbConfig::CONFIG['host_os']
    determine_os(host_os)
  end
  
  def determine_os(os_string)
    case os_string
      when /darwin/ then @executable = 'bin/wkhtmltopdf.app/Contents/MacOS/wkhtmltopdf'
      when /linux/ then @executable = 'bin/linux/wkhtmltopdf_linux_386'
      when /mswin|mingw/ then @executable = 'bin/windows/wkhtmltopdf.exe'
      else raise InvalidOSError
    end
  end
  
  def execute_platform_executable
    @executable = File.join(File.dirname(__FILE__), @executable)
    system(@executable + " " + $*.join(" "))
  end
end