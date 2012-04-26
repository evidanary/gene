# Organism - species_name, longevity, repro_coefficient, name

module StaticPagesHelper
  def gen_dna_child(dna_m,dna_f,crossover_indexes)
	# add to crossover indexes
	crossover_indexes = crossover_indexes << dna_m.length 
	start = 0 # start index of dna
	cur_parent = (Random.rand() * 2).ceil == 1 ? "m":"f"  # initial splice 
	new_dna=''
  
	# For each crossover compute segment
	crossover_indexes.each do |cr|
	  if cur_parent == 'm'
		dna = dna_m
		cur_parent = 'f'
	  else
		dna = dna_f
		cur_parent = 'm'
	  end
	  new_dna += dna[start..cr-1] 
	  start=cr
	end
	new_dna
  end
end
