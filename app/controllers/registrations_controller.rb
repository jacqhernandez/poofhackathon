class RegistrationsController < ApplicationController
  autocomplete :area, :name, :limit => 50
end 