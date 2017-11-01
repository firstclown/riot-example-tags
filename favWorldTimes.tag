<fav-world-times>
    <ul>
        <li each={opts.worldTimes}><a onclick={setTime} data-value={timezone} href="#">{title}</a></li>
    </ul>
    

    <script>
        const self = this;

        setTime(e) {
            e.preventDefault();
            opts.bus.trigger('new_date_set', moment().tz(e.target.getAttribute('data-value')).seconds(0));
        }
    </script>
</fav-world-times>