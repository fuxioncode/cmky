<?php
 /**
 * Example Application

 * @package Example-application
 */

require('third/smarty/Smarty.class.php');
require("db.php");
$smarty = new Smarty;
//smarty setting
//$smarty->force_compile = true;
$debug=$_GET["st_debug"];
if($debug=="true")
	$smarty->debugging = true;

$smarty->caching = true;
$smarty->cache_lifetime = 20;
$subdir="third". DS."smarty";
$smarty->setCompileDir($subdir . DS.'templates_c' . DS)
	->setCacheDir($subdir . DS.'cache' . DS);
	
//project setting
$project=$_GET["st_project"];
if($project=="")
	$project="test";
$smarty->addTemplateDir( ".". DS . $project . DS.'templates'. DS)
	->setConfigDir(".". DS . $project . DS.'configs' . DS);
$file=$_GET["st_file"];
if($file=="")
	$file="index";
include_once($project."/$file.php");
?>
