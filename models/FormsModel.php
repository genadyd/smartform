<?php
/**
 * Created by PhpStorm.
 * User: Genady
 * Date: 02/07/2019
 * Time: 13:03
 */

class FormsModel
{
    private $_db;

    public function __construct()
    {
        require_once 'Db_Q.php';
        $db = new DbQ();
        $this->_db = $db->getConnection();
    }

    public function getFormsList()
    {
        $query = "SELECT crypt, form_name  FROM forms ";
        $st = $this->_db->query($query);
        if($st->rowCount()>0){
            return $st->fetchAll(PDO::FETCH_ASSOC);
        }
    }

    public function saveQuestinnation($questination_name)
    {
        $crypt = md5(microtime());
        $ct = date('Y-m-d H:i:s', time());
//return $ct;
        $query = "INSERT INTO forms (crypt, form_name, CT, UT ) VALUES ('" . $crypt . "', '" . $questination_name . "', '" . $ct . "', '" . $ct . "') ";
        $st = $this->_db->query($query);
        $id = $this->_db->lastInsertId();
        $get_form_query = "SELECT crypt, form_name  FROM forms WHERE id = {$id}";
        $st1 = $this->_db->query($get_form_query);
        if ($st1->rowCount() > 0) {

            return $st1->fetch(PDO::FETCH_ASSOC);
        }
    }
    public function editQuestinnation($questination_name, $questination_crypt){
        $ct = date('Y-m-d H:i:s', time());
        $query = "UPDATE forms SET form_name = '".$questination_name."', UT = '".$ct."' WHERE crypt = '".$questination_crypt."'";
        $st = $this->_db->query($query);
        return array('form_name'=>$questination_name, 'crypt'=>$questination_crypt);
    }
    public function getInputsTypes(){
        $query = "SELECT * FROM elements";
        $st = $this->_db->query($query);
        $res = $st->fetchAll();
        return $res;
    }
    public function formProcessingSave($object){
//        Max Order ===========================
        $max_query = "SELECT MAX(questions_order)+1 AS m_o FROM questions";
        $m_st = $this->_db->query($max_query);
        $res = $m_st->fetch(PDO::FETCH_ASSOC);
        $new_order = $res['m_o'];
        $crypt = md5(microtime());
        $ct = date('Y-m-d H:i:s', time());
        $object['questionCrypt'] = $crypt;
        $question_name = $object['questionName'];
        $form_crypt = $object['formCrypt'];
        $ans_crypt = $object['answerCrypt'];
        $question_save_query = "INSERT INTO questions (crypt, value, form_crypt, answer_crypt, questions_order, CT, UT)
        VALUES (:CRYPT, :VALUE, :FORM_CRYPT, :ANSWER_CRYPT, :ORD, :CT, :UT)";
        $st = $this->_db->prepare($question_save_query);
        $st->bindParam(':CRYPT',$crypt);
        $st->bindParam(':VALUE',$question_name);
        $st->bindParam(':FORM_CRYPT',$form_crypt);
        $st->bindParam(':ANSWER_CRYPT',$ans_crypt);
        $st->bindParam(':ORD',$new_order);
        $st->bindParam(':CT',$ct);
        $st->bindParam(':UT',$ct);
        $st->execute();
        if(count($object['answersObject'])>0 && $st->errorCode()=='00000') {
            $this->answersObjectSave($form_crypt, $crypt, $object['answersObject']);
        }
        return $object;
    }
    private function answersObjectSave($form_crypt, $parent_question_crypt,  $answers_object){
            $values = array();
            foreach ($answers_object as $key => $val){
                $ct = date('Y-m-d H:i:s', time());
                $values[] = "('".$key."', '".$val['answerTytle']."', '".$val['answerValue']. "', '".$parent_question_crypt."', '".$form_crypt."', '".$val['elementCrypt']."', '".$ct."', '".$ct."')";
            }
            $values_string = implode(',', $values);
            $query = "INSERT INTO answers (crypt, tytle, value, question_crypt, form_crypt, element_crypt, CT, UT) VALUES {$values_string}";
           $st = $this->_db->query($query);
//           return var_dump($st->errorCode());
    }
    public function addAnswerToProcessingTable($crypt){
        $element_data = $this->getOneInputElementByCrypt($crypt);
        ob_start();
          require_once 'answers_table_string.php';
        $table_tr = ob_get_clean();
        return $table_tr;
    }
    private function getOneInputElementByCrypt($crypt){
        $query = "SELECT * FROM elements WHERE crypt ='".$crypt."'";
        $res = $this->_db->query($query);
        return $res->fetch(PDO::FETCH_ASSOC);
    }
    public function getOneQuestion($questination_crypt, $patrent_answer_crypt){
        $question_answers_object = array();
//        GEtting question ==========================================
        $get_question_query = "SELECT * FROM questions WHERE form_crypt = :QUESTINNATION_CRYPT AND answer_crypt = :ANSWER_CRYPT ";
        $question_st = $this->_db->prepare($get_question_query);
        $question_st->bindParam(":QUESTINNATION_CRYPT",$questination_crypt );
        $question_st->bindParam(":ANSWER_CRYPT",$patrent_answer_crypt );
        $question_st->execute();
        if($question_st->rowCount()>0) {
            $question_answers_object = $question_st->fetch(PDO::FETCH_ASSOC);
            $question_answers_object['questionName'] = $question_answers_object['value'];
            $question_answers_object['questionCrypt'] = $question_answers_object['crypt'];
            $question_answers_object['answersObject'] = array();
            $question_crypt = $question_answers_object['crypt'];

//        Get Answers ================================================
            $get_answers_query = "SELECT a.*, e.type, e.element_title, e.element_description  FROM answers a JOIN elements e ON a.element_crypt = e.crypt WHERE question_crypt = :QUESTION_CRYPT ";
            $answers_st = $this->_db->prepare($get_answers_query);
            $answers_st->bindParam(":QUESTION_CRYPT", $question_crypt);
            $answers_st->execute();
            if ($answers_st->rowCount() > 0) {
                $answers_res = $answers_st->fetchAll(PDO::FETCH_ASSOC);
                foreach ($answers_res as $answer) {
                    $question_answers_object['answersObject'][$answer['crypt']] = $answer;
                    $question_answers_object['answersObject'][$answer['crypt']]['answerTytle'] = $question_answers_object['answersObject'][$answer['crypt']]['tytle'];
                }
            }
            return $question_answers_object;
        }
        return '';
    }
    public function checkAnswerIfParent($answer_crypt, $questination_crypt){
        $get_question_query = "SELECT * FROM questions WHERE form_crypt = :QUESTINNATION_CRYPT AND answer_crypt = :ANSWER_CRYPT ";
        $question_st = $this->_db->prepare($get_question_query);
        $question_st->bindParam(":QUESTINNATION_CRYPT",$questination_crypt );
        $question_st->bindParam(":ANSWER_CRYPT",$answer_crypt );
        $question_st->execute();
        return $question_st->rowCount();
    }

