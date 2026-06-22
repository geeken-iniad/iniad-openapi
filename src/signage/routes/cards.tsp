import "../models/card.tsp";
import "../models/common.tsp";

using TypeSpec.Http;

namespace INIAD.Signage;

@route("/signage/cards")
interface Cards {
  @summary("コンテンツ紐づけ一覧の取得")
  @doc("ログインユーザのカード IDm とサイネージで表示するコンテンツの紐づけの一覧を取得する")
  @get
  list(): Models.CardSignageLink[] | Models.CommonErrors;

  @summary("コンテンツ紐づけの取得")
  @doc("指定したカードとサイネージで表示するコンテンツの紐づけを取得する")
  @get
  get(
    @doc("カード IDm (大文字 16 進数)")
    @path
    card_id: string,
  ): Models.CardSignageLink | Models.CommonErrors;

  @summary("コンテンツ紐づけの登録・更新")
  @doc("指定したカードへのコンテンツの紐づけを登録または更新する。あらかじめ電気錠やロッカーを解錠するためのカードとして登録しておく必要がある")
  @put
  upsert(
    @doc("カード IDm (大文字 16 進数)")
    @path
    card_id: string,

    @doc("紐づける URL")
    @format("uri")
    @example("https://signage.example.com")
    url: string,

    @doc("表示秒数")
    @example(10)
    display_seconds: int32,
  ): Models.CardSignageLink | Models.CommonErrors;

  @summary("コンテンツ紐づけの解除")
  @doc("指定したカードへのコンテンツの紐づけを解除する")
  @delete
  delete(
    @doc("カード IDm (大文字 16 進数)")
    @path
    card_id: string,
  ): Models.DeleteResult | Models.CommonErrors;
}
