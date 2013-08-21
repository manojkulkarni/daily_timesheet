
datetime_formats = {
  :standard => "%b %d, %Y"
}
Date::DATE_FORMATS.merge!(
  datetime_formats.merge(
    :ymd => "%Y%m%d"
  )
)
Time::DATE_FORMATS.merge!(
  datetime_formats
)