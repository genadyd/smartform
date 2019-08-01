<?php
/**
 * Created by PhpStorm.
 * User: genady
 * Date: 6/25/19
 * Time: 3:15 PM
 */
?>
<ul class="nav  navbar-expand-md bg-dark navbar-dark">
    <li class="nav-item">
        <a class="nav-link active text-light" data-toggle="pill" href="#home">Home</a>
    </li>
</ul>
<div class="container-fluid">
    <div class="tab-content">
        <div class="tab-pane container-fluid active" id="home">
            <div class="row page_container">
                <?php require_once 'left_panel.php'?>
                <div class="rigt_panel col-sm-9">
                    <div class="new_questinary_form container">
                        <div class="form-group">
                            <label for="exampleInputEmail1">שם השאלון</label>
                            <input type="text" class="form-control" id="questinary_name" name="questinary_name" aria-describedby="emailHelp"
                                   placeholder="שם השאלון">
                        </div>
                        <button type="submit" class="btn btn-primary">שמור</button>
                    </div>
                    <?php require_once 'processing_pop.php' ?>
                    <?php require_once 'simple_form_processing_pop.php' ?>
                    <?php require_once 'form_processing_container.php'?>
                </div>
            </div>
        </div>
    </div>
</div>

