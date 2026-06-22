namespace INIAD.EduIot.Models;

@doc("電気錠情報")
@example(#{
  open: false,
  locked: true,
  room_num: "3201",
  item_num: 1,
  device_type: "doorlock",
})
model Doorlock {
  @doc("ドアの開閉状態")
  open: boolean;

  @doc("ドア錠の施錠状態")
  locked: boolean;

  @doc("設置されている部屋の番号")
  room_num: RoomNumber;

  @doc("設置されている部屋におけるデバイス番号")
  item_num: int32;

  @doc("デバイスの種類")
  device_type: "doorlock";
}
