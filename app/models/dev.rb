class Dev < ActiveRecord::Base
    has_many :freebies
  has_many :companies, through: :freebies
 def received_one(item_name)
  freebies.exists?(item_name: item_name)
 end
 def give_away(dev, freebie)
    if freebie.dev == self
      freebie.update(dev: dev)
    else
      puts "Cannot give away the freebie. It does not belong to the current dev."
end
end
end
