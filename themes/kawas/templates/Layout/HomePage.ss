<% control Menu(1) %>
<% if URLSegment == home %>
<% else_if URLSegment == blog %>
<% else %>
<div class="pages-wrapper $UniqueId $URLSegment pos-$Sort">
	<div class="bg-1 bg"></div>
	<div class="bg-2 bg"></div>
	<div class="pages-slider">
		$Render
	</div>
	<% if Children %>
	<div class="controls">
		<a href="#"  class="pagination previous">&lt;</a>
		<a href="#" class="pagination next">&gt;</a>
	</div>
	<% end_if %>
</div>
<% end_if %>
<% end_control %>
