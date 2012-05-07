<% if Entries.MoreThanOnePage %>
	<div id="PageNumbers">
		<p>
			<% if Entries.NotFirstPage %>
				<a class="prev" href="$Entries.PrevLink" title="View the previous page">Prev</a>
			<% end_if %>
		
			<span>
		    	<% control Entries.PaginationSummary(4) %>
					<% if CurrentBool %>
						<span class="current">$PageNum</span>
					<% else %>
						<% if Link %>
							<a href="$Link" title="View page number $PageNum">$PageNum</a>
						<% else %>
							&hellip;
						<% end_if %>
					<% end_if %>
				<% end_control %>
			</span>
		
			<% if Entries.NotLastPage %>
				<a class="next" href="$Entries.NextLink" title="View the next page">Next</a>
			<% end_if %>
		</p>
	</div>
<% end_if %>
