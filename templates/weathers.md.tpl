{{ with $todayWeather := index .Weathers 0 }}

`{{ $todayWeather.City }}, {{$todayWeather.Country }} - {{ formatDate $todayWeather.StartTime $todayWeather.Timezone }}`

<img src="{{ $todayWeather.Icon}}" />

{{ $todayWeather.Condition }}

{{template "hourly-table" $todayWeather.HourlyWeathers}}

{{- end }}

<div align="right">

    *Updated at: {{formatTime .UpdatedAt}} - by **[ePlus-DEV/weather-forecast](https://github.com/ePlus-DEV/weather-forecast)***

</div>