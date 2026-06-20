import "@typespec/http";
import "@typespec/openapi";

import "./routes/sensors.tsp";
import "./routes/locker.tsp";
import "./routes/iccards.tsp";

using TypeSpec.Http;

@service(#{ title: "INIAD 教育用 IoT API" })
@server("https://api.iniad.org")
@server("https://edu-iot.iniad.org")
@useAuth(BasicAuth)
@route("/api/v1")
namespace INIAD.EduIot;
