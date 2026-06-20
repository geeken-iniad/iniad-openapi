namespace INIAD.EduIot.Models;

@doc("ロッカー情報")
@example(#{ name: "326605", floor: 3 })
model Locker {
  @doc("ロッカーの名前 (番号)")
  name: string;

  @doc("ロッカーのある階")
  floor: int32;
}
