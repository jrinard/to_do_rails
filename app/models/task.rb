class Task < ACtiveRecord::Base
  belongs_to :list

  validates :description, :presence => true
end
