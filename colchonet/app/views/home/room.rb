class Room < ActiveRecord::Base
def complete_name
"#{title}, #{location}"
end
end
Voltando ao template ( app/views/home/index.html.erb ):
<h1>Quartos recém postados</h1>
<ul>
<% @rooms.each do |room| %>
<li><%= link_to room.complete_name, room %> </li>
<% end %>
</ul>
