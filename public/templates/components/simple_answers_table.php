
    <?php foreach ($all_answers_up as $sess_key => $sess_val): ?>
        <div class="session_container" session="<?= $sess_key ?>">
            <h4><?= $sess_val['session_date'] ?></h4>
            <table class="simple_answers table table-dark table-hover">
                <thead>
                <tr>
                    <th>question</th>
                    <th>answer</th>
                </tr>
                </thead>
                <tbody>
                <?php foreach ($sess_val['answers'] as $a_key => $a_val): ?>
                    <tr type="<?= $a_val['type'] ?>">
                        <td><?= $a_val['title'] ?></td>
                        <td><?= $a_val['value'] ?></td>
                    </tr>
                <?php endforeach; ?>
                </tbody>

            </table>
            <table class="simple_answers table table-dark table-hover">
                <thead>
                <tr>
                    <th>question</th>
                    <th>answer</th>

                </tr>
                </thead>
                <tbody>
                <?php foreach ($sess_val['smart_answers'] as $smart_key => $smart_val): ?>
                    <tr>
                        <td><?= $smart_val['question'] ?></td>
                        <td><?= $smart_val['answer'] ?></td>
                    </tr>
                <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    <?php endforeach; ?>
