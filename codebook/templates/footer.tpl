
    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="/js/jquery-1.8.3.js"></script>
    <script src="/js/bootstrap.js"></script>
	{include file="login.tpl" }
	{if not $st_message eq ""}
	<script>alert("{$st_message}")</script>
	{/if}
	<div id="footer"> 
      <div class="container"> 
        <p class="muted credit"><a href="http://www.cmky.net">cmky.net</a> email:humboldt_xie@163.com</p> 
		<p>&copy; ICP证：粤ICP备12091792号-1</p>
		<!--script type="text/javascript">
		var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
		document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F07b74cdd6d9834e237f5061e9f5dde85' type='text/javascript'%3E%3C/script%3E"));
		</script-->

      </div> 
    </div> 