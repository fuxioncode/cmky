<html>
<head>
    <meta charset="utf-8" />
    <title>codebook show</title>
	<link rel="stylesheet" href="/css/themes/base/jquery-ui.css" />
    <script src="/js/jquery-1.8.3.js"></script>
    <script src="/js/jquery-ui.js"></script>
</head>
<body>
<div  style="width:100%" class="ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all">
	<div style="width:60px;float:left">标题</div><div><input type="text" value="{$title}"></div></div><br/>
	<div ><h2>描述:</h2></div>
	<div ><textarea style="width:460;height:200px">{$descript}</textarea></div><br/>
	<div ><h2>代码:</h2></div>
	<div><textarea style="width:460;height:200px">{$code}</textarea></div>	
	<div><input type="submit" value="提交"></div>
</body>
</html>