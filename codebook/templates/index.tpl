
<table border=1>
<tr>
	<td>
		title
	</td>
	{foreach from=$Language key=lid item=name}
		<td>
		{$name}
		</td>
	{/foreach}
</tr>
{foreach from=$Data key=id item=rec}
	<tr>
		<td>
			{$Title[$id]}
		</td>
	{foreach from=$Language key=lid item=name}
		<td>
		{if $rec[$lid] eq ""}
			pid:{$id},lid:{$lid}
		{else} 
			{$CodeTitle[$rec[$lid]]}
		{/if}
		</td>
	{/foreach}
	</tr>
{/foreach}
<table>