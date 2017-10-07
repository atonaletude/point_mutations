class DNA
  def initialize(sequence)
    @sequence = sequence
  end

def hamming_distance(other_sequence)
  count = 0
  if bigger?(other_sequence)
    sequence1, sequence2 = @sequence, other_sequence
  else
    sequence1, sequence2 = other_sequence, @sequence
  end
  sequence1.chars.each_with_index do |value, index|
    count += 1 if value != sequence2[index]
  end
  count
end

  def bigger?(other_sequence)
    other_sequence.length > @sequence.length
  end
end


p DNA.new('ACT').hamming_distance('GGA')
