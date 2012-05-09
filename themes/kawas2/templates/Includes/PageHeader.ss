<!DOCTYPE html>

<html lang="$ContentLocale">
<head>
<% base_tag %>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="author" content="Codrops" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"> 
$MetaTags(false)
<title><% if MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
<link rel="shortcut icon" href="/favicon.ico" />
<!--[if lt IE 9]>
<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<% require themedCSS(style) %>
$JQueryFallback
<noscript><style>@media screen and (max-width: 715px) {.content-scroller{overflow: visible;}}</style></noscript>
</head>
<body id="Page-$UniqueId" class="$UniqueId $class">
<div id="container" class="container">
<aside class="menu" id="menu"><div class="logo"></div>
<nav>
<% control Menu(1) %>
<a href='$Link' rel="$UniqueId" title="$Title.XML" class="$LinkingMode page-link"><span>$MenuTitle.XML</span><span>$SubTitle</span></a>
<% end_control %>
</nav>
</aside><a href="#menu" class="totop-link">Go to the top</a>
<div class="content-scroller"><div class="content-wrapper">
