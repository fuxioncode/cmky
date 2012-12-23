<html>
	<head>
		{include file="header.tpl" title=codebook}
	</head>
<body>
{include file="guider.tpl" title=codebook}

<div class="row-fluid">
	<div class="span12">
		<div class="hero-unit">
			<h1>{$title}</h1>
			<p>{$descript}</p>
			<textarea id="code"  style="width:100%;height:300px;">{$code}</textarea>
			<!--p><a class="btn btn-primary btn-large">Learn more &raquo;</a></p-->
		</div>
	 </div><!--/span-->
</div><!--/row-->
    </div><!--/.fluid-container-->
{include file="footer.tpl" }
<script src="/js/edit_area/edit_area_full.js"></script>
<script>
function initCodeEditor(){
			editAreaLoader.init({
				id: "code"	// id of the textarea to transform		
				,start_highlight: true	// if start with highlight
				,allow_resize: "both"
				,allow_toggle: false
				,toolbar: "search, go_to_line, |, undo, redo, |, select_font, |, syntax_selection, |, change_smooth_selection, highlight, reset_highlight, |, help"
				,syntax_selection_allow: "css,html,js,php,python,vb,xml,c,cpp,sql,basic,pas,brainfuck"
				,word_wrap: true
				,language: "zh"
				,syntax: "js"
			});
		}
$(function(){
initCodeEditor();
});
</script>
  </body>
</html>
