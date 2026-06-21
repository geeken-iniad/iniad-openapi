import "@typespec/http";
import "@typespec/openapi";

import "./routes/sensors.tsp";
import "./routes/locker.tsp";
import "./routes/iccards.tsp";
import "./routes/doorlocks.tsp";
import "./routes/lights.tsp";

using TypeSpec.Http;
using TypeSpec.OpenAPI;

@service(#{ title: "INIAD 教育用 IoT API" })
@info(#{ version: "v1" })
@server("https://api.iniad.org")
@server("https://edu-iot.iniad.org")
@useAuth(BasicAuth)
@route("/api/v1")
namespace INIAD.EduIot;
