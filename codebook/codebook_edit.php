<?php
 /**
 * Example Application

 * @package Example-application
 */	

$smarty->caching = false;
$template="codebook_edit.tpl";

if(!$smarty->isCached($template,"edit".$code_id)) {
	//$DB=new Mysql("codebook");
	//$row=$DB->fetch("SELECT * from `t_codebook` where id=:id",array(id=>$code_id));
	//if($row){
		//foreach($row as $key => $value){
		//	$smarty->assign($key,$value);
		//}
	//}
}
$smarty->display($template,$code_id);
?>
