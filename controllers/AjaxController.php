<?php
/**
 * Created by PhpStorm.
 * User: genady
 * Date: 6/25/19
 * Time: 1:32 PM
 */

class AjaxController
{
    public function __construct()
    {
        require_once 'FormsModel.php';
        $this->forms_model = new FormsModel();
    }

    public function indexAction()
    {
        $get_data = json_decode($_POST['objectToSend'], true);
        if (isset($get_data['func']) && $get_data['func'] != '' && method_exists($this, $get_data['func'])) {
            $func_name = $get_data['func'];
            $get_data['func'] = NULL;
            $this->$func_name($get_data);
        }
    }

    private function newQuestinnationSave($get_data)
    {
        echo json_encode($this->forms_model->saveQuestinnation($get_data['newQuestName']));
    }

    private function editQuestinnationSave($get_data)
    {
        echo json_encode($this->forms_model->editQuestinnation($get_data['newQuestName'], $get_data['questCrypt']));
    }

    private function formProcessingSave($get_data)
    {
        $new_question_properties = $this->forms_model->formProcessingSave($get_data);
        $is_parent = $this->forms_model->checkAnswerIfParent($get_data['answerCrypt'], $get_data['formCrypt']);
        ob_start();
        require_once 'question_answer_box.php';
        ob_end_flush();
    }

    private function addAnswerToProcessingTable($get_data)
    {
        echo $this->forms_model->addAnswerToProcessingTable($get_data['elementCrypt']);
    }

    private function getOneQuestion($get_data)
    {
        $questination_crypt = $get_data['questinnationCrypt'];
        $answer_crypt = $get_data['parentAnswerCrypt'];
        $new_question_properties = $this->forms_model->getOneQuestion($questination_crypt, $answer_crypt);
        if (is_array($new_question_properties)) {
//            $is_parent = $this->forms_model->checkAnswerIfParent($get_data['parentAnswerCrypt'],$get_data['questinnationCrypt']);
            ob_start();
            require_once 'question_answer_box.php';
            ob_end_flush();
        }
    }

    private function deleteOneQuestion($get_data)
    {
        $form_id = $get_data['questinnationCrypt'];
        $question_id = $get_data['questCrypt'];
        $this->forms_model->deleteOneQuestion($form_id, $question_id);
    }

    private function deleteOneQuestinnation($get_data)
    {
        echo $this->forms_model->deleteOneQuestinnation($get_data['questinnationCrypt']);
    }

    private function questionEditorEnable($get_data)
    {
        echo json_encode($this->forms_model->getOneQuestion($get_data['questinnationCrypt'], $get_data['parentAnswerCrypt']));
    }
    private function formProcessingEditSave($get_data){
        echo json_encode($this->forms_model->formProcessingEditSave($get_data));
    }
    private function oneAnswerDelete($get_data){
       $this->forms_model->deleteOneAnswer($get_data['questinnationCrypt'], $get_data['answerCrypt']);
        echo $get_data['answerCrypt'];
    }
    private function addSimpleFormRow($get_data){
        $crypt = md5(microtime());
        ob_start();
        require_once 'simple_form_row.php';
        ob_end_flush();
    }
    private function simpleFormProcessingSave($simple_form_data){
//        return var_dump($simple_form_data);
          $form_object = $this->forms_model->simpleFormProcessingSave($simple_form_data['simpleFormObject']);
        ob_start();
        require_once 'one_simple_form_container.php';
        ob_end_flush();
    }
    private function getSimleFormsObject($data){
        $questinnation_crypt = $data['questinnationCrypt'];
        $simple_forms_html = $this->forms_model->getSimleFormsObject($questinnation_crypt);
        foreach($simple_forms_html as $key => $s_form){
            $form_object['simpleFormTitle'] = $s_form['title'];
            $form_object['crypt'] = $key;
            $form_object['fields'] = $s_form['fields'];
            $form_object['up'] = $s_form['up'];
            $form_object['form_order'] = $s_form['form_order'];

            ob_start();
            require 'one_simple_form_container.php';
           $html = ob_get_clean();
           echo $html;
        };
    }
    private function getOneSimpleFormJsonData($data){
       $simple_crypt = $data['simpleCrypt'] ;
       $simple_object = $this->forms_model->getOneSimpleFormJsonData($simple_crypt);
       echo json_encode($simple_object);
    }
    private function simpleFormProcessingEditSave($form_data){
        $res = $this->forms_model->simpleFormProcessingEditSave($form_data['simpleFormObject']);
        echo json_encode($res);
    }
    private function simpleFormElementDelete($data){
        $res = $this->forms_model->simpleFormElementDelete($data['simpleElementCrypt']);
        echo json_encode($res);
    }
    private function simpleFormDelete($data){
        $res = $this->forms_model->simpleFormDelete($data['simpleFormCrypt']);
        echo json_encode($res);
    }
    private function simpleFormOrdersSave($data){
        $this->forms_model->simpleFormOrdersSave($data['ordersObject']);
    }


}