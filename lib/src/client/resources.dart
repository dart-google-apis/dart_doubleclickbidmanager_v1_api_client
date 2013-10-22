part of doubleclickbidmanager_v1_api;

class LineitemsResource_ {

  final Client _client;

  LineitemsResource_(Client client) :
      _client = client;

  /**
   * Retrieves line items in CSV format.
   *
   * [request] - DownloadLineItemsRequest to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<DownloadLineItemsResponse> downloadlineitems(DownloadLineItemsRequest request, {core.Map optParams}) {
    var url = "lineitems/downloadlineitems";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new DownloadLineItemsResponse.fromJson(data));
  }

  /**
   * Uploads line items in CSV format.
   *
   * [request] - UploadLineItemsRequest to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<UploadLineItemsResponse> uploadlineitems(UploadLineItemsRequest request, {core.Map optParams}) {
    var url = "lineitems/uploadlineitems";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new UploadLineItemsResponse.fromJson(data));
  }
}

class QueriesResource_ {

  final Client _client;

  QueriesResource_(Client client) :
      _client = client;

  /**
   * Creates a query.
   *
   * [request] - Query to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Query> createquery(Query request, {core.Map optParams}) {
    var url = "query";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Query.fromJson(data));
  }

  /**
   * Deletes a stored query as well as the associated stored reports.
   *
   * [queryId] - Query ID to delete.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> deletequery(core.int queryId, {core.Map optParams}) {
    var url = "query/{queryId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (queryId == null) paramErrors.add("queryId is required");
    if (queryId != null) urlParams["queryId"] = queryId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Retrieves a stored query.
   *
   * [queryId] - Query ID to retrieve.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Query> getquery(core.int queryId, {core.Map optParams}) {
    var url = "query/{queryId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (queryId == null) paramErrors.add("queryId is required");
    if (queryId != null) urlParams["queryId"] = queryId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Query.fromJson(data));
  }

  /**
   * Retrieves stored queries.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ListQueriesResponse> listqueries({core.Map optParams}) {
    var url = "queries";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ListQueriesResponse.fromJson(data));
  }

  /**
   * Runs a stored query to generate a report.
   *
   * [request] - RunQueryRequest to send in this request
   *
   * [queryId] - Query ID to run.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> runquery(RunQueryRequest request, core.int queryId, {core.Map optParams}) {
    var url = "query/{queryId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (queryId == null) paramErrors.add("queryId is required");
    if (queryId != null) urlParams["queryId"] = queryId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response;
  }
}

class ReportsResource_ {

  final Client _client;

  ReportsResource_(Client client) :
      _client = client;

  /**
   * Retrieves stored reports.
   *
   * [queryId] - Query ID with which the reports are associated.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ListReportsResponse> listreports(core.int queryId, {core.Map optParams}) {
    var url = "queries/{queryId}/reports";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (queryId == null) paramErrors.add("queryId is required");
    if (queryId != null) urlParams["queryId"] = queryId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ListReportsResponse.fromJson(data));
  }
}

