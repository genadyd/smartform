<div class="search_processing_wrapper container">

    <div class="search_container_body">
        <div class="by_date_search_box">
            <div class="from_date_container">
                <label for="from_date_search">from date</label>
                <input id="from_date_search" type="date" class="form-control" value="<?=date('Y-m-d')?>">
            </div>
            <div class="to_date_container">
                <label for="to_date_search">to date</label>
                <input id="to_date_search" type="date" class="form-control" value="<?=date('Y-m-d')?>">
            </div>
            <button type="button" class=" btn btn-primary search_submit">search</button>
        </div>

        <div class="by_phone_search_box">
            <div class="by_phone_search_container">
                <label for="by_phone_search">by_phone</label>
                <input id="by_phone_search" type="tel" class="form-control">
            </div>
            <button type="button" class=" btn btn-primary by_phone_search_submit">search</button>
<!--            <div class="by_phone_search_container">-->
<!--                <label for="by_phone_search">by_phone</label>-->
<!--                <input id="by_phone_search" type="tel" class="form-control">-->
<!--            </div>-->
<!--            <button type="button" class=" btn btn-primary by_phone_search_submit">search</button>-->
        </div>
        <div class="get_all_button_box">
            <button type="button" class=" btn btn-primary get_all_button">get all</button>
        </div>
    </div>
    <div class="search_container_footer">

    </div>
</div>