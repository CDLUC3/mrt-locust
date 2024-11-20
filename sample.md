# Run a 20 second test with locust

```bash
locust --headless -u 10 -t 20s -H https://merritt-stage.cdlib.org --only-summary -L ERROR --csv out.csv --reset-stats --json > out.json
```

## CSV Output
The CSV output has some very nice data such as 50% / 80% values for response time. 

CSV has been rendered as a markdown table.

|Type|Name|Request Count|Failure Count|Median Response Time|Average Response Time|Min Response Time|Max Response Time|Average Content Size|Requests/s|Failures/s|50%|66%|75%|80%|90%|95%|98%|99%|99.9%|99.99%|100%|
|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|
|GET|/|25|0|160.0|243.04070155987574|67.38270799996826|1511.5295830000832|9203.6|2.4925617222659793|0.0|160|180|190|210|550|580|1500|1500|1500|1500|1500|
|POST|/guest_login|3|0|4700.0|4112.441721999858|194.73216599999432|7472.716416999901|6629.0|0.2991074066719175|0.0|4700|4700|7500|7500|7500|7500|7500|7500|7500|7500|7500|
|GET|/home/choose_collection|21|0|170.0|513.6337479523804|90.90999999989435|4775.786041999709|6705.285714285715|2.0937518467034226|0.0|170|190|410|580|980|1000|4800|4800|4800|4800|4800|
|GET|/m/merritt_demo_pub|22|0|360.0|698.1933846363146|209.09362499969575|4560.251291999521|9986.0|2.1934543155940616|0.0|380|430|570|570|970|2600|4600|4600|4600|4600|4600|
|GET|/s/merritt_demo_pub?terms=apple&group=merritt_demo_pub&commit=Go|26|0|1500.0|1540.3987693076629|627.1993330001351|3847.2546670000156|5075.0|2.592264191156618|0.0|1500|1600|1700|1700|2400|2500|3800|3800|3800|3800|3800|
|GET|/state|21|0|180.0|579.942271857319|112.61641700002656|4121.409499999572|4189.761904761905|2.0937518467034226|0.0|180|330|370|850|990|2400|4100|4100|4100|4100|4100|
|GET|/state.json|19|0|19|267.26360973675344|15.736000000288186|3887.443874999917|68.0|1.8943469089221443|0.0|19|21|31|160|500|3900|3900|3900|3900|3900|3900|
||Aggregated|137|0|250.0|743.5552567153039|15.736000000288186|7472.716416999901|6070.85401459854|13.659238238017567|0.0|250|570|930|1100|1700|3800|4700|4800|7500|7500|7500|


