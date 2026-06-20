import "@typespec/http";
import "@typespec/openapi";

import "./routes/cards.tsp";

using TypeSpec.Http;

@service(#{ title: "INIAD サイネージ API" })
@server("https://signage-api.iniad.org")
@useAuth(BasicAuth)
@route("/api/v1")
namespace INIAD.Signage;
