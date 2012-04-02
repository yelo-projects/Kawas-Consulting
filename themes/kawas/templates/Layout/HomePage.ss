<% control Menu(1) %>
<% if URLSegment = home %>
<% else %>
<div class="pages-wrapper $UniqueId $URLSegment">
	<div class="pages-slider">
		$Render
	</div>
	<% if Children %>
	<div class="controls">
		<a href="#"  class="previous">&lt;</a>
		<a href="#" class="next">&gt;</a>
	</div>
	<% end_if %>
</div>
<% end_if %>
<% end_control %>