## JSON output
The JSON ouptput is much more raw
```json
[
    {
        "name": "/",
        "method": "GET",
        "last_request_timestamp": 1732126306.220982,
        "start_time": 1732126295.552243,
        "num_requests": 26,
        "num_none_requests": 0,
        "num_failures": 0,
        "total_response_time": 6182.815913996819,
        "max_response_time": 1511.5295830000832,
        "min_response_time": 67.38270799996826,
        "total_content_length": 239403,
        "response_times": {
            "67": 1,
            "120.0": 3,
            "160.0": 3,
            "1500.0": 1,
            "180.0": 2,
            "140.0": 2,
            "200.0": 1,
            "580.0": 1,
            "190.0": 2,
            "550.0": 1,
            "130.0": 3,
            "370.0": 1,
            "150.0": 1,
            "210.0": 1,
            "110.0": 2,
            "98": 1
        },
        "num_reqs_per_sec": {
            "1732126295": 2,
            "1732126296": 6,
            "1732126297": 2,
            "1732126298": 3,
            "1732126299": 2,
            "1732126301": 2,
            "1732126302": 2,
            "1732126303": 3,
            "1732126304": 1,
            "1732126305": 2,
            "1732126306": 1
        },
        "num_fail_per_sec": {}
    },
    {
        "name": "/guest_login",
        "method": "POST",
        "last_request_timestamp": 1732126303.099863,
        "start_time": 1732126295.5522718,
        "num_requests": 3,
        "num_none_requests": 0,
        "num_failures": 0,
        "total_response_time": 12337.325165999573,
        "max_response_time": 7472.716416999901,
        "min_response_time": 194.73216599999432,
        "total_content_length": 19887,
        "response_times": {
            "190.0": 1,
            "4700.0": 1,
            "7500.0": 1
        },
        "num_reqs_per_sec": {
            "1732126296": 1,
            "1732126298": 1,
            "1732126303": 1
        },
        "num_fail_per_sec": {}
    },
    {
        "name": "/home/choose_collection",
        "method": "GET",
        "last_request_timestamp": 1732126305.746557,
        "start_time": 1732126295.552289,
        "num_requests": 23,
        "num_none_requests": 0,
        "num_failures": 0,
        "total_response_time": 11853.053664999607,
        "max_response_time": 4775.786041999709,
        "min_response_time": 90.90999999989435,
        "total_content_length": 154247,
        "response_times": {
            "120.0": 2,
            "130.0": 1,
            "160.0": 2,
            "170.0": 3,
            "150.0": 2,
            "100.0": 1,
            "980.0": 1,
            "110.0": 2,
            "91": 1,
            "580.0": 1,
            "830.0": 1,
            "1000.0": 1,
            "4800.0": 1,
            "200.0": 1,
            "190.0": 1,
            "410.0": 1,
            "940.0": 1
        },
        "num_reqs_per_sec": {
            "1732126296": 4,
            "1732126297": 2,
            "1732126298": 3,
            "1732126299": 1,
            "1732126300": 3,
            "1732126301": 2,
            "1732126302": 1,
            "1732126303": 4,
            "1732126305": 3
        },
        "num_fail_per_sec": {}
    },
    {
        "name": "/m/merritt_demo_pub",
        "method": "GET",
        "last_request_timestamp": 1732126305.997399,
        "start_time": 1732126295.552308,
        "num_requests": 24,
        "num_none_requests": 0,
        "num_failures": 0,
        "total_response_time": 15895.669502998317,
        "max_response_time": 4560.251291999521,
        "min_response_time": 209.09362499969575,
        "total_content_length": 239664,
        "response_times": {
            "290.0": 2,
            "380.0": 2,
            "400.0": 1,
            "460.0": 1,
            "320.0": 3,
            "4600.0": 1,
            "330.0": 3,
            "570.0": 2,
            "970.0": 1,
            "360.0": 1,
            "2600.0": 1,
            "210.0": 1,
            "430.0": 1,
            "650.0": 1,
            "250.0": 2,
            "280.0": 1
        },
        "num_reqs_per_sec": {
            "1732126296": 4,
            "1732126297": 2,
            "1732126298": 1,
            "1732126299": 4,
            "1732126300": 1,
            "1732126301": 2,
            "1732126302": 3,
            "1732126303": 3,
            "1732126304": 1,
            "1732126305": 3
        },
        "num_fail_per_sec": {}
    },
    {
        "name": "/state",
        "method": "GET",
        "last_request_timestamp": 1732126306.299913,
        "start_time": 1732126295.552326,
        "num_requests": 24,
        "num_none_requests": 0,
        "num_failures": 0,
        "total_response_time": 13714.09400000357,
        "max_response_time": 4121.409499999572,
        "min_response_time": 112.61641700002656,
        "total_content_length": 100567,
        "response_times": {
            "110.0": 1,
            "120.0": 5,
            "340.0": 1,
            "140.0": 1,
            "870.0": 1,
            "150.0": 2,
            "180.0": 3,
            "210.0": 1,
            "2400.0": 1,
            "330.0": 1,
            "4100.0": 1,
            "850.0": 1,
            "370.0": 1,
            "990.0": 1,
            "980.0": 1,
            "130.0": 1,
            "420.0": 1
        },
        "num_reqs_per_sec": {
            "1732126298": 2,
            "1732126299": 1,
            "1732126300": 3,
            "1732126301": 5,
            "1732126302": 3,
            "1732126303": 1,
            "1732126304": 3,
            "1732126305": 5,
            "1732126306": 1
        },
        "num_fail_per_sec": {}
    },
    {
        "name": "/state.json",
        "method": "GET",
        "last_request_timestamp": 1732126306.114023,
        "start_time": 1732126295.5523388,
        "num_requests": 23,
        "num_none_requests": 0,
        "num_failures": 0,
        "total_response_time": 6930.039042997123,
        "max_response_time": 3887.443874999917,
        "min_response_time": 15.736000000288186,
        "total_content_length": 1564,
        "response_times": {
            "160.0": 1,
            "500.0": 1,
            "16": 1,
            "18": 6,
            "20": 2,
            "17": 2,
            "19": 2,
            "24": 1,
            "31": 1,
            "240.0": 1,
            "3900.0": 1,
            "21": 1,
            "400.0": 1,
            "980.0": 1,
            "460.0": 1
        },
        "num_reqs_per_sec": {
            "1732126298": 2,
            "1732126299": 1,
            "1732126300": 2,
            "1732126301": 5,
            "1732126302": 3,
            "1732126303": 1,
            "1732126304": 3,
            "1732126305": 5,
            "1732126306": 1
        },
        "num_fail_per_sec": {}
    },
    {
        "name": "/s/merritt_demo_pub?terms=apple&group=merritt_demo_pub&commit=Go",
        "method": "GET",
        "last_request_timestamp": 1732126305.909878,
        "start_time": 1732126295.552351,
        "num_requests": 27,
        "num_none_requests": 0,
        "num_failures": 0,
        "total_response_time": 44983.9009189991,
        "max_response_time": 4933.532916999866,
        "min_response_time": 627.1993330001351,
        "total_content_length": 137025,
        "response_times": {
            "1700.0": 3,
            "2400.0": 1,
            "2100.0": 2,
            "2500.0": 1,
            "1100.0": 2,
            "1500.0": 4,
            "1600.0": 3,
            "1400.0": 2,
            "1000.0": 1,
            "930.0": 1,
            "3800.0": 1,
            "630.0": 1,
            "840.0": 1,
            "790.0": 1,
            "680.0": 1,
            "1300.0": 1,
            "4900.0": 1
        },
        "num_reqs_per_sec": {
            "1732126295": 2,
            "1732126296": 3,
            "1732126297": 2,
            "1732126298": 3,
            "1732126299": 3,
            "1732126300": 1,
            "1732126301": 4,
            "1732126302": 2,
            "1732126303": 1,
            "1732126304": 2,
            "1732126305": 4
        },
        "num_fail_per_sec": {}
    }
]
```

