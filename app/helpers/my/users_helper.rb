module My::UsersHelper
  def grouped_select_activities
    ActivityCategory.includes(:activities).order(position: :asc).map { | activity_category |
      activities = activity_category.activities.sort { |a, b| a.position <=> b.position }.map { | activity |
        [activity.name, activity.id]
      }
      [activity_category.name, activities]
    }
  end
end
