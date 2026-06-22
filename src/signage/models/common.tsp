import "@typespec/http";

using TypeSpec.Http;

namespace INIAD.Signage.Models;

@error
@doc("認証に失敗 (資格情報の欠如または誤り)")
model UnauthorizedError {
  @statusCode statusCode: 401;

  @doc("エラーの内容")
  error: string;
}

alias CommonErrors = UnauthorizedError;
