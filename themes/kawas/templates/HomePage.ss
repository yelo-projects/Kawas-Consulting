<% if IsEmbedded %>
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
		<div class="pages-wrapper home">
			<div class="pages-slider">
			<div class="page pos-1">
			<div id="home" class="home">
				<div class="top"></div>
				<div class="body">
					<ul>
					<% control Menu(1) %>
					<% if URLSegment == home %>
					<% else %>
					<li><a href="#$UniqueId" title="Go to the $Title.XML page" class="$LinkingMode $UniqueID">
						<span class="dots"></span>
						<span class="menuItemName">$MenuTitle.XML</span>
						<span class="menuExplanation">
							$Summary(10)
						</span>
						</a>
					</li>
					<% end_if %>
				   	<% end_control %>
					</ul>
					$Form
				</div>
			</div>
			</div>
			</div>
		</div>		
		$Layout
	</div>
</div>
</body>
</html>
<% end_if %>
