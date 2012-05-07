<div class="blogSummary">
	<h2 class="postTitle"><a href="$Link" title="<% _t('VIEWFULL', 'View full post titled -') %> '$Title'">$MenuTitle</a></h2>
	<% if TagsCollection %>
		<div class="tags">
			Tags:
			<% control TagsCollection %>
				<a href="$Link" title="View all posts tagged '$Tag'" rel="tag">$Tag</a>
			<% end_control %>
		</div>
	<% end_if %>
	<p>$Content.FirstParagraph(html)</p>
	<div class="date">$Date.Long</div>
</div>