## Compute Percentile Values with jq
With some jq magic, we can compute percentile response time values
```bash
jq ".[] | {name: .name, resp_ms_80pct: (.response_times | (. as \$s | [([(keys[] as \$k | (\$k | tonumber))] | sort_by(.)) | .[] as \$v | range(\$s[\$v|tostring]) | \$v]) as \$vals | \$vals[(\$vals | length) * .8 -1])}" out.json
```

Output
```json
{
  "name": "/",
  "resp_ms_80pct": 190.0
}
{
  "name": "/guest_login",
  "resp_ms_80pct": 4700.0
}
{
  "name": "/home/choose_collection",
  "resp_ms_80pct": 580.0
}
{
  "name": "/m/merritt_demo_pub",
  "resp_ms_80pct": 570.0
}
{
  "name": "/state",
  "resp_ms_80pct": 850.0
}
{
  "name": "/state.json",
  "resp_ms_80pct": 240.0
}
{
  "name": "/s/merritt_demo_pub?terms=apple&group=merritt_demo_pub&commit=Go",
  "resp_ms_80pct": 1700.0
}
```

## Lets build this up...

### Get request names: `{name: .name}`
```bash
jq ".[] | {name: .name}" out.json
```

```json
{
  "name": "/"
}
{
  "name": "/guest_login"
}
{
  "name": "/home/choose_collection"
}
{
  "name": "/m/merritt_demo_pub"
}
{
  "name": "/state"
}
{
  "name": "/state.json"
}
{
  "name": "/s/merritt_demo_pub?terms=apple&group=merritt_demo_pub&commit=Go"
}
```

