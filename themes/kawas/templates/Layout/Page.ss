<div class="page pos-$SortPublic" data-pos="$SortPublic">
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
			<a class="home">Home</a>
			<% if IsHeadPage %>	
				<% if Children %>
					<a class="current page-1">1</a>
				<% control Children %>
					<a class="other page-$Pos $firstLast">$SortPublic</a>
				<% end_control %>
				<% end_if %>
			<% else  %>
				<% if Siblings %>
				<a class="page-1">1</a>
				<% control Siblings %>
					<a class="<% if SortMe %>current<% else %>other<% end_if %> page-$Pos $firstLast">$SortPublic</a>
				<% end_control %><% end_if %>
			<% end_if %>
		</div>
	</div>
</div>
