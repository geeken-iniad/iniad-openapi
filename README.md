# OpenAPI Specification for INIAD API

INIAD が提供する API の非公式 OpenAPI 仕様書です。

| API                                                                                                                                          | Documents                                                                                                              | Download                                                                                         |
| -------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------ |
| [教育用 IoT API](https://sites.google.com/iniad.org/developers/%E3%83%9B%E3%83%BC%E3%83%A0/%E6%95%99%E8%82%B2%E7%94%A8-iot-api)              | [mst-mkt.github.io/iniad-openapi/#iniad-教育用-iot-api](https://mst-mkt.github.io/iniad-openapi/#iniad-教育用-iot-api) | [INIAD.EduIot.openapi.yaml](https://mst-mkt.github.io/iniad-openapi/INIAD.EduIot.openapi.yaml)   |
| [サイネージ API](https://sites.google.com/iniad.org/developers/%E3%83%9B%E3%83%BC%E3%83%A0/%E3%82%B5%E3%82%A4%E3%83%8D%E3%83%BC%E3%82%B8api) | [mst-mkt.github.io/iniad-openapi/#iniad-サイネージ-api](https://mst-mkt.github.io/iniad-openapi/#iniad-サイネージ-api) | [INIAD.Signage.openapi.yaml](https://mst-mkt.github.io/iniad-openapi/INIAD.Signage.openapi.yaml) |
| [OpenAI API](https://sites.google.com/iniad.org/developers/%E3%83%9B%E3%83%BC%E3%83%A0/openai-api)                                           | TBD                                                                                                                    |                                                                                                  |
| [Anthropic API](https://sites.google.com/iniad.org/developers/%E3%83%9B%E3%83%BC%E3%83%A0/anthropic-api)                                     | TBD                                                                                                                    |                                                                                                  |

> [!IMPORTANT]
>
> API の使用にあたっては、[INIAD 開発者サイト](https://sites.google.com/iniad.org/developers/) や MOOCs の資料をよく読み、利用条件等を遵守してください。

## Development

### Requirements

- Node.js
- pnpm
- Vite+

> [!NOTE]
>
> これらは [flake.nix](./flake.nix) で管理しているため、Nix での構築を推奨します

### Scripts

- `vpr dev`: TypeSpec の変更を監視しながら、ドキュメントページをプレビュー表示します
- `vpr build`: TypeSpec をコンパイルし、ドキュメントページをビルドします
- `vpr check`: format, lint のチェックを行います (TypeSpec, Oxfmt, Oxlint)
- `vpr fix`: format, lint の修正を行います (TypeSpec, Oxfmt, Oxlint)