### Get response times and counts
```bash
jq ".[] | {name: .name, resp_times: (.response_times)}" out.json
```

```json
{
  "name": "/",
  "resp_times": {
    "67": 1,
    "120.0": 3,
    "160.0": 3,
    "1500.0": 1,
    "180.0": 2,
    "140.0": 2,
    "200.0": 1,
    "580.0": 1,
    "190.0": 2,
    "550.0": 1,
    "130.0": 3,
    "370.0": 1,
    "150.0": 1,
    "210.0": 1,
    "110.0": 2,
    "98": 1
  }
}
{
  "name": "/guest_login",
  "resp_times": {
    "190.0": 1,
    "4700.0": 1,
    "7500.0": 1
  }
}
{
  "name": "/home/choose_collection",
  "resp_times": {
    "120.0": 2,
    "130.0": 1,
    "160.0": 2,
    "170.0": 3,
    "150.0": 2,
    "100.0": 1,
    "980.0": 1,
    "110.0": 2,
    "91": 1,
    "580.0": 1,
    "830.0": 1,
    "1000.0": 1,
    "4800.0": 1,
    "200.0": 1,
    "190.0": 1,
    "410.0": 1,
    "940.0": 1
  }
}
{
  "name": "/m/merritt_demo_pub",
  "resp_times": {
    "290.0": 2,
    "380.0": 2,
    "400.0": 1,
    "460.0": 1,
    "320.0": 3,
    "4600.0": 1,
    "330.0": 3,
    "570.0": 2,
    "970.0": 1,
    "360.0": 1,
    "2600.0": 1,
    "210.0": 1,
    "430.0": 1,
    "650.0": 1,
    "250.0": 2,
    "280.0": 1
  }
}
{
  "name": "/state",
  "resp_times": {
    "110.0": 1,
    "120.0": 5,
    "340.0": 1,
    "140.0": 1,
    "870.0": 1,
    "150.0": 2,
    "180.0": 3,
    "210.0": 1,
    "2400.0": 1,
    "330.0": 1,
    "4100.0": 1,
    "850.0": 1,
    "370.0": 1,
    "990.0": 1,
    "980.0": 1,
    "130.0": 1,
    "420.0": 1
  }
}
{
  "name": "/state.json",
  "resp_times": {
    "160.0": 1,
    "500.0": 1,
    "16": 1,
    "18": 6,
    "20": 2,
    "17": 2,
    "19": 2,
    "24": 1,
    "31": 1,
    "240.0": 1,
    "3900.0": 1,
    "21": 1,
    "400.0": 1,
    "980.0": 1,
    "460.0": 1
  }
}
{
  "name": "/s/merritt_demo_pub?terms=apple&group=merritt_demo_pub&commit=Go",
  "resp_times": {
    "1700.0": 3,
    "2400.0": 1,
    "2100.0": 2,
    "2500.0": 1,
    "1100.0": 2,
    "1500.0": 4,
    "1600.0": 3,
    "1400.0": 2,
    "1000.0": 1,
    "930.0": 1,
    "3800.0": 1,
    "630.0": 1,
    "840.0": 1,
    "790.0": 1,
    "680.0": 1,
    "1300.0": 1,
    "4900.0": 1
  }
}
```

### Save response times as a variable: `(. as \$s | \$s)`
```bash
jq ".[] | {name: .name, resp_80: (.response_times | (. as \$s | \$s))}" out.json
```

Same output as above

