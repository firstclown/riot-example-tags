<clock-set>

    <form onsubmit={setTime}>
        Hour: <input type="number" name="newHour"/>
        Minute: <input type="number" name="newMinute"/>
        <button type="submit">Set Time</button> 
    </form>

    <script>
        this.bus = opts.bus;

        setTime(e) {
            e.preventDefault();
            const newHour = document.querySelector('input[name=newHour]').value;
            const newMinute = document.querySelector('input[name=newMinute]').value;
            const newTime = moment();
            newTime.hours(newHour);
            newTime.minutes(newMinute);
            newTime.seconds(0);
            bus.trigger('new_date_set', newTime);
        }
    </script>
</clock-set>