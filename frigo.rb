class Frigo

  attr_reader :aliments, :opened
  attr_accessor :temperature

  def initialize(temperature)
    @temperature = temperature
    @aliments = []
    @opened = false
  end

  def switch_on!
    @temperature = 0
  end

  def fill_with(aliment)
    @aliments << aliment
  end

  def open(time)
    @opened = true
    @temperature = @temperature + time * 0.5
  end

  def close
    @temperature = 5
    @opened = false
  end

  def pick(aliment)
    if @aliments.include?(aliment)
       @aliments.delete(aliment)
      puts "Bon' app'! Tu viens de choper #{aliment}"
      if @temperature > 30
        puts "ça craint, c'est tout moisi"
      elsif @temperature > 10
        puts "ça passe!"
      else
        puts "c'est super frais!"
      end
    else
      puts "Sorry, plus de #{aliment} va donc faire les courses!"
    end

    if @opened
      puts "attention, ton frigo est ouvert"
    end


  end



end

frigo = Frigo.new(25)

frigo.switch_on!

frigo.fill_with("burger")
frigo.fill_with("brocolis")
frigo.fill_with("noodles")

frigo.pick("brocolis")
frigo.pick("coca")
frigo.open(25)
frigo.pick("burger")
frigo.close
frigo.pick("noodles")

