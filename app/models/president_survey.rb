class PresidentSurvey < ActiveRecord::Base
  extend ActionView::Helpers

  def self.results(name)
    h = PresidentSurvey.where(choice: 'Hillary Clinton', name: name).count
    ted = PresidentSurvey.where(choice: 'Ted Cruz', name: name).count
    dt = PresidentSurvey.where(choice: 'Donald Trump', name: name).count
    bern = PresidentSurvey.where(choice: 'Bernie Sanders', name: name).count
    k = PresidentSurvey.where(choice: 'John Kasisch', name: name).count
    "Clinton: #{pct h, name} Sanders: #{pct bern, name} Trump: #{pct dt, name} Cruz: #{pct ted, name} Kasisch #{pct(k, name)}"
  end

  def self.pct(n, name)
    count = PresidentSurvey.where(name: name).count.to_f
    return '0%' if count == 0
    return (n/count * 100).round.to_s + '%'
  end
end
