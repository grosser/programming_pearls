#----excerpt
experiments = [1,2,3]
stresses = ['low','medium','high']
result = []

experiments.count.times {
  experiment = experiments.delete_at(rand(experiments.count))
  stress = stresses.delete_at(rand(stresses.count))
  result << "#{experiment} #{stress}"
}
#----excerpt

puts result * ', '