### Identify time and count as numbers: `.[] as \$v | {time: \$v, count: \$s[\$v|tostring]}`
```bash
jq ".[] | {name: .name, resp_80: (.response_times | (. as \$s | [([(keys[] as \$k | (\$k | tonumber))] | sort_by(.)) | .[] as \$v | {time: \$v, count: \$s[\$v|tostring]}]))}" out.json
```

```json
{
  "name": "/",
  "resp_80": [
    {
      "time": 67,
      "count": 1
    },
    {
      "time": 98,
      "count": 1
    },
    {
      "time": 110.0,
      "count": 2
    },
    {
      "time": 120.0,
      "count": 3
    },
    {
      "time": 130.0,
      "count": 3
    },
    {
      "time": 140.0,
      "count": 2
    },
    {
      "time": 150.0,
      "count": 1
    },
    {
      "time": 160.0,
      "count": 3
    },
    {
      "time": 180.0,
      "count": 2
    },
    {
      "time": 190.0,
      "count": 2
    },
    {
      "time": 200.0,
      "count": 1
    },
    {
      "time": 210.0,
      "count": 1
    },
    {
      "time": 370.0,
      "count": 1
    },
    {
      "time": 550.0,
      "count": 1
    },
    {
      "time": 580.0,
      "count": 1
    },
    {
      "time": 1500.0,
      "count": 1
    }
  ]
}
{
  "name": "/guest_login",
  "resp_80": [
    {
      "time": 190.0,
      "count": 1
    },
    {
      "time": 4700.0,
      "count": 1
    },
    {
      "time": 7500.0,
      "count": 1
    }
  ]
}
{
  "name": "/home/choose_collection",
  "resp_80": [
    {
      "time": 91,
      "count": 1
    },
    {
      "time": 100.0,
      "count": 1
    },
    {
      "time": 110.0,
      "count": 2
    },
    {
      "time": 120.0,
      "count": 2
    },
    {
      "time": 130.0,
      "count": 1
    },
    {
      "time": 150.0,
      "count": 2
    },
    {
      "time": 160.0,
      "count": 2
    },
    {
      "time": 170.0,
      "count": 3
    },
    {
      "time": 190.0,
      "count": 1
    },
    {
      "time": 200.0,
      "count": 1
    },
    {
      "time": 410.0,
      "count": 1
    },
    {
      "time": 580.0,
      "count": 1
    },
    {
      "time": 830.0,
      "count": 1
    },
    {
      "time": 940.0,
      "count": 1
    },
    {
      "time": 980.0,
      "count": 1
    },
    {
      "time": 1000.0,
      "count": 1
    },
    {
      "time": 4800.0,
      "count": 1
    }
  ]
}
{
  "name": "/m/merritt_demo_pub",
  "resp_80": [
    {
      "time": 210.0,
      "count": 1
    },
    {
      "time": 250.0,
      "count": 2
    },
    {
      "time": 280.0,
      "count": 1
    },
    {
      "time": 290.0,
      "count": 2
    },
    {
      "time": 320.0,
      "count": 3
    },
    {
      "time": 330.0,
      "count": 3
    },
    {
      "time": 360.0,
      "count": 1
    },
    {
      "time": 380.0,
      "count": 2
    },
    {
      "time": 400.0,
      "count": 1
    },
    {
      "time": 430.0,
      "count": 1
    },
    {
      "time": 460.0,
      "count": 1
    },
    {
      "time": 570.0,
      "count": 2
    },
    {
      "time": 650.0,
      "count": 1
    },
    {
      "time": 970.0,
      "count": 1
    },
    {
      "time": 2600.0,
      "count": 1
    },
    {
      "time": 4600.0,
      "count": 1
    }
  ]
}
{
  "name": "/state",
  "resp_80": [
    {
      "time": 110.0,
      "count": 1
    },
    {
      "time": 120.0,
      "count": 5
    },
    {
      "time": 130.0,
      "count": 1
    },
    {
      "time": 140.0,
      "count": 1
    },
    {
      "time": 150.0,
      "count": 2
    },
    {
      "time": 180.0,
      "count": 3
    },
    {
      "time": 210.0,
      "count": 1
    },
    {
      "time": 330.0,
      "count": 1
    },
    {
      "time": 340.0,
      "count": 1
    },
    {
      "time": 370.0,
      "count": 1
    },
    {
      "time": 420.0,
      "count": 1
    },
    {
      "time": 850.0,
      "count": 1
    },
    {
      "time": 870.0,
      "count": 1
    },
    {
      "time": 980.0,
      "count": 1
    },
    {
      "time": 990.0,
      "count": 1
    },
    {
      "time": 2400.0,
      "count": 1
    },
    {
      "time": 4100.0,
      "count": 1
    }
  ]
}
{
  "name": "/state.json",
  "resp_80": [
    {
      "time": 16,
      "count": 1
    },
    {
      "time": 17,
      "count": 2
    },
    {
      "time": 18,
      "count": 6
    },
    {
      "time": 19,
      "count": 2
    },
    {
      "time": 20,
      "count": 2
    },
    {
      "time": 21,
      "count": 1
    },
    {
      "time": 24,
      "count": 1
    },
    {
      "time": 31,
      "count": 1
    },
    {
      "time": 160.0,
      "count": 1
    },
    {
      "time": 240.0,
      "count": 1
    },
    {
      "time": 400.0,
      "count": 1
    },
    {
      "time": 460.0,
      "count": 1
    },
    {
      "time": 500.0,
      "count": 1
    },
    {
      "time": 980.0,
      "count": 1
    },
    {
      "time": 3900.0,
      "count": 1
    }
  ]
}
{
  "name": "/s/merritt_demo_pub?terms=apple&group=merritt_demo_pub&commit=Go",
  "resp_80": [
    {
      "time": 630.0,
      "count": 1
    },
    {
      "time": 680.0,
      "count": 1
    },
    {
      "time": 790.0,
      "count": 1
    },
    {
      "time": 840.0,
      "count": 1
    },
    {
      "time": 930.0,
      "count": 1
    },
    {
      "time": 1000.0,
      "count": 1
    },
    {
      "time": 1100.0,
      "count": 2
    },
    {
      "time": 1300.0,
      "count": 1
    },
    {
      "time": 1400.0,
      "count": 2
    },
    {
      "time": 1500.0,
      "count": 4
    },
    {
      "time": 1600.0,
      "count": 3
    },
    {
      "time": 1700.0,
      "count": 3
    },
    {
      "time": 2100.0,
      "count": 2
    },
    {
      "time": 2400.0,
      "count": 1
    },
    {
      "time": 2500.0,
      "count": 1
    },
    {
      "time": 3800.0,
      "count": 1
    },
    {
      "time": 4900.0,
      "count": 1
    }
  ]
}
```

