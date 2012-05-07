<article class="content<% if IsEmbedded %> embedded<% end_if %> $ClassNice" id="$UniqueId" rel="$UniqueId" title="$Title">
	<div class="inner">
		<h2>$Title</h2>	
		<h3>$SubTitle</h3>
		<% if class=BlogEntry %><div class="date">$Date.Long | $Comments.Count <% _t('COMMENTS', 'Comments') %></div><% end_if %>
		<div class="submenu">
		<% if blogEntries %>
		<% else %>
		<% if Children %>
			<% control Children %>
			<% if class=MemberPage %><% else %>
			<a href="$Link" id="link-$UniqueId" rel="#$Parent.UniqueId" title="$Title.XML" class="subPageLink">$Title.XML</a>
			<% end_if %>
			<% end_control %>
		<% else %>
		<% include BreadCrumbs %>
		<% end_if %>
		<% end_if %>
		</div>
		<% if ContactFormProcessed %>$ThankYouText<% else %>$Content $Form<% end_if %>
		<% if Entries %><div class="blogEntries">
			<% control Entries %>
				<% include BlogSummary %>
			<% end_control %></div>
		<% end_if %>
		<% if Members %><div class="members">
			<% control Members %>
				<% include MemberSummary %>
			<% end_control %></div>
		<% end_if %>
		<% if TagsCollection %>
		<div class="tags">
				Tags:
		<% control TagsCollection %>
				<a href="$Link" title="<% _t('VIEWALLPOSTTAGGED', 'View all posts tagged') %> '$Tag'" rel="tag">$Tag</a>
		<% end_control %>
		</div>
		<% end_if %>
		<div class="comments">
		</div>
	</div>
	<div class="pagination">
		<% include BlogPagination %>
	</div>
</article>
