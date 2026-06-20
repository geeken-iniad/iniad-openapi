import "@typespec/http";
import "@typespec/openapi";

using TypeSpec.Http;

@service(#{ title: "INIAD 教育用 IoT API" })
@server("https://edu-iot.iniad.org")
@route("/api/v1")
namespace INIAD;