### Duplicate values based on the count, return an array of numbers: `.[] as \$v | range(\$s[\$v|tostring]) | \$v`
```bash
jq ".[] | {name: .name, resp_ms_80pct: (.response_times | (. as \$s | [([(keys[] as \$k | (\$k | tonumber))]) | .[] as \$v | range(\$s[\$v|tostring]) | \$v]))}" out.json
```

```json
{
  "name": "/",
  "resp_ms_80pct": [
    67,
    98,
    110.0,
    110.0,
    120.0,
    120.0,
    120.0,
    130.0,
    130.0,
    130.0,
    140.0,
    140.0,
    150.0,
    160.0,
    160.0,
    160.0,
    180.0,
    180.0,
    190.0,
    190.0,
    200.0,
    210.0,
    370.0,
    550.0,
    580.0,
    1500.0
  ]
}
{
  "name": "/guest_login",
  "resp_ms_80pct": [
    190.0,
    4700.0,
    7500.0
  ]
}
{
  "name": "/home/choose_collection",
  "resp_ms_80pct": [
    91,
    100.0,
    110.0,
    110.0,
    120.0,
    120.0,
    130.0,
    150.0,
    150.0,
    160.0,
    160.0,
    170.0,
    170.0,
    170.0,
    190.0,
    200.0,
    410.0,
    580.0,
    830.0,
    940.0,
    980.0,
    1000.0,
    4800.0
  ]
}
{
  "name": "/m/merritt_demo_pub",
  "resp_ms_80pct": [
    210.0,
    250.0,
    250.0,
    280.0,
    290.0,
    290.0,
    320.0,
    320.0,
    320.0,
    330.0,
    330.0,
    330.0,
    360.0,
    380.0,
    380.0,
    400.0,
    430.0,
    460.0,
    570.0,
    570.0,
    650.0,
    970.0,
    2600.0,
    4600.0
  ]
}
{
  "name": "/state",
  "resp_ms_80pct": [
    110.0,
    120.0,
    120.0,
    120.0,
    120.0,
    120.0,
    130.0,
    140.0,
    150.0,
    150.0,
    180.0,
    180.0,
    180.0,
    210.0,
    330.0,
    340.0,
    370.0,
    420.0,
    850.0,
    870.0,
    980.0,
    990.0,
    2400.0,
    4100.0
  ]
}
{
  "name": "/state.json",
  "resp_ms_80pct": [
    16,
    17,
    17,
    18,
    18,
    18,
    18,
    18,
    18,
    19,
    19,
    20,
    20,
    21,
    24,
    31,
    160.0,
    240.0,
    400.0,
    460.0,
    500.0,
    980.0,
    3900.0
  ]
}
{
  "name": "/s/merritt_demo_pub?terms=apple&group=merritt_demo_pub&commit=Go",
  "resp_ms_80pct": [
    630.0,
    680.0,
    790.0,
    840.0,
    930.0,
    1000.0,
    1100.0,
    1100.0,
    1300.0,
    1400.0,
    1400.0,
    1500.0,
    1500.0,
    1500.0,
    1500.0,
    1600.0,
    1600.0,
    1600.0,
    1700.0,
    1700.0,
    1700.0,
    2100.0,
    2100.0,
    2400.0,
    2500.0,
    3800.0,
    4900.0
  ]
}
```

