# google_doubleclickbidmanager_v1_api

### Description

Auto-generated client library for accessing the doubleclickbidmanager v1 API.

#### ![Logo](http://www.google.com/images/icons/product/search-16.gif) DoubleClick Bid Manager API - doubleclickbidmanager v1

API for viewing and managing your reports in DoubleClick Bid Manager.

Official API documentation: https://developers.google.com/bid-manager/

Adding dependency to pubspec.yaml

```
  dependencies:
    google_doubleclickbidmanager_v1_api: '>=0.4.4'
```

For web applications:

```
  import "package:google_doubleclickbidmanager_v1_api/doubleclickbidmanager_v1_api_browser.dart" as doubleclickbidmanagerclient;
```

For console application:

```
  import "package:google_doubleclickbidmanager_v1_api/doubleclickbidmanager_v1_api_console.dart" as doubleclickbidmanagerclient;
```

Working without authentication the following constructor can be called:

```
  var doubleclickbidmanager = new doubleclickbidmanagerclient.Doubleclickbidmanager();
```

To use authentication create a new `GoogleOAuth2` object and pass it to the constructor:


```
  GoogleOAuth2 auth = new GoogleOAuth2(CLIENT_ID, SCOPES);
  var doubleclickbidmanager = new doubleclickbidmanagerclient.Doubleclickbidmanager(auth);
```

### Licenses

```
Copyright (c) 2013-2014 Gerwin Sturm & Adam Singer

Licensed under the Apache License, Version 2.0 (the "License"); you may 
not use this file except in compliance with the License. You may obtain a 
copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
License for the specific language governing permissions and limitations 
under the License

------------------------
Based on http://code.google.com/p/google-api-dart-client

Copyright 2012 Google Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may 
not use this file except in compliance with the License. You may obtain a
copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
License for the specific language governing permissions and limitations 
under the License

```
