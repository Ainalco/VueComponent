<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Api extends MY_Controller {

    protected $FILE_PATH;
    private $phrase = "phrase";
    public function __construct()
    {
            parent::__construct();
            $this->load->dbforge();
			$this->load->helper('language');
			header("Access-Control-Allow-Origin: *");
    }

    public function index()
    {
            echo "done";
    }
	public function userlist(){
		$this->db->select('*');
        $this->db->from('users');
		$query = $this->db->get();
		$userlist=$query->result();
		if ($userlist != FALSE) {
                    return $this->respondWithSuccess('All User List', $userlist);
                } else {
                    return $this->respondWithError('All User List Not Found',$userlist);
                }
		}
	public function services(){
		$this->db->select('*');
        $this->db->from('tbl_services');
		$query = $this->db->get();
		$userlist=$query->result();
		if ($userlist != FALSE) {
                    return $this->respondWithSuccess('All Services List', $userlist);
                } else {
                    return $this->respondWithError('Services Not Found',$userlist);
                }
		}

    
	
}
				