﻿<cfoutput>
#html.doctype()#
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>#getSetting( "demoTitle" )#</title>
	<!---css --->
	<link href="includes/styles/bootstrap.min.css" rel="stylesheet">
	<link href="includes/styles/bootstrap-responsive.min.css" rel="stylesheet">
	<!---js --->
    <script src="includes/javascript/jquery.js"></script>
	<script src="includes/javascript/bootstrap.min.js"></script>
	<style>
	 /* Utility */
	.centered { text-align: center !important; }
	.inline{ display: inline !important; }
	.margin10{ margin: 10px; }
	.padding10{ padding: 10px; }
	.margin0{ margin: 0px; }
	.padding0{ padding: 0px; }
	.footer {
	  margin-top: 45px;
	  padding: 35px 35px;
	  border-top: 1px solid ##e5e5e5;
	}
	.footer p {
	  margin-bottom: 0;
	  color: ##555;
	}
	body{ padding-top: 50px; }
	</style>
</head>
<body data-spy="scroll">
	<!---Top NavBar --->
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="navbar-inner">
			<!---Brand --->
			<div class="container">
				<!---Responsive Design --->
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
		        </a>
				<!---Branding --->
				<a class="brand" href="/"><strong>Home</strong></a>

				<!---About --->
				<ul class="nav pull-right">
					<li class="dropdown">
						<a href="##" class="dropdown-toggle" data-toggle="dropdown">
							<i class="icon-info-sign icon-white"></i> About <b class="caret"></b>
						</a>
						<ul id="actions-submenu" class="dropdown-menu">
							 <li class="nav-header">Shirdi Sai</li>
							 <li><a href="https://www.shrisaibabasansthan.org/"><i class="icon-fire"></i>Shirdi</a></li>
							 <li><a href="https://en.wikipedia.org/wiki/G._S._Khaparde"><i class="icon-bullhorn"></i>G.S.Khaparde</a></li>
							 <li><a href="https://en.wikipedia.org/wiki/Sai_Baba_of_Shirdi"><i class="icon-home"></i>Wiki</a></li>
							 <li class="centered">
							 	<img src="includes/images/Saibaba.jpg"  alt="logo"/>
							 </li>
						</ul>
					</li>
				</ul>

			</div> <!---end container --->
		</div> <!---end navbar-inner --->
	</div> <!---end navbar --->
		

	<!---Container And Views --->
	<div class="container">
		<div>
			<h3>#getSetting( "demoTitle" )#</h3>
			<p>
				#getSetting( "demoDescription" )#
				<cfloop array="#getSetting( "demoDescriptionButtons" )#" index="button">
					<a class="btn btn-primary pull-right" href="#button.link#" target="_blank" title="#button.name#" rel="tooltip">
						<strong>#button.name#</strong>
					</a>
				</cfloop>
			</p>
		</div>
		<br>
		#renderView()#
	</div>

	<footer class="footer">
		<p class="pull-right">
			<a href="##"><i class="icon-arrow-up"></i> Back to top</a>
		</p>
		<p>
			This demo running on <strong>#getSetting( "codename", 1 )# #getSetting("version",1)#</strong>.<br>
			Code available at <a href="#getSetting( 'demoSourceLink' )#" target="_top">#getSetting( 'demoSourceLink' )#</a><br>
			ColdBox Error Docs here: <a href="#getSetting( 'demoRelatedDocsLink' )#" target="_top">#getSetting( 'demoRelatedDocsLink' )#</a><br><br>
		</p>
		
		<p>
			<a href="http://www.coldbox.org" target="_top">ColdBox Platform</a> is a copyright-trademark software by
			<a href="http://www.ortussolutions.com" target="_top">Ortus Solutions, Corp</a>
		</p>
	</footer>

	<script>
	$(function() {
		// activate all drop downs
		$('.dropdown-toggle').dropdown();
		// Tooltips
		$("[rel=tooltip]").tooltip();
		// Scroll spy
		$('##subnav').scrollspy();
	})
	</script>
</body>
</html>
</cfoutput>
