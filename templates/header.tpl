<!DOCTYPE html>
<html>
<head>
	<title>{browserTitle}</title>
	<!-- BEGIN metaTags -->
	{function.buildMetaTag}
	<!-- END metaTags -->
	<link rel="stylesheet" type="text/css" href="{relative_path}/stylesheet.css?{config.cache-buster}" />
	<!-- BEGIN linkTags -->
	{function.buildLinkTag}
	<!-- END linkTags -->

	<!--[if lt IE 9]>
  		<script src="//cdnjs.cloudflare.com/ajax/libs/es5-shim/2.3.0/es5-shim.min.js"></script>
  		<script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7/html5shiv.js"></script>
  		<script src="//cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.js"></script>
  		<script>__lt_ie_9__ = 1;</script>
	<![endif]-->

	<script>
		var RELATIVE_PATH = "{relative_path}";
		var config = JSON.parse('{{configJSON}}');
		var app = {
			template: "{template.name}",
			user: JSON.parse('{{userJSON}}')
		};
	</script>
	<script src="{relative_path}/nodebb.min.js?{config.cache-buster}"></script>

	<!-- IF useCustomJS -->
	{{customJS}}
	<!-- ENDIF useCustomJS -->
	<!-- IF useCustomCSS -->
	<style type="text/css">{{customCSS}}</style>
	<!-- ENDIF useCustomCSS -->

</head>

<body class="{bodyClass}">
	<div class="navbar navbar-default navbar-fixed-top header" role="navigation" id="header-menu" component="navbar">
		<div class="loading-bar"></div>
		<div class="container">
			<!-- IMPORT partials/menu.tpl -->
		</div>
	</div>
	<div class="container" id="content" component="content">
	<!-- IMPORT partials/noscript/warning.tpl -->
