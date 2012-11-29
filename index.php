<?php
 /**
 * Example Application

 * @package Example-application
 */

require('third/smarty/Smarty.class.php');

$smarty = new Smarty;

//$smarty->force_compile = true;
$smarty->debugging = true;
$smarty->caching = true;
$smarty->cache_lifetime = 120;
$subdir="third". DS."smarty";
$pojdir="test";
$smarty->setCompileDir($subdir . DS.'templates_c' . DS)
	->setCacheDir($subdir . DS.'cache' . DS);


$smarty->setTemplateDir( ".". DS . $pojdir . DS.'templates'. DS)
	->setConfigDir(".". DS . $pojdir . DS.'configs' . DS);
	
	
include_once("test"."/index.php");

$smarty->display('index.tpl');
?>
