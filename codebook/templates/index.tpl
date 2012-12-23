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
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li class="nav-header">语言</li>
              <li><a href="#">c++</a></li>
              <li><a href="#">java</a></li>
              <li><a href="#">javascript</a></li>
              <li><a href="#">python</a></li>
              <li><a href="#">lua</a></li>
              <li><a href="#">...</a></li>
              <li class="nav-header ">编辑工具</li>
              <li><a href="http://www.vim.org/" target="_brank">vim</a></li>
              <li><a href="http://notepad-plus-plus.org/" target="_brank">nodepad++</a></li>
              <li><a href="http://www.sublimetext.com/" target="_brank">sublime</a></li>
              <li class="nav-header">实用中文</li>
              <li><a href="http://www.csdn.net/" target="_brank">csdn</a></li>
              <li><a href="http://segmentfault.com" target="_brank">segmentfault</a></li>
              <li><a href="http://www.infoq.com/cn/" target="_brank">info</a></li>
            </ul>
          </div><!--/.well -->
        </div><!--/span-->
        <div class="span9">
          <div class="hero-unit">
            <h1>欢迎来到程序世界</h1>
            <p>专注解决程序问题，抛开各种复杂</p>
			<a class="btn btn-large btn-primary" href="/ser/codebook/problem_add" >添加问题</a>
            <!--p><a class="btn btn-primary btn-large">Learn more &raquo;</a></p-->
          </div>
          <div class="row-fluid">
			<div class="span2">
				<h2>标题</h2>
			</div>
			{foreach from=$Language key=lid item=name}
			<div class="span1">
				<h2>{$name}</h2>
			</div><!--/span-->
			{/foreach}
          </div><!--/row-->
		  
		{foreach from=$Data key=pid item=rec}
		<div class="row-fluid">
			<div class="span2">
				<p>{$Title[$pid]}</p>
			</div><!--/span-->
			{foreach from=$Language key=lid item=name}
				<div class="span1">
				{if $rec[$lid] eq ""}
					<a class="btn btn-primary" href="/ser/codebook/codebook_add?pid={$pid}&lid={$lid}" >
					添加
					</a>
				{else} <!---->
					<a class="btn" title="{$CodeTitle[$rec[$lid]]}" href="/ser/codebook/codebook_show?id={$Data[$pid][$lid]}" >
					查看</a>
				{/if}
				
				</div><!--/span-->
			{/foreach}

		</div><!--/row-->
		<hr>
		{/foreach} 
        </div><!--/span-->
      </div><!--/row-->

      <hr>
    </div><!--/.fluid-container-->
{include file="footer.tpl" }
  </body>
</html>
