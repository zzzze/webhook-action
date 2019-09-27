# 🚀 Webhook Action

[![GitHub Release][ico-release]][link-github-release]
[![License][ico-license]](LICENSE)

A Github Action for sending data to an endpoint.

Supports for triggering any webhook events.

<hr/>


## Usage

Sending data to trigger a github webhook event, it can trigger workflow of another repo either(seeing [documents of github](https://help.github.com/en/articles/events-that-trigger-workflows#external-events-repository_dispatch)):

```yml
- name: Webhook
  uses: zzzze/webhook-action@master
  with:
    data: "{\"event_type\":\"build\"}"
    webhook_url: ${{ secrets.WEBHOOK}}
    options: "-H \"Accept: application/vnd.github.everest-preview+json\" -H \"Authorization: token ${{ secrets.TOKEN}}\""
```

### Inputs

|  Name  |  Required  |  Default  |  Description | Example |
| --- | --- | --- | --- | --- |
|  webhook_url  |  true  |  ""  |  Endpoint URL  | "https://****" |
|  data  |  true  |  ""  |  Data to be posted  | "{\\"event_type\\":\\"build\\"}" |
|  options |  false  |  ""  |  Options  | "-a test" |
|  user  |  false  |  ""  |  The user name and password to use for server authentication  | "user:password" |

## Issues

If you find any issues or have an improvement feel free to [submit an issue](https://github.com/zzzze/webhook-action/issues/new)

## License

The MIT License (MIT). Please see [License File](LICENSE) for more information.

[ico-release]: https://img.shields.io/github/tag/zzzze/webhook-action.svg
[ico-license]: https://img.shields.io/badge/license-MIT-brightgreen.svg
[link-github-release]: https://github.com/zzzze/webhook-action/releases
