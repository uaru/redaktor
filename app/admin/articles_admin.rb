Trestle.resource(:articles) do
  menu do
    group :articles_db, priority: :first do
      item :articles, icon: "fa fa-star"
    end
  end

  collection do
    model.includes(:authors, :issue)
  end

  table do
    column :title
    column :notes
    column :authors, format: :tags do |a|
      a.authors.map(&:display_name)
    end
    column :tags, format: :tags do |a|
      a.tag_list
    end

    column :created_at, align: :center
    actions
  end

  form do |article|

    text_field :title

    row do
      col { datetime_field :updated_at }
      col { datetime_field :created_at }
    end

    select :issue_id, Issue.all, { label: "Issue" }

    select :author_ids, Author.all, { label: "Authors" }, multiple: true

    tag_select :tag_list
  end

  controller do
      def tags
        if params[:q]
          render json: ActsAsTaggableOn::Tag.where("name LIKE ?", "%#{params[:q]}%").collect { |t| { id: t.id, text: t.name } }
        else
          render json: []
        end
      end
    end
    routes do
      get :tags, on: :collection
    end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:article).permit(:name, ...)
  # end
end
