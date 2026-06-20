namespace INIAD.EduIot.Models;

@doc("センサの種類")
enum SensorType {
  @doc("温度 (℃)")
  temperature,

  @doc("湿度 (%)")
  humidity,

  @doc("照度 (lux)")
  illuminance,

  @doc("気圧 (hPa)")
  airpressure,
}

@doc("センサの計測値")
@example(#{ room_num: 1, sensor_type: SensorType.temperature, value: 30.9 })
model Sensor {
  @doc("部屋番号")
  room_num: int32;

  @doc("センサの種類")
  sensor_type: SensorType;

  @doc("計測値。センサが値を取得できない場合は `null`")
  value: float64 | null;
}
