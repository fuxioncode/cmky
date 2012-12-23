

<html>
	<head>
		{include file="header.tpl" title=codebook}
	</head>
<body>
{include file="guider.tpl" title=codebook}

<div class="row-fluid">
	<div class="span12">
		<div class="hero-unit">
			<h1>标题:<input type="text" style="font-size:24px;height:44px" value="{$title}"></h1>
			<div ><h2>描述:</h2></div>
			<div ><textarea style="width:100%;height:200px">{$descript}</textarea></div><br/>
			<p><a class="btn" >提交</a></p>
			<!--p><a class="btn btn-primary btn-large">Learn more &raquo;</a></p-->
		</div>
	 </div><!--/span-->
</div><!--/row-->
    </div><!--/.fluid-container-->
{include file="footer.tpl" }
  </body>
</html>

