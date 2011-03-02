class Gallery < ActiveRecord::Base
  attr_accessible :name
  has_many :paintings
end





#<div id="paintings">
#  <% for painting in @gallery.paintings %>
#    <div class="painting">
#      <%= image_tag painting.image_url if painting.image? %>
#      <div class="name"><%= painting.name %></div>
#      <div class="actions">
#        <%= link_to "edit", edit_painting_path(painting) %> |
#        <%= link_to "remove", painting, :confirm => 'Are you sure?', :method => :delete %>
#      </div>
#    </div>
#  <% end %>
#  <div class="clear"></div>
#</div>
