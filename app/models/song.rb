class Song < ActiveRecord::Base
  validates :title, presence: true
  validates :title, uniqueness: true
  validates :release_year, inclusion: {in: 1..Date.today.year}, if: :released?




end
