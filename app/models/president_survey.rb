class PresidentSurvey < ActiveRecord::Base
  extend ActionView::Helpers

  def self.results
    h = PresidentSurvey.where(choice: 'Hillary Clinton').count
    ted = PresidentSurvey.where(choice: 'Ted Cruz').count
    dt = PresidentSurvey.where(choice: 'Donald Trump').count
    bern = PresidentSurvey.where(choice: 'Bernie Sanders').count
    k = PresidentSurvey.where(choice: 'John Kasisch').count
    "Clinton: #{pct h} Sanders: #{pct bern} Trump: #{pct dt} Cruz: #{pct ted} Kasisch #{pct k}"
  end

  def self.pct n
    count = PresidentSurvey.count.to_f
    return '0%' if count == 0
    return (n/count * 100).round.to_s + '%'
  end
end
