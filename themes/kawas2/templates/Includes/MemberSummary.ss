<div class="memberSummary">
	<h2>$MenuTitle</h2>
	<div class="image">$Image.SetWidth(350)</div>
	<% if Links %>
	<div class="links">
		<% control Links %>$Link<% end_control %>
	</div>
	<% end_if %>
	$Content.FirstParagraph(html)
</div>
