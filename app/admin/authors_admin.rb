Trestle.resource(:authors) do
  menu do
    group :articles_db do
      item :authors, icon: "fa fa-star", priority: :last
    end
  end

  # Customize the table columns shown on the index view.
  #
  # table do
  #   column :name
  #   column :created_at, align: :center
  #   actions
  # end
  #
  # 
  form do |author|
    tab :author do
      text_field :name
      text_field :surname
      email_field :email
      text_field :slug
      text_area :notes

      row do
        col { datetime_field :updated_at }
        col { datetime_field :created_at }
      end
    end

    tab :articles, badge: author.articles.count do
      table author.articles do
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
  #   params.require(:author).permit(:name, ...)
  # end
end
