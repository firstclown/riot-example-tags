<digital-clock>

    <div class="time">{time}</div>
    
    <style>
    
    .time {
        font-family: 'digi';
        font-size: 76%;
        width: 250px; height: 100px;
        background: white;
        font-size: 4em;
        color: #707070;
        
        /* Centering everything */
        position: relative;
        left: 50%; top: 50%;
        margin-left: -125px; margin-top: -50px;
        
        text-align: center;
        line-height: 100px;
        
        border-top: 5px solid #E54B6B;
        background-image: linear-gradient(#f0f0f0, white);
    }
    </style>
    
    <script>
        const self = this;
    
        this.on('mount', function(){
            this.intervalTimer = setInterval(this.setDate, 1000);
            this.setDate();
        });
    
        opts.bus.on('new_date_set', function(newDate) {
            self.setDate(newDate);
            clearInterval(self.intervalTimer);
        });
    
        setDate(date) {
            if(! date) {
                date = moment();
            }
            self.time = date.format("HH:mm:ss");
            self.update();
        };
    
    
    
    </script>
    
</digital-clock>