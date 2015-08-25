module ProjectsHelper
  def format_project_end_date(project)
    if project.expired?
      content_tag(:strong, 'All done!')
    else
      days = (project.pledging_ends_on - Date.today).to_i
      content_tag(:u, "In %i days" % days.to_s)
    end
  end
end
