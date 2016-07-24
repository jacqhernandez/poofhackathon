module PagesHelper
  def dates
    dates = []
    ResidentLguResponse.uniq.pluck(:created_at).each do |created_at|
      dates.push(created_at.strftime('%Y-%m-%d'))
    end
    dates = dates.uniq
  end
end
