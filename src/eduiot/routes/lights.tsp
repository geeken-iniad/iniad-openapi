import "../models/light.tsp";

using TypeSpec.Http;

namespace INIAD.EduIot;

@route("/lights")
interface Lights {
  @summary("照明の一覧取得")
  @doc("指定した部屋の照明の URL を一覧で返す")
  @route("/{room_number}")
  @get
  list(
    @doc("部屋番号")
    @path
    room_number: string,
  ): url[];

  @summary("照明情報の取得")
  @doc("指定した部屋の指定した番号の照明の読み取り値を返す")
  @route("/{room_number}/{item_number}")
  @get
  get(
    @doc("部屋番号")
    @path
    room_number: string,

    @doc("デバイス番号")
    @path
    item_number: int32,
  ): Models.Light;

  @summary("照明の変更")
  @doc("指定した部屋の指定した番号の照明を変更する")
  @route("/{room_number}/{item_number}")
  @put
  update(
    @doc("部屋番号")
    @path
    room_number: string,

    @doc("デバイス番号")
    @path
    item_number: int32,

    @doc("照明の状態。`modes` のうちいずれかの値を指定する")
    @example(Models.LightMode.full)
    mode: Models.LightMode,
  ): Models.Light;
}
