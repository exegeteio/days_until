#!/usr/bin/env ruby

require 'sinatra'
require 'active_support/all'
require 'pry'

layout :layout

get '/' do
  if params['event'].present?
    @date = Date.parse(params['event'])
    @days = (@date - Date.today).to_i
  end
  erb :index
end
