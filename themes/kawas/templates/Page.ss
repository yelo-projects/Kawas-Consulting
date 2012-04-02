<% if IsEmbedded %>
$Layout
<% else %>
<!DOCTYPE html>

<html lang="$ContentLocale">
  <head>
		<% base_tag %>
		<title><% if MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
		$MetaTags(false)
		<link rel="shortcut icon" href="/favicon.ico" />
		
		<% require themedCSS(styles) %> 
		<% require themedCSS(typography) %> 
		
		<!--[if IE 6]>
			<style type="text/css">
			 @import url(themes/blackcandy/css/ie6.css);
			</style> 
		<![endif]-->
	</head>
<body>
<div id="MainWrapper">
	<div id="Pages">
		$Layout
	</div>
</div>
</body>
</html>
<% end_if %>
