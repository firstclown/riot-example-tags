<fav-world-times>
    <a each={opts.worldTimes} onclick={setTime} data-value={timezone}>{title}</a>

    <script>
        const self = this;

        setTime(e) {
            opts.bus.trigger('new_date_set', moment().tz(e.target.getAttribute('data-value')).seconds(0));
        }
    </script>
</fav-world-times>