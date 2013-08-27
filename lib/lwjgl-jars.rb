require "java"
require "lwjgl.jar"
require 'rbconfig'

module LWJGLJars
  def self.os
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      "windows"
    when /darwin|mac os/
      "macosx"
    when /linux/
      "linux"
    when /solaris/
      "solaris"
    when /bsd/
      "freebsd"
    else
      raise "unknown os: #{host_os.inspect}"
    end
  end

  def self.setup_up_library_path
    native_path = File.join(File.dirname(__FILE__), "native", os)

    java.lang.System.setProperty("java.library.path", native_path)
    sys_paths_field = java.lang.ClassLoader.java_class.declared_field("sys_paths")
    sys_paths_field.accessible = true
    sys_paths_field.set_value(nil, nil)
  end
end

LWJGLJars.setup_up_library_path
