require 'pry'
require_relative "../lib/concerns/memorable"
require_relative "../lib/concerns/findable"
require_relative  "../lib/concerns/paramble"

class Song
  attr_accessor :name
  attr_reader :artist
  extend Memorable
  extend Findable::ClassMethods
  include Paramble::InstanceMethods

  @@songs = []

  def initialize
    @@songs << self
  end


  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
end
