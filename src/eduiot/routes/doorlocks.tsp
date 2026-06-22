import "../models/common.tsp";
import "../models/doorlock.tsp";

using TypeSpec.Http;

namespace INIAD.EduIot;

@route("/doorlocks")
interface Doorlocks {
  @summary("電気錠の一覧取得")
  @doc("指定した部屋の電気錠の URL を一覧で返す")
  @route("/{room_number}")
  @get
  list(
    @doc("部屋番号")
    @path
    room_number: Models.RoomNumber,
  ): url[];

  @summary("電気錠情報の取得")
  @doc("指定した部屋の指定した番号の電気錠の読み取り値を返す")
  @route("/{room_number}/{item_number}")
  @get
  get(
    @doc("部屋番号")
    @path
    room_number: Models.RoomNumber,

    @doc("デバイス番号")
    @path
    item_number: int32,
  ): Models.Doorlock;

  @summary("電気錠の開錠・施錠")
  @doc("指定した部屋の指定した番号の電気錠を開錠・施錠する")
  @route("/{room_number}/{item_number}")
  @put
  update(
    @doc("部屋番号")
    @path
    room_number: Models.RoomNumber,

    @doc("デバイス番号")
    @path
    item_number: int32,

    @doc("ドア錠の施錠状態")
    @example(true)
    locked: boolean,
  ): Models.Doorlock;
}
