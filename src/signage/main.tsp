import "@typespec/http";
import "@typespec/openapi";

import "./routes/cards.tsp";

using TypeSpec.Http;
using TypeSpec.OpenAPI;

@service(#{ title: "INIAD サイネージ API" })
@info(#{ version: "v1" })
@server("https://signage-api.iniad.org")
@useAuth(BasicAuth)
@route("/api/v1")
namespace INIAD.Signage;
