<% if IsEmbedded %>
$Layout
<% else %>
<% include PageHeader %>
<% control Menu(1) %>
$Render
<% end_control %>
<% include PageFooter %>
<% end_if %>

