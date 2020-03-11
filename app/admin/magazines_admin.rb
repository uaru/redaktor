Trestle.resource(:magazines) do
  menu do
    group :articles_db do
      item :magazines, icon: "fa fa-star", priority: :last
    end
  end

  collection do
    model.includes(:authors)
  end

  table do
    column :title
    column :website
    column :facebook
    column :mail
    column :authors do |magazine|
      magazine.authors.count
    end
    actions
  end


  form do |magazine|
    text_field :title
    text_field :website
    text_field :facebook
    text_field :mail

    select :author_ids, Author.all, {label: "Authors"}, multiple: true
  end


# By default, all parameters passed to the update and create actions will be
# permitted. If you do not have full trust in your users, you should explicitly
# define the list of permitted parameters.
#
# For further information, see the Rails documentation on Strong Parameters:
#   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
#
# params do |params|
#   params.require(:magazine).permit(:name, ...)
# end
end
