import "@typespec/http";

using TypeSpec.Http;

namespace INIAD.EduIot.Models;

@doc("部屋番号 (4 桁の数字)")
@pattern("^[0-9]{4}$")
@example("3201")
scalar RoomNumber extends string;

alias ErrorFields = {
  @doc("常に `error`")
  status: "error";

  @doc("エラーの内容")
  description: string;
};

@error
@doc("リクエストが不正 (パラメータの型・桁数違反やボディの不備など)")
model BadRequestError {
  @statusCode statusCode: 400;
  ...ErrorFields;
}

@error
@doc("認証に失敗 (資格情報の欠如または誤り)")
model UnauthorizedError {
  @statusCode statusCode: 401;
  ...ErrorFields;
}

@error
@doc("対象デバイスへのアクセス権限がない")
model ForbiddenError {
  @statusCode statusCode: 403;
  ...ErrorFields;
}

@error
@doc("対象が存在しない")
model NotFoundError {
  @statusCode statusCode: 404;
  ...ErrorFields;
}

@error
@doc("レート制限、または INIAD Wi-Fi 外からのアクセス")
model ServiceUnavailableError {
  @statusCode statusCode: 503;
  ...ErrorFields;
}

alias CommonErrors = UnauthorizedError | ServiceUnavailableError;

alias RoomErrors = CommonErrors | BadRequestError | NotFoundError;

alias DeviceErrors = RoomErrors | ForbiddenError;