### Ensure numeric sort of values: `sort_by(.))`
```bash
jq ".[] | {name: .name, resp_ms_80pct: (.response_times | (. as \$s | [([(keys[] as \$k | (\$k | tonumber))] | sort_by(.)) | .[] as \$v | range(\$s[\$v|tostring]) | \$v]))}" out.json
```

Same output as above

### Extract value at the 80 percentile point: `as \$vals | \$vals[(\$vals | length) * .8 -1]`

```bash
jq ".[] | {name: .name, resp_ms_80pct: (.response_times | (. as \$s | [([(keys[] as \$k | (\$k | tonumber))] | sort_by(.)) | .[] as \$v | range(\$s[\$v|tostring]) | \$v]) as \$vals | \$vals[(\$vals | length) * .8 -1])}" out.json > out80.json

cat out80.json
```

```json
{
  "name": "/",
  "resp_ms_80pct": 190.0
}
{
  "name": "/guest_login",
  "resp_ms_80pct": 4700.0
}
{
  "name": "/home/choose_collection",
  "resp_ms_80pct": 580.0
}
{
  "name": "/m/merritt_demo_pub",
  "resp_ms_80pct": 570.0
}
{
  "name": "/state",
  "resp_ms_80pct": 850.0
}
{
  "name": "/state.json",
  "resp_ms_80pct": 240.0
}
{
  "name": "/s/merritt_demo_pub?terms=apple&group=merritt_demo_pub&commit=Go",
  "resp_ms_80pct": 1700.0
}
```

## Find actions that took more than 2 seconds (based on 80 percentile response time)

```bash
jq ". | select(.resp_ms_80pct > 2000)" out80.json 
```

```json
{
  "name": "/guest_login",
  "resp_ms_80pct": 4700.0
}
```