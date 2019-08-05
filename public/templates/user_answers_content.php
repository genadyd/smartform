<?php
/**
 * Created by PhpStorm.
 * User: Genady
 * Date: 04/08/2019
 * Time: 14:04
 */
require_once 'head.php';

?>
<ul class="nav  navbar-expand-md bg-dark navbar-dark">
    <li class="nav-item">
        <a class="nav-link active text-light"  href="/">Home</a>
    </li>
    <li class="nav-item">
        <a class="nav-link text-light"  href="/user_answers">Answers</a>
    </li>
</ul>
<?php require_once 'simple_answers_table.php'?>
<?php
require_once 'footer.php';
?>