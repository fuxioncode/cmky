<html>
  <head>
{include file="header.tpl" title=codebook}
  </head>
<body>
{include file="guider.tpl" title=codebook}
    <div class="container-fluid">
      <div class="row-fluid">
        <div class="span3">
          <div class="well sidebar-nav">
            <ul class="nav nav-list">
              <li class="nav-header">Sidebar</li>
              <li class="active"><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li class="nav-header">Sidebar</li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li class="nav-header">Sidebar</li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
            </ul>
          </div><!--/.well -->
        </div><!--/span-->
        <div class="span9">
          <div class="hero-unit">
            <h1>欢迎来到黑客世界</h1>
            <p>这里是喜欢解决困难问题玩家的世界，解决编码问题，我们不致于将问题简化，因为我们接受其困难的挑战。我们也不将问题复杂化，还原其最真实的面貌，像解决数学题一样，用清晰的思路去解决。</p>
            <!--p><a class="btn btn-primary btn-large">Learn more &raquo;</a></p-->
          </div>
          <div class="row-fluid">
			<div class="span4">
				<h2>标题</h2>
			</div>
			{foreach from=$Language key=lid item=name}
			<div class="span4">
				<h2>{$name}</h2>
			</div><!--/span-->
			{/foreach}
          </div><!--/row-->
		  
		{foreach from=$Data key=pid item=rec}
		<div class="row-fluid">
			<div class="span4">
				<p>{$Title[$pid]}</p>
			</div><!--/span-->
			{foreach from=$Language key=lid item=name}
				<div class="span4">
				
				{if $rec[$lid] eq ""}
					<p>pid:{$pid},lid:{$lid}</p>
				{else} 
					<a class="btn" href="/index.php?st_project=codebook&st_file=codebook_show&st_debug=true&id={$Data[$pid][$lid]}" >{$CodeTitle[$rec[$lid]]}</a>
				{/if}
				
				</div><!--/span-->
			{/foreach}

		</div><!--/row-->
		<hr>
		{/foreach} 
        </div><!--/span-->
      </div><!--/row-->

      <hr>

      <footer>
        <p>&copy; cmky 2012</p>
      </footer>
    </div><!--/.fluid-container-->
{include file="footer.tpl" }
  </body>
</html>
