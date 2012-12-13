<?php
 /**
 * Example Application

 * @package Example-application
 */
$smarty->caching = false;
$template="index.tpl";
if(!$smarty->isCached("index.tpl")) {
	try {
		$DB = new PDO("mysql:dbname=codebook;host=127.0.0.1", "root", "");
	} catch (PDOException $e) {
        throw new SmartyException('Mysql Resource failed: ' . $e->getMessage());
    }
	$fetch=$DB->prepare('SELECT problem_id,language_id,codebook_id,t_problem.title as ptitle,t_language.name,t_codebook.title as ctitle FROM `t_problem`,`t_index`,t_language,t_codebook WHERE t_problem.id=t_index.problem_id and t_index.language_id=t_language.id and t_index.codebook_id=t_codebook.id order by t_index.update_time desc');
	$fetch->execute();
	$row=null;
	$data=array();
	$title=array();
	$code_title=array();
	while($row=$fetch->fetch()){
		$pid=$row['problem_id'];
		$lid=$row['language_id'];
		$cid=$row['codebook_id'];
		$ptitle=$row['ptitle'];
		$ctitle=$row['ctitle'];
		//echo ($data[$pid]=='');
		if($data[$pid]=='')
		{
			$data[$pid]=array();
		}
		$data[$pid][$lid]=$cid;
		$title[$pid]=$ptitle;
		$code_title[$cid]=$ctitle;
		//echo $pid." ".$lid." ".$cid." ".$data[$pid][$lid]."<br/>";
	}
	$fetch->closeCursor();   

	//$language=array(1=>"java",2=>"c++",3=>"c",4=>"javascript",5=>"lua",6=>"php",7=>"python");
	$fetch=$DB->prepare('SELECT * FROM `t_language`');
	$fetch->execute();
	$language=array();
	while($row=$fetch->fetch()){
		$id=$row["id"];
		$name=$row["name"];
		$language[$id]=$name;
	}
	$fetch->closeCursor();
	$smarty->assign("Data",$data);
	$smarty->assign("Language",$language);
	$smarty->assign("Title",$title);	
	$smarty->assign("CodeTitle",$code_title);
}
$smarty->display($template);
?>
