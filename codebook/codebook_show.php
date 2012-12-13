<?php
 /**
 * Example Application

 * @package Example-application
 */	

$smarty->caching = false;
$template="codebook_show.tpl";
$code_id=$_GET["id"];
if(!preg_match("/^\d+$/",$code_id)){
	$smarty->assign("message","not found $code_id");
	$smarty->display("error.tpl");
	die;
}
if(!$smarty->isCached($template,$code_id)) {
	$DB=new Mysql("codebook");
	$row=$DB->fetch("SELECT * from `t_codebook` where id=:id",array(id=>$code_id));
	if($row){
		foreach($row as $key => $value){
			$smarty->assign($key,$value);
		}
	}
}
$smarty->display($template,$code_id);
?>
