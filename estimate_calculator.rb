
# markups base price 5%
def base_markup(base)
  (base * 0.05).round(2)
end

# markups base price 1.2% per worker on the job
def worker_markup(base, workers)
  (base * workers * 0.012).round(2)
end
