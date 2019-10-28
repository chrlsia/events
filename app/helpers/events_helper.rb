module EventsHelper
  def format_price(event)
    if event.price ==0
      "Free"
    else
      numbet_to_currency(event.price)
    end
  end
end
