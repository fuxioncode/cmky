<?php


class Mysql{
    // PDO instance
    protected $db;
    // prepared fetch() statement
    protected $fetch;
    // prepared fetchTimestamp() statement
    protected $mtime;

    public function __construct($db_name) {
		try {
            $this->db = new PDO("mysql:dbname=$db_name;host=127.0.0.1", "root", "");
        } catch (PDOException $e) {
            throw new SmartyException('Mysql Resource failed: ' . $e->getMessage());
        }
    }
    
    /**
     * Fetch a template and its modification time from database
     *
     * @param string $name template name
     * @param string $source template source
     * @param integer $mtime template modification timestamp (epoch)
     * @return void
     */
    public function fetch($sql,$data)
    {
		$fetch=$this->db->prepare($sql);
        $fetch->execute($data);
        $row = $fetch->fetch();
        $fetch->closeCursor();
        if ($row) {
           return $row;
        } else {
            return null;
        }
    }
	
	public function query($sql,$data)
    {
		$fetch=$this->db->prepare($sql);
        $fetch->execute($data);
		return $fetch;
	}
}
