<all-zones-dropdown>
    <select name="zones" onchange={setTime}>
        <option></option>
        <option each="{zone, i in zones}" value="{zone}">{zone}</option>
    </select>

    <script>

    this.on('mount', () => {
        this.zones = moment.tz.names();
        console.log(self.zones);
        this.update();
    });

    setTime(e) {
        opts.bus.trigger('new_zone_set', e.target.value);
    }
    </script>
</all-zones-dropdown>