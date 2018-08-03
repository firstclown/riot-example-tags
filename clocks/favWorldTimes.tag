<fav-world-times>
    <ul>
        <li each={opts.worldTimes}><a onclick={setTime} data-value={timezone} href="#">{title}</a></li>
    </ul>
    

    <script>

        setTime(e) {
            e.preventDefault();
            opts.bus.trigger('new_zone_set', e.target.getAttribute('data-value'));
        }
    </script>
</fav-world-times>