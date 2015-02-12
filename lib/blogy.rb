require "blogy/engine"

module Blogy
  
  # Define parent controller
  mattr_accessor :parent_controller
  @@parent_controller = "ApplicationController"
end
