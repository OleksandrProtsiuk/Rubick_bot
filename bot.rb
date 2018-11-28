require 'telegram/bot'

TOKEN = '760983628:AAHqK5HTBc-nqVYGBIxzsFUWGUCQrY4NeZY'

Telegram::Bot::Client.run(TOKEN) do |bot|
  bot.listen do |message|
    case message.text
    when '/start', 'start'
      bot.api.send_message(
          chat_id: message.chat.id,
          text: "Пирювэд, #{message.from.first_name}.\n" + "Спрашивай, дарагой..."
      )
    else
      sleep 1
      bot.api.send_message(
          chat_id: message.chat.id,
          text: 'Да что ты гаваришь такоэ??..')
      end
    end
  end
