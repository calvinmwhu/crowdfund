class Project < ActiveRecord::Base
  def expired?
    Date.today - pledging_ends_on > 0
  end
end
