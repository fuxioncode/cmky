<?php
 /**
 * Example Application

 * @package Example-application
 */
$smarty->caching = false;
$template="index.tpl";
if(!$smarty->isCached("index.tpl")) {
	$data=array(
		1=>array(1=>3,2=>4,3=>5),
		2=>array(1=>30,4=>40,5=>time()),
		3=>array(1=>31,6=>41,7=>51),
		4=>array(1=>32,3=>42,4=>52),
		5=>array(1=>33,2=>43,3=>53),
		6=>array(1=>34,2=>44,3=>54),
		7=>array(1=>35,2=>45,3=>55),
		8=>array(1=>36,2=>46,3=>56),
		9=>array(1=>37,2=>47,3=>57),
		10=>array(1=>38,2=>48,3=>58)
	);
	$language=array(1=>"java",2=>"c++",3=>"c",4=>"javascript",5=>"lua",6=>"php",7=>"python");
	$smarty->assign("Data",$data);
	$smarty->assign("Language",$language);
}
$smarty->display($template);
?>
