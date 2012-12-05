
<table border=1>
<tr>
	{foreach from=$Language key=lid item=name}
		<td>
		{$name}
		</td>
	{/foreach}
</tr>
{foreach from=$Data key=id item=rec}
	<tr>
	{foreach from=$Language key=lid item=name}
		<td>
		{if $rec[$lid] eq ""}
			-
		{else} 
			{$lid}:{$rec[$lid]}
		{/if}
		</td>
	{/foreach}
	</tr>
{/foreach}
<table>