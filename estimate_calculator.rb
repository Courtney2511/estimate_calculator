
# markups base price 5%
def flat_markup(base)
  (base * 1.05).round(2)
end

# markups base price 1.2% per worker on the job
def worker_markup(base, workers)
  (flat_markup(base) * (workers * 0.012)).round(2)
end

def category_markup(category)
  category_markup = if category == 'drugs'
                      0.075
                    elsif category == 'food'
                      0.13
                    elsif category == 'electronics'
                      0.02
                    else
                      0
                    end
  category_markup
end

def estimate_calculator(base, workers, category)
  flat_markup = flat_markup(base)
  worker_markup = worker_markup(base, workers)
  category_markup = flat_markup * category_markup(category)
  (flat_markup + worker_markup + category_markup).round(2)
end
