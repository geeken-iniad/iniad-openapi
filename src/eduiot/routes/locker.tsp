import "../models/common.tsp";
import "../models/locker.tsp";

using TypeSpec.Http;

namespace INIAD.EduIot;

@route("/locker")
interface Locker {
  @summary("ロッカー情報の取得")
  @doc("自分のロッカーに関する情報を取得する")
  @get
  get(): Models.Locker | Models.CommonErrors;

  @summary("ロッカーの開錠")
  @doc("自分のロッカーを開ける。開けたロッカーに関する情報が返る")
  @route("/open")
  @post
  open(): Models.Locker | Models.CommonErrors;
}
