<led>
  <img 
    src={ this.image } 
    alt="Bulb image"
    onclick={ this.toggle }>

  <script>
    this.images = {
      on: 'images/bulb-on.jpg',
      off: 'images/bulb-off.jpg'
    }

    this.image = this.images.on

    this.toggle = function(){
      if( this.image == this.images.on ){
        this.image = this.images.off
        this.callUrl = 'http://193.167.5.183:8080/led/' + this.opts.id + '/off'
      } else {
        this.image = this.images.on
        this.callUrl = 'http://193.167.5.183:8080/led/' + this.opts.id + '/on'
      }

      $.ajax({
        url: this.callUrl
      }).done(function(data){
        console.log(data)
      })
    }
  </script>

  <style>
    :scope { 
      font-size: 0
      margin: 0
    }
  </style>
</led>
