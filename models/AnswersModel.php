<?php
/**
 * Created by PhpStorm.
 * User: Genady
 * Date: 04/08/2019
 * Time: 14:29
 */

class AnswersModel
{
    private $_db;

    public function __construct()
    {
        require_once 'Db_Q.php';
        $db = new DbQ();
        $this->_db = $db->getConnection();
    }
public function getAllUserAnswers($up = 1){
    $previes_simple_query = "SELECT sfusd.smart_form_crypt, sfusd.simple_form_crypt, sfusd.element_crypt, sfusd.saved_value, sfusd.user_session_crypt,
 sfe.type, sfe.title, sess.CT AS s_ut 
 FROM simple_form_user_saved_data sfusd
LEFT JOIN simple_forms_elements sfe ON sfusd.element_crypt = sfe.crypt
LEFT JOIN users_sessions sess ON sfusd.user_session_crypt = sess.session_cript
LEFT JOIN simple_forms sf ON sfusd.simple_form_crypt = sf.crypt WHERE sf.up = {$up}";
    $st = $this->_db->query($previes_simple_query);
   $res = $st->fetchAll(PDO::FETCH_ASSOC);
   $res_array = array();
   foreach($res as $user_answer){
       $res_array[$user_answer['user_session_crypt']]['session_date'] = $user_answer['s_ut'];
       $res_array[$user_answer['user_session_crypt']]['answers'][$user_answer['element_crypt']] =  array(
           'type' => $user_answer['type'],
           'title'=> $user_answer['title'],
           'value'=>$user_answer['saved_value']
       );
   }
   return $res_array;
}
}