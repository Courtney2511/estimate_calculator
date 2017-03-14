
# markups base price 5%
def flat_markup(base)
  (base * 1.05)
end

# markups base price 1.2% per worker on the job
def worker_markup(base, workers)
  flat_markup(base) * (workers * 0.012)
end

def category_markup(category)
  category_markup = ''
    if category == 'drugs'
      category_markup = 0.075
    elsif category == 'food'
      category_markup =  0.13
    elsif category == 'electronics'
      category_markup =  0.02
    else
      category_markup = 0
    end
  category_markup
end

def estimate_calculator(base, workers, category)
  (flat_markup(base) + worker_markup(base, workers) + (flat_markup(base) * category_markup(category))).round(2)
end

puts category_markup('food')
