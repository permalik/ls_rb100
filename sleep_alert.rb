# frozen_string_literal: true

def sleep_alert
  status = %w[awake tired].sample
  alert_message = if status == 'awake'
                    'Be productive!'
                  else
                    'Go to sleep!'
                  end
  puts alert_message
end

sleep_alert
