<div class="memberSummary">
	<h2><a href="$Link" title="<% _t('VIEWFULL', 'View full post titled -') %> '$Title'">$MenuTitle</a></h2>
	<div class="image">$Image.SetWidth(350)</div>
	<% if Links %>
	<div class="links">
		<% control Links %>$Link<% end_control %>
	</div>
	<% end_if %>
	$Content.FirstParagraph(html)
</div>
