
datetime_formats = {
  :standard => "%d-%m-%Y"
}
Date::DATE_FORMATS.merge!(
  datetime_formats.merge(
    :ymd => "%Y%m%d"
  )
)
Time::DATE_FORMATS.merge!(
  datetime_formats
)