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

     ob_start();
     require_once 'user_answers_content.php';
     ob_flush();
 }
}