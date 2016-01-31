class ReadingServicesHelper
  TIERS = [
    'Standard',
    'Basic',
    'Advanced',
    'Premium'
  ]

  def self.urlify(nth_tier)
    TIERS[nth_tier].downcase
  end

  def self.tier_to_int(tier)
    TIERS.index tier.capitalize
  end
end
