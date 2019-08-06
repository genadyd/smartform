<?php
/**
 * Created by PhpStorm.
 * User: Genady
 * Date: 04/08/2019
 * Time: 14:15
 */

class UserAnswersController
{
    private $model ;
    public function __construct()
    {
        require_once 'AnswersModel.php';
        $this->model = new AnswersModel();
    }

    public function indexAction(){
     $all_answers_up = $this->model->getAllUserAnswers(); /*get simple forms UP = 1*/
        $smart_ansvers = $this->model->getSmartFormAnswers();
        foreach ($smart_ansvers as $key => $val){
            $all_answers_up[$key]['smart_answers'] = $val['answers'];
        }

     ob_start();
     require_once 'user_answers_content.php';
     ob_flush();
 }
}