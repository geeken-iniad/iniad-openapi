namespace INIAD.EduIot.Models;

@doc("照明の状態")
enum LightMode {
  @doc("全点灯")
  full,

  @doc("消灯")
  off,

  @doc("暗め")
  dim,

  @doc("調光式照明のレベル 6")
  lv6,

  @doc("調光式照明のレベル 5")
  lv5,

  @doc("調光式照明のレベル 4")
  lv4,

  @doc("調光式照明のレベル 3")
  lv3,

  @doc("調光式照明のレベル 2")
  lv2,

  @doc("調光式照明のレベル 1")
  lv1,
}

@doc("照明情報")
@example(#{
  mode: LightMode.full,
  modes: #[LightMode.full, LightMode.off],
  room_num: "3201",
  item_num: 1,
  device_type: "light",
})
model Light {
  @doc("照明の現在状態。`modes` のうちいずれかの値となる")
  mode: LightMode;

  @doc("`mode` が取り得る値の種類。照明デバイスの種類によって変化する")
  modes: LightMode[];

  @doc("設置されている部屋の番号。屋上の場合は `6000`")
  room_num: RoomNumber;

  @doc("設置されている部屋におけるデバイス番号")
  item_num: int32;

  @doc("デバイスの種類")
  device_type: "light";
}
