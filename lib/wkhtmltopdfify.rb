require 'wkhtmltopdfify/version'
require 'rbconfig'

module Wkhtmltopdfify
  
  host_os = RbConfig::CONFIG['host_os']

  def self.determine_os_and_executable(os_string)
    case os_string
      when /darwin/ then @executable = 'bin/wkhtmltopdf.app/Contents/MacOS/wkhtmltopdf'
      when /linux/ then @executable = 'bin/linux/wkhtmltopdf_linux_386'
      when /mswin|mingw/ then @executable = 'bin/windows/wkhtmltopdf.exe'
      else raise InvalidOSError('This is not a supported Operating System. Please install wkhtmltopdf manually.')
    end
  
    @executable = File.join(File.dirname(__FILE__), @executable)
    system(@executable + " " + $*.join(" "))
  end
  determine_os_and_executable(host_os)
    
end