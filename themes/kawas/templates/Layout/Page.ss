<div id="$UniqueId" class="page pos-$SortPublic" data-pos="$SortPublic">
	<div class="$ClassNice Page-$SortPublic" id="$UniqueId">
		<div class="top">$Title</div>
		<% if Starts %>
			<div class="date">
				<% if Ends %>Starts at $StartingDate $StartingTime, ends at $Ends.Nice24<% else %>Date: $StartingDate<% end_if %>
			</div>
		<% end_if %>
		<div class="body">
			<% if ContactFormProcessed %>$ThankYouText<% else %>$Content $Form<% end_if %>
		</div>
		<div class="breadcrumbs">
			<a href="#home" class="page-link home">Home</a>
			<% if IsHeadPage %>	
				<% if Children %>
					<a href="#$UniqueId" class="current page-1" data-pos="1">1</a>
				<% control Children %>
					<a href="#$UniqueId" class="other pagination  page-$Pos $firstLast" data-pos="$SortPublic">$SortPublic</a>
				<% end_control %>
				<% end_if %>
			<% else  %>
				<% if Siblings %>
				<a href="#$UniqueId" class="pagination page-1" data-pos="1">1</a>
				<% control Siblings %>
					<a href="#$UniqueId" class="pagination <% if SortMe %>current<% else %>other<% end_if %> page-$Pos $firstLast" data-pos="$SortPublic">$SortPublic</a>
				<% end_control %><% end_if %>
			<% end_if %>
		</div>
	</div>
</div>
