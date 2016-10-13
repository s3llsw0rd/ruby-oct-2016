class TimesController < ApplicationController
  def main
    @time = Time.new
    puts '\n', @time, ' **************\n'
  end
end
