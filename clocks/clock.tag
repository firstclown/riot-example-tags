<clock>
  
  <div class="clock">
    <div class="clock-face">
      <div class="hand hour-hand" ref="hour-hand"></div>
      <div class="hand min-hand" ref="min-hand"></div>
      <div class="hand second-hand" ref="second-hand"></div>
    </div>
  </div>


<style>
  .clock {
    width: 20rem;
    height: 20rem;
    border:20px solid white;
    border-radius:50%;
    margin:50px auto;
    position: relative;
    padding:2rem;
    box-shadow:
      0 0 0 4px rgba(0,0,0,0.1),
      inset 0 0 0 3px #EFEFEF,
      inset 0 0 10px black,
      0 0 10px rgba(0,0,0,0.2);
  }
  .clock-face {
    position: relative;
    width: 100%;
    height: 100%;
    transform: translateY(-3px); /* account for the height of the clock hands */
  }
  .hand {
    width:50%;
    height:6px;
    background:black;
    position: absolute;
    top:50%;
    left:50%;
    transform-origin: 0;
    transform: rotate(-90deg);
    transition: all 0.05s;
  }
  .hour-hand {
      width:30%;
  }
  .min-hand {
      width:45%;
  }
  .second-hand {
      height:3px;
  }
</style>

<script>
    this.timezone = null;

    this.on('mount', () => {
        this.intervalTimer = setInterval(this.setDate, 1000);
        this.setDate();
    });

    opts.bus.on('new_zone_set', (newZone) => {
        this.timezone = newZone;
    });

    setDate(date) {
        const secondHand = this.refs['second-hand'];
        const minsHand = this.refs['min-hand'];
        const hourHand = this.refs['hour-hand'];
        if(! date) {
            date = moment();
        }
        if(this.timezone !== null) {
            date.tz(this.timezone);
        }
        const seconds = date.seconds();
        const secondsDegrees = ((seconds / 60) * 360) - 90;
        secondHand.style.transform = `rotate(${secondsDegrees}deg)`;
        const mins = date.minutes();
        const minsDegrees = ((mins / 60) * 360) + ((seconds / 60) * 6) - 90;
        minsHand.style.transform = `rotate(${minsDegrees}deg)`;
        const hour = date.hours();
        const hourDegrees = ((hour / 12) * 360) + ((mins / 60) * 30) - 90;
        hourHand.style.transform = `rotate(${hourDegrees}deg)`;
    };



</script>

</clock>