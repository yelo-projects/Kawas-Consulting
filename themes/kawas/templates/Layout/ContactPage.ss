<div class="page pos-$SortPublic">
	<div class="$ClassNice Page-$SortPublic" id="$UniqueId">
		<div class="top">$Title</div>
		<div class="body">
			<% if ContactFormProcessed %>$ThankYouText<% else %>$Content $Form<% end_if %>
		</div>
		<div class="breadcrumbs">
			<a class="home">Home</a>
			<% if IsHeadPage %>	
				<% if Children %>
					<a class="current page-$Pos $firstLast">1</a>
				<% control Children %>
					<a class="other page-$Pos $firstLast">$SortPublic</a>
				<% end_control %>
				<% end_if %>
			<% else  %>
				<% if Siblings %><% control Siblings %>
					<a class="<% if SortMe %>current<% else %>other<% end_if %> page-$Pos $firstLast">$SortPublic</a>
				<% end_control %><% end_if %>
			<% end_if %>
		</div>
	</div>
</div>
