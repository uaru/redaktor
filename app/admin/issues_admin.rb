Trestle.resource(:issues) do
  menu do
    group :articles_db, priority: :first do
      item :issues, icon: "fa fa-star", priority: :first
    end
  end

  collection do
    model.includes(:articles)
  end

  table do
    column :year
    column :month
    column :number
    column :issue_date
    actions
  end


  form do |issue|
    row do
      col { text_field :year }
      col { text_field :number }
      col { text_field :month }
      col { date_field :issue_date }
    end

    divider

    if issue.articles.any?
    table issue.articles, label: "Articles" do |author|
      column :title do |article|
        admin_link_to article.title, article
      end
    end
    end

  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:issue).permit(:name, ...)
  # end
end
