namespace INIAD.EduIot.Models;

@doc("IC カード情報")
@example(#{ id: 1, uid: "0114A5B2C3D4E5F6", comment: "comment" })
model ICCard {
  @doc("登録 ID")
  id: int32;

  @doc("カード ID (大文字 16 進数)")
  uid: string;

  @doc("IC カードに対するコメント")
  comment: string;
}
