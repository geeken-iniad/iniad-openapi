import "../models/common.tsp";
import "../models/sensor.tsp";

using TypeSpec.Http;

namespace INIAD.EduIot;

@route("/sensors")
interface Sensors {
  @summary("センサ情報の取得")
  @doc("指定した部屋のセンサ情報を取得する")
  @get
  get(
    @doc("部屋番号")
    @path
    room_number: Models.RoomNumber,
  ): Models.Sensor[] | Models.RoomErrors;
}
