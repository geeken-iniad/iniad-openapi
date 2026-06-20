import "../models/iccard.tsp";

using TypeSpec.Http;

namespace INIAD.EduIot;

@route("/iccards")
interface ICCards {
  @summary("IC カード情報の取得")
  @doc("自分の IC カードに関する情報を取得する")
  @get
  list(): Models.ICCard[];

  @summary("IC カードの登録")
  @doc("自分の IC カード登録を追加する")
  @post
  register(
    @doc("カード ID (大文字 16 進数)")
    @example("0114A5B2C3D4E5F6")
    uid: string,

    @doc("IC カードに対するコメント")
    @example("comment")
    comment: string,
  ): Models.ICCard;

  @summary("IC カードの削除")
  @doc("自分の IC カード登録を削除する")
  @delete
  delete(): void;
}
