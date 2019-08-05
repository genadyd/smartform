<div class="container">
    <?php foreach ($all_answers_up as $sess_key => $sess_val): ?>
    <h4><?=$sess_val['session_date']?></h4>
    <table class="table table-dark table-hover" session="<?=$sess_key?>" >
        <thead>
        <tr>
            <th>type</th>
            <th>title</th>
            <th>value</th>
        </tr>
        </thead>
        <tbody>
        <?php foreach ($sess_val['answers'] as $a_key => $a_val):  ?>
        <tr>
            <td><?=$a_val['type']?></td>
            <td><?=$a_val['title']?></td>
            <td><?=$a_val['value']?></td>
        </tr>
        <?php endforeach; ?>
        </tbody>
    </table>
    <?php endforeach; ?>
</div>