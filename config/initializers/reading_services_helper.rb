class ReadingServicesHelper
  TIERS = [
    'Basic',
    'Standard',
    'Advanced',
    'Premium'
  ]

  def self.make_verbose(nth_tier)
    "#{TIERS[nth_tier]} Reading"
  end

  def self.urlify(nth_tier)
    TIERS[nth_tier].downcase
  end

  def self.tier_to_int(tier)
    TIERS.index tier.capitalize
  end

  def self.color(nth_tier)
    case nth_tier
    when 0
      'green'
    when 1
      'blue'
    when 2
      'red'
    when 3
      'black'
    end
  end
end
