class CountryController < ApplicationController
  def index
    @countries = Country.all
  end
end