    public function deleteOneQuestion($form_id, $question_id){
        $delete_question_query = "DELETE FROM questions WHERE crypt = :CRYPT AND form_crypt = :FORM_CRYPT";
        $question_delete_st = $this->_db->prepare($delete_question_query);
        $question_delete_st->bindParam(":CRYPT",$question_id );
        $question_delete_st->bindParam(":FORM_CRYPT",$form_id );
        $question_delete_st->execute();
//        check if answers =====================
        $check_answers_query = " SELECT crypt FROM answers WHERE question_crypt = :QUESTION_CRYPT ";
        $answers_ct = $this->_db->prepare($check_answers_query);
        $answers_ct->bindParam(':QUESTION_CRYPT',$question_id);
        $answers_ct->execute();
        if($answers_ct->rowCount()>0){
            $answers = $answers_ct->fetchAll(PDO::FETCH_ASSOC);
            foreach($answers as $answer){
               $this->deleteOneAnswer($form_id, $answer['crypt'] );
            }
        }
    }
    public function deleteOneAnswer($form_id, $answer_id){
        $one_answer_delete_query = "DELETE FROM answers WHERE crypt = :CRYPT";
        $one_ans_del_ct = $this->_db->prepare($one_answer_delete_query);
        $one_ans_del_ct->bindParam(":CRYPT",$answer_id );
        $one_ans_del_ct->execute();
//        check if question ==============================
        $check_question_query = " SELECT crypt FROM questions WHERE answer_crypt = :ANSWER_CRYPT ";
        $quest_exist_ct = $this->_db->prepare($check_question_query);
        $quest_exist_ct->bindParam(":ANSWER_CRYPT",$answer_id );
        $quest_exist_ct->execute();
        if($quest_exist_ct->rowCount()>0){
            $quest = $quest_exist_ct->fetch(PDO::FETCH_ASSOC);
            $this->deleteOneQuestion($form_id, $quest['crypt']);
        }
    }
    public function deleteOneQuestinnation($form_crypt){
//        Questinnation delete ==================
        $form_delete_query = "DELETE FROM forms WHERE crypt = :CRYPT ";
        $form_delete_st = $this->_db->prepare($form_delete_query);
        $form_delete_st->bindParam(":CRYPT",$form_crypt);
        $form_delete_st->execute();
//        Answers delete ======================================
        $answers_delete_query = "DELETE FROM answers WHERE form_crypt = :CRYPT ";
        $answers_delete_st = $this->_db->prepare($answers_delete_query);
        $answers_delete_st->bindParam(":CRYPT",$form_crypt);
        $answers_delete_st->execute();
//        Questions delete =======================================
        $questions_delete_query = "DELETE FROM answers WHERE form_crypt = :CRYPT ";
        $questions_delete_st = $this->_db->prepare($questions_delete_query);
        $questions_delete_st->bindParam(":CRYPT",$form_crypt);
        $questions_delete_st->execute();
        return $form_crypt;
    }
    public function formProcessingEditSave($object){
        $question_edit_query = "UPDATE questions SET value = :QUESTION_NAME WHERE crypt = :QUESTION_CRYPT ";
        $question_st = $this->_db->prepare($question_edit_query);
        $question_st->bindParam(":QUESTION_NAME", $object['questionName']);
        $question_st->bindParam(":QUESTION_CRYPT",$object['questionCrypt']);
        $question_st->execute();
        $this->answersObjectEditSave($object['answersObject'], $object['questionCrypt'], $object['formCrypt']);
        return $object;
    }
    private function answersObjectEditSave($answers_edit_object, $question_crypt, $form_crypt){
        $ct = date('Y-m-d H:i:s', time());
        foreach ($answers_edit_object as $answer_key => $answer){
            $answer_exist_check_query = "SELECT id FROM answers WHERE crypt = :A_C ";
            $check_st = $this->_db->prepare($answer_exist_check_query);
            $check_st->bindParam(":A_C",$answer_key );
            $check_st->execute();
            if($check_st->rowCount()>0){
                $answer_edit_query = " UPDATE answers SET tytle = :TYTLE, value = :VAL, UT = :UT WHERE crypt = :ANSWER_CRYPT ";
                $answers_st = $this->_db->prepare($answer_edit_query);
                $answers_st->bindParam(":TYTLE",$answer['answerTytle'] );
                $answers_st->bindParam(":VAL",$answer['answerValue']);
                $answers_st->bindParam(":ANSWER_CRYPT",$answer_key);
                $answers_st->bindParam(":UT",$ct);
                $answers_st->execute();
            }else{
                $query = "INSERT INTO answers (crypt, tytle, value, question_crypt, form_crypt, element_crypt, CT, UT)
                          VALUES(:ANS_CRYPT, :ANS_TITLE, :ANS_VALUE, :QST_CRYPT, :FORM_CRYPT, :ELEMENT_CRYPT, :CT, :UT  )";
                $st = $this->_db->prepare($query);
                $st->bindParam(":ANS_CRYPT",$answer_key );
                $st->bindParam(":ANS_TITLE",$answer['answerTytle'] );
                $st->bindParam(":ANS_VALUE",$answer['answerValue'] );
                $st->bindParam(":QST_CRYPT",$question_crypt );
                $st->bindParam(":FORM_CRYPT",$form_crypt );
                $st->bindParam(":ELEMENT_CRYPT",$answer['elementCrypt'] );
                $st->bindParam(":CT",$ct );
                $st->bindParam(":UT",$ct );
                $st->execute();
            }
        }
    }
    public function simpleFormProcessingSave($simple_form_data){
         $simple_form_crypt = md5(microtime());
        $ct = date('Y-m-d H:i:s', time());
        $up = $simple_form_data['up'];
        $test_query = "SELECT MAX(form_order) AS m_o FROM simple_forms WHERE smart_form_crypt = '".$simple_form_data['formCrypt']."'";
        $test_res = $this->_db->query($test_query);
        $max_order = $test_res->fetch(PDO::FETCH_ASSOC);
        $simple_order = $max_order['m_o']+1;

//         create an new simple form ========================
        $simple_form_query = "INSERT INTO simple_forms (crypt, title, smart_form_crypt, up, form_order, CT, UT) VALUES (:CRYPT, :TITLE, :SMART_FORM, :UP, :FORM_ORDER, :CT, :UT)";
        $simple_st = $this->_db->prepare($simple_form_query);
        $simple_st->bindParam(":CRYPT", $simple_form_crypt);
        $simple_st->bindParam(":TITLE", $simple_form_data['simpleFormTitle']);
        $simple_st->bindParam(":SMART_FORM",$simple_form_data['formCrypt'] );
        $simple_st->bindParam(":UP", $up);
        $simple_st->bindParam(":FORM_ORDER", $simple_order);
        $simple_st->bindParam(":CT",$ct);
        $simple_st->bindParam(":UT",$ct);
        $simple_st->execute();
//        return var_dump($max_order);

        foreach($simple_form_data['fields'] as $field_key => $field) {
            $ct = date('Y-m-d H:i:s', time());
            $values[] = "('" . $field_key . "', '" . $simple_form_crypt . "', '" . $field['type'] . "', '" . $field['title'] . "', '" . $field['placeholder'] . "', '" . $field['value'] . "', '" . $ct . "', '" . $ct . "')";
        }
            $values_string = implode(',', $values);
            $query = "INSERT INTO simple_forms_elements (crypt, form_crypt,  type, title, placeholder, value, CT, UT) VALUES {$values_string}";
            $st = $this->_db->query($query);
            if($simple_st->errorCode()=="00000" && $st->errorCode()=="00000") {
                $simple_form_data['crypt']=$simple_form_crypt;
                $simple_form_data['form_order']=$simple_order;
                return $simple_form_data;
            }
    }
    public function getSimleFormsObject($form_crypt){
        $simples_query = "SELECT sf.crypt AS sf_crypt, sf.title AS sf_title, sf.form_order, sf.up , sfe.* FROM simple_forms sf RIGHT JOIN simple_forms_elements sfe ON sf.crypt = sfe.form_crypt 
        WHERE sf.smart_form_crypt = :SMART_FORM_CRYPT ORDER BY sf.form_order";
        $st = $this->_db->prepare($simples_query);
        $st->bindParam(":SMART_FORM_CRYPT",$form_crypt );
        $st->execute();
        $forms_elements_object = $st->fetchAll(PDO::FETCH_ASSOC);
        $res= array();
        foreach ($forms_elements_object as $element){
            $res[$element['sf_crypt']]['title'] = $element['sf_title'];
            $res[$element['sf_crypt']]['up'] = $element['up'];
            $res[$element['sf_crypt']]['form_order'] = $element['form_order'];
            $res[$element['sf_crypt']]['fields'][$element['crypt']] = array(
                'crypt' => $element['crypt'],
                'type' => $element['type'],
                'title' => $element['title'],
                'placeholder' => $element['placeholder'],
                'value' => $element['value']
            );
        }
        return $res;
    }
    public function getOneSimpleFormJsonData($simple_crypt){
        $get_simle_query =  "SELECT sf.crypt AS sf_crypt, sf.title AS sf_title, up, sfe.* FROM simple_forms sf RIGHT JOIN simple_forms_elements sfe ON sf.crypt = sfe.form_crypt 
        WHERE sf.crypt = :SIMPLE_CRYPT ";
        $st = $this->_db->prepare($get_simle_query);
        $st->bindParam(":SIMPLE_CRYPT",$simple_crypt, PDO::PARAM_STR );
        $st->execute();
        $obj = $st->fetchAll(PDO::FETCH_ASSOC);
        $res = array();
        foreach($obj as $element){
            $res['simple_array']['title'] = $element['sf_title'];
            $res['simple_array']['crypt'] = $element['sf_crypt'];
            $res['simple_array']['up'] = $element['up'];
            $res['simple_array']['elements'][$element['crypt']] = array(
                'type' => $element['type'],
                'title' => $element['title'],
                'placeholder' => $element['placeholder'],
                'value' => $element['value']
            );
        }
        return $res;
    }
    public function simpleFormProcessingEditSave($simple_form_object){
        $up = (int)$simple_form_object['up'];
        $ct = date('Y-m-d H:i:s', time());
        $update_query = "UPDATE simple_forms SET title = :TITLE, up = :UP, UT = :UT WHERE crypt = :CRYPT ";
        $st = $this->_db->prepare($update_query);
        $st->bindParam(":TITLE", $simple_form_object['simpleFormTitle']);
        $st->bindParam(":UT",$ct );
        $st->bindParam(":UP",$up );
        $st->bindParam(":CRYPT",$simple_form_object['simpleFormCrypt']);
        $st->execute();
//        elements update ==================================================
       $r = $this->simpleFormElementsUpdate($simple_form_object['fields'], $simple_form_object['simpleFormCrypt']);
       if($r > 0){
           return $simple_form_object;
       }
       return $r;
    }
    private function simpleFormElementsUpdate($elements_object, $form_crypt ){


        if(count($elements_object)>0) {
            foreach ($elements_object as $key => $element) {
                $ct = date('Y-m-d H:i:s', time());
                $query = "INSERT INTO simple_forms_elements (crypt, form_crypt,  type, title, placeholder, value, CT, UT) 
                          VALUES (:CRYPT, :SIMPLE_FORM_CRYPT, :TYPE, :TITLE, :PLACEHOLDER, :VALUE, :CT, :UT ) ON DUPLICATE KEY
                          UPDATE  
                          type = :TYPE, 
                          title = :TITLE,
                          placeholder = :PLACEHOLDER,
                          value = :VALUE,
                          UT = :UT
                          ";
                $st = $this->_db->prepare($query);
                $st->bindParam(":TYPE", $element['type']);
                $st->bindParam(":TITLE", $element['title']);
                $st->bindParam(":PLACEHOLDER", $element['placeholder']);
                $st->bindParam(":VALUE", $element['value']);
                $st->bindParam(":SIMPLE_FORM_CRYPT", $form_crypt);
                $st->bindParam(":UT", $ct);
                $st->bindParam(":CT", $ct);
                $st->bindParam(":CRYPT", $key);
                $st->execute();
            }
            return $st->rowCount();
        }
    }
    public function simpleFormElementDelete($element_crypt){
        $query = "DELETE FROM simple_forms_elements WHERE crypt = :CRYPT ";
        $st = $this->_db->prepare($query);
        $st->bindParam(":CRYPT",$element_crypt, PDO::PARAM_STR );
        $st->execute();
        return $element_crypt;
    }
    public function simpleFormDelete($simple_form_crypt){
        $query = "DELETE FROM simple_forms WHERE crypt = :CRYPT ";
        $st = $this->_db->prepare($query);
        $st->bindParam(":CRYPT",$simple_form_crypt, PDO::PARAM_STR );
        $st->execute();
//        form elements delete ===============================================================
        $query = "DELETE FROM simple_forms_elements WHERE form_crypt = :FORM_CRYPT ";
        $st = $this->_db->prepare($query);
        $st->bindParam(":FORM_CRYPT",$simple_form_crypt, PDO::PARAM_STR );
        $st->execute();
        return $simple_form_crypt;
    }
    public function simpleFormOrdersSave($orders){
        $query = "UPDATE simple_forms SET form_order = :ORD, UT = :UT WHERE crypt = :CRYPT";
        foreach ($orders as $key =>$val){
            $UT = date('Y-m-d H:i:s', time());
            $st = $this->_db->prepare($query);
            $st->bindParam(":ORD",$val );
            $st->bindParam(":UT",$UT );
            $st->bindParam(":CRYPT",$key );
            $st->execute();
        }
    }

}