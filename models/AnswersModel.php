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
        require 'Db_Q.php';
        $db = new DbQ();
        $this->_db = $db->getConnection();
    }
public function getAllUserAnswers(){
    $previes_simple_query = "SELECT sfusd.smart_form_crypt, sfusd.simple_form_crypt, sfusd.element_crypt, sfusd.saved_value, sfusd.user_session_crypt,
 sfe.type, sfe.title, sess.CT AS s_ut 
 FROM simple_form_user_saved_data sfusd
LEFT JOIN simple_forms_elements sfe ON sfusd.element_crypt = sfe.crypt
LEFT JOIN users_sessions sess ON sfusd.user_session_crypt = sess.session_cript
LEFT JOIN simple_forms sf ON sfusd.simple_form_crypt = sf.crypt ";
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
public function getSmartFormAnswers(){
        $smart_answers_query = "SELECT sua.crypt AS user_answer_crypt, sua.question_crypt, sua.answer_crypt, sua.answer_crypt, sua.session_crypt,
         qust.value AS question, ans.tytle AS answer 
        FROM smart_user_answers sua
        LEFT JOIN  questions qust ON sua.question_crypt = qust.crypt
        LEFT JOIN answers ans ON sua.answer_crypt = ans.crypt ";

        $st = $this->_db->query($smart_answers_query);
        $res = $st->fetchAll(PDO::FETCH_ASSOC);
        $smart_res_array = array();
        foreach ($res as $smart_answer){
            $smart_res_array[$smart_answer['session_crypt']]['answers'][$smart_answer['user_answer_crypt']] = array(
                'question' => $smart_answer['question'],
                'answer' => $smart_answer['answer'],
            );
        }
        return $smart_res_array;
}

    public function GetSimpleByPhoneSearch($phone_num)
    {
        $previes_simple_query = "SELECT sfusd.smart_form_crypt, sfusd.simple_form_crypt, sfusd.element_crypt, sfusd.saved_value, sfusd.user_session_crypt,
 sfe.type, sfe.title, sess.CT AS s_ut 
 FROM simple_form_user_saved_data sfusd
 LEFT JOIN simple_forms_elements sfe ON sfusd.element_crypt = sfe.crypt
 LEFT JOIN users_sessions sess ON sfusd.user_session_crypt = sess.session_cript
 LEFT JOIN simple_forms sf ON sfusd.simple_form_crypt = sf.crypt
 LEFT JOIN smart_form_users sfu ON sfu.user_crypt = sess.user_crypt WHERE sfu.user_phone = :USER_PHONE";
$st = $this->_db->prepare($previes_simple_query);
$st->bindParam(":USER_PHONE", $phone_num);
$st->execute();
//return var_dump($st->errorInfo());
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
    public function GetSmartByPhoneSearch($phone_num){
        $smart_answers_query = "SELECT sua.crypt AS user_answer_crypt, sua.question_crypt, sua.answer_crypt, sua.answer_crypt, sua.session_crypt, qust.value AS question, ans.tytle AS answer ";
        $smart_answers_query .=" FROM smart_user_answers sua ";
        $smart_answers_query .=" LEFT JOIN  questions qust ON sua.question_crypt = qust.crypt ";
        $smart_answers_query .=" LEFT JOIN answers ans ON sua.answer_crypt = ans.crypt ";
        $smart_answers_query .=" LEFT JOIN users_sessions sess ON sess.session_cript = sua.session_crypt ";
        $smart_answers_query .=" LEFT JOIN smart_form_users sfu ON sfu.user_crypt = sess.user_crypt WHERE sfu.user_phone = :USER_PHONE ";
        $st = $this->_db->prepare($smart_answers_query);
        $st->bindParam(":USER_PHONE", $phone_num);
        $st->execute();
        $res = $st->fetchAll(PDO::FETCH_ASSOC);
        $smart_res_array = array();
        foreach ($res as $smart_answer){
            $smart_res_array[$smart_answer['session_crypt']]['answers'][$smart_answer['user_answer_crypt']] = array(
                'question' => $smart_answer['question'],
                'answer' => $smart_answer['answer'],
            );
        }
        return $smart_res_array;
}

    public function GetSimpleByDatesRange($from_date, $to_date)
    {
        $fd_st = new DateTime($from_date);
        $from_date = date('Y-m-d',$fd_st->getTimestamp());
        $td_st = new DateTime($to_date);
        $to_date = date('Y-m-d',$td_st->getTimestamp());
        $previes_simple_query = "SELECT sfusd.smart_form_crypt, sfusd.simple_form_crypt, sfusd.element_crypt, sfusd.saved_value, sfusd.user_session_crypt,
 sfe.type, sfe.title, sess.CT AS s_ut 
 FROM simple_form_user_saved_data sfusd
 LEFT JOIN simple_forms_elements sfe ON sfusd.element_crypt = sfe.crypt
 LEFT JOIN users_sessions sess ON sfusd.user_session_crypt = sess.session_cript
 LEFT JOIN simple_forms sf ON sfusd.simple_form_crypt = sf.crypt
 LEFT JOIN smart_form_users sfu ON sfu.user_crypt = sess.user_crypt WHERE sess.CT >= :FROM_DATE AND sess.CT <= :TO_DATE ";
        $st = $this->_db->prepare($previes_simple_query);
        $st->bindParam(":FROM_DATE", $from_date);
        $st->bindParam(":TO_DATE", $to_date);
        $st->execute();
//return ($to_date);
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
    public function GetSmartByDateRange($from_date, $to_date){
        $fd_st = new DateTime($from_date);
        $from_date = date('Y-m-d',$fd_st->getTimestamp());
        $td_st = new DateTime($to_date);
        $to_date = date('Y-m-d',$td_st->getTimestamp());
        $smart_answers_query = "SELECT sua.crypt AS user_answer_crypt, sua.question_crypt, sua.answer_crypt, sua.answer_crypt, sua.session_crypt, qust.value AS question, ans.tytle AS answer ";
        $smart_answers_query .=" FROM smart_user_answers sua ";
        $smart_answers_query .=" LEFT JOIN  questions qust ON sua.question_crypt = qust.crypt ";
        $smart_answers_query .=" LEFT JOIN answers ans ON sua.answer_crypt = ans.crypt ";
        $smart_answers_query .=" LEFT JOIN users_sessions sess ON sess.session_cript = sua.session_crypt ";
        $smart_answers_query .=" LEFT JOIN smart_form_users sfu ON sfu.user_crypt = sess.user_crypt  WHERE sess.CT >= :FROM_DATE AND sess.CT <= :TO_DATE ";
        $st = $this->_db->prepare($smart_answers_query);
        $st->bindParam(":FROM_DATE", $from_date);
        $st->bindParam(":TO_DATE", $to_date);
        $st->execute();
        $res = $st->fetchAll(PDO::FETCH_ASSOC);
        $smart_res_array = array();
        foreach ($res as $smart_answer){
            $smart_res_array[$smart_answer['session_crypt']]['answers'][$smart_answer['user_answer_crypt']] = array(
                'question' => $smart_answer['question'],
                'answer' => $smart_answer['answer'],
            );
        }
        return $smart_res_array;
    }
}