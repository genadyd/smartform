<?php
/**
 * Created by PhpStorm.
 * User: genady
 * Date: 6/25/19
 * Time: 1:23 PM
 */

class Route
{
   public function __construct()
   {
       if(strpos($_SERVER['REQUEST_URI'],'user_answers')!== false){
           require_once 'controllers/UserAnswersController.php';
           $answers = new UserAnswersController();
           $answers->indexAction();
       }else {
           require_once 'controllers/HomeController.php';
           $home = new HomeController();
           $home->indexAction();
       }
   }
}