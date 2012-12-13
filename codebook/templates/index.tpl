<!doctype html>
 
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>codebook</title>
	<link rel="stylesheet" href="/css/themes/base/jquery-ui.css" />
    <script src="/js/jquery-1.8.3.js"></script>
    <script src="/js/jquery-ui.js"></script>
    </script>
</head>
<body>
<table border=1 class="ui-widget-content ui-corner-all">
<tr >
	<td align="center"  class="ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all">
		title
	</td>
	{foreach from=$Language key=lid item=name}
		<td align="center" class="ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all">
		{$name}
		</td>
	{/foreach}
</tr>
{foreach from=$Data key=pid item=rec}
	<tr>
		<td class="ui-widget-content ui-corner-all">
			{$Title[$pid]}
		</td>
	{foreach from=$Language key=lid item=name}
		<td align="center" class="ui-widget-content ui-corner-all">
		{if $rec[$lid] eq ""}
			pid:{$pid},lid:{$lid}
		{else} 
			<a href="/index.php?st_project=codebook&st_file=codebook_show&st_debug=true&id={$Data[$pid][$lid]}" >{$CodeTitle[$rec[$lid]]}</a>
		{/if}
		</td>
	{/foreach}
	</tr>
{/foreach}
</table>
</body>
</html>