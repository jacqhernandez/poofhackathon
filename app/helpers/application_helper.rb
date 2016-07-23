module ApplicationHelper
  def resource_name
    :lgu_officer
  end

  def resource
    @resource ||= LguOfficer.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:lgu_officer]
  end
end
