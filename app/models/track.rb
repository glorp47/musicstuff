class Track < ActiveRecord::Base


  validates :title, :band_id,  presence: true
  validates :track_type, presence: true, inclusion: {in: %w(bonus regular)}
  validates :album_type, presence: true, inclusion: {in: %w(live studio)}
  belongs_to :album

end
