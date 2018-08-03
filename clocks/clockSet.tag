<clock-set>

    <form onsubmit={setTime}>
        Hour: <input type="number" name="newHour" ref="newHour"/>
        Minute: <input type="number" name="newMinute" ref="newMinute"/>
        <button type="submit">Set Time</button> 
    </form>

    <script>
        this.bus = opts.bus;

        setTime(e) {
            e.preventDefault();
            const newHour = this.refs.newHour.value;
            const newMinute = this.refs.newMinute.value;
            const newTime = moment();
            newTime.hours(newHour);
            newTime.minutes(newMinute);
            newTime.seconds(0);
            bus.trigger('new_date_set', newTime);
        }
    </script>
</clock-set>