class Occurrence < ActiveRecord::Base
  # Validations
  # validates :time,        presence: true
  validates :description, presence: true
  validates :location,    presence: true
  # validates :latitude,    presence: true
  # validates :longitude,   presence: true

  # Virtual attributes used in the form
  attr_accessor :hour
  attr_accessor :date

  # Callbacks
  before_save :set_latitute_and_longitude
  after_initialize :set_defaults
  before_save :set_time

  # Relations
  belongs_to :user

private
  # Callback functions
  def set_latitute_and_longitude
    geo = Geocoder.search(location).first
    self.latitude = geo.latitude
    self.longitude = geo.longitude
  end

  def set_time
    # self.time = DateTimeToString.translate(@date, @hour)
    hour    = @hour.split(':')[0].to_i
    minutes = @hour.split(':')[1].to_i

    year  = @date.split('/')[2].to_i
    month = @date.split('/')[1].to_i
    day   = @date.split('/')[0].to_i

    self.time = DateTime.new(year, month, day, hour, minutes, 0, '-3')
  end

  def get_lat_long(location)
    geo = Geocoder.search(location).first
    @occurrence.latitude  = geo.latitude
    @occurrence.longitude = geo.longitude
  end

  def set_defaults
    self.rating = 0
  end
  # End of Callback functions
end
