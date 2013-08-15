Time::DATE_FORMATS[:not_time] = "%B %e, %Y"
Time::DATE_FORMATS[:short_ordinal] = lambda { |time| time.strftime("%B #{time.day.ordinalize}") }