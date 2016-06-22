class PeriodPost < ActiveRecord::Base
  belongs_to :period
  belongs_to :post
end
