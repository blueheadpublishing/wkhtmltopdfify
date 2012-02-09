require "wkhtmltopdfify/version"

module Wkhtmltopdfify
  if RUBY_PLATFORM =~ /linux/
    executable = 'bin/linux/wkhtmltopdf_linux_386'
  elsif RUBY_PLATFORM =~ /darwin/
    executable = 'bin/wkhtmltopdf.app/Contents/MacOS/wkhtmltopdf'
  elsif RUBY_PLATFORM =~ /mswin32/ or  /minigw32/
    executable = 'bin/windows/wkhtmltopdf.exe'
  else
    raise "Something doesn't seem to be working. If you are running on Windows, you may need to install wkhtmltopdf manually. exe's available here: http://code.google.com/p/wkhtmltopdf/downloads/list Otherwise, you may need to install wkhtmltopdf manually. Try https://github.com/blueheadpublishing/bookshop/wiki/Installing-wkhtmltopdf"
  end

  executable = File.join(File.dirname(__FILE__), executable)
  system(executable + " " + $*.join(" "))
end