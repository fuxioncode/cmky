<?php
 /**
 * Example Application

 * @package Example-application
 */

require('third/smarty/Smarty.class.php');

$smarty = new Smarty;

//smarty setting
//$smarty->force_compile = true;
$smarty->debugging = true;
$smarty->caching = true;
$smarty->cache_lifetime = 120;
$subdir="third". DS."smarty";
$smarty->setCompileDir($subdir . DS.'templates_c' . DS)
	->setCacheDir($subdir . DS.'cache' . DS);
	
//project setting
$project=$_GET["project"];
if($project=="")
	$project="test";
$smarty->setTemplateDir( ".". DS . $project . DS.'templates'. DS)
	->setConfigDir(".". DS . $project . DS.'configs' . DS);

include_once($project."/index.php");
$smarty->display('index.tpl');
?>
