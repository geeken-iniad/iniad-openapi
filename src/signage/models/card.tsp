namespace INIAD.Signage.Models;

@doc("カードとサイネージで表示するコンテンツの紐づけ")
@example(#{
  idm: "0011223344556677",
  url: "https://signage.example.com",
  display_seconds: 20,
})
model CardSignageLink {
  @doc("カード IDm (大文字 16 進数)")
  idm: string;

  @doc("紐づけられた URL")
  @format("uri")
  url: string;

  @doc("表示秒数")
  display_seconds: int32;
}

@doc("コンテンツの紐づけ解除結果")
@example(#{ message: "ok", removed_count: 1 })
model DeleteResult {
  @doc("処理結果のメッセージ")
  message: string;

  @doc("解除された紐づけの件数")
  removed_count: int32;
}
