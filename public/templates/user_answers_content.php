<?php
/**
 * Created by PhpStorm.
 * User: Genady
 * Date: 04/08/2019
 * Time: 14:04
 */
require_once 'head.php';

?>
    <div class="page_container">
        <ul class="nav  navbar-expand-md bg-dark navbar-dark">
            <li class="nav-item">
                <a class="nav-link active text-light" href="/">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-light" href="/user_answers">Answers</a>
            </li>
        </ul>
        <div class=" search_container">
            <?php require_once 'search_processing_panel.php' ?>
        </div>
        <div class="container sessions_list_container">
            <?php require_once 'simple_answers_table.php' ?>
        </div>
    </div>
<?php
require_once 'footer.php';
?>