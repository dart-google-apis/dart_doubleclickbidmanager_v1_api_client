part of doubleclickbidmanager_v1_api;

/** Request to fetch stored line items. */
class DownloadLineItemsRequest {

  /** Ids of the specified filter type used to filter line items to fetch. If omitted, all the line items will be returned. */
  core.List<core.int> filterIds;

  /** Filter type used to filter line items to fetch. */
  core.String filterType;

  /** Format in which the line items will be returned. Default to CSV. */
  core.String format;

  /** Create new DownloadLineItemsRequest from JSON data */
  DownloadLineItemsRequest.fromJson(core.Map json) {
    if (json.containsKey("filterIds")) {
      filterIds = json["filterIds"].map((filterIdsItem) => (filterIdsItem is core.String) ? core.int.parse(filterIdsItem) : filterIdsItem).toList();
    }
    if (json.containsKey("filterType")) {
      filterType = json["filterType"];
    }
    if (json.containsKey("format")) {
      format = json["format"];
    }
  }

  /** Create JSON Object for DownloadLineItemsRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (filterIds != null) {
      output["filterIds"] = filterIds.toList();
    }
    if (filterType != null) {
      output["filterType"] = filterType;
    }
    if (format != null) {
      output["format"] = format;
    }

    return output;
  }

  /** Return String representation of DownloadLineItemsRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** Download line items response. */
class DownloadLineItemsResponse {

  /** Retrieved line items in CSV format. Refer to  Entity Write File Format for more information on file format. */
  core.String lineItems;

  /** Create new DownloadLineItemsResponse from JSON data */
  DownloadLineItemsResponse.fromJson(core.Map json) {
    if (json.containsKey("lineItems")) {
      lineItems = json["lineItems"];
    }
  }

  /** Create JSON Object for DownloadLineItemsResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (lineItems != null) {
      output["lineItems"] = lineItems;
    }

    return output;
  }

  /** Return String representation of DownloadLineItemsResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** Filter used to match traffic data in your report. */
class FilterPair {

  /** Filter type. */
  core.String type;

  /** Filter value. */
  core.String value;

  /** Create new FilterPair from JSON data */
  FilterPair.fromJson(core.Map json) {
    if (json.containsKey("type")) {
      type = json["type"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for FilterPair */
  core.Map toJson() {
    var output = new core.Map();

    if (type != null) {
      output["type"] = type;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of FilterPair */
  core.String toString() => JSON.encode(this.toJson());

}

/** List queries response. */
class ListQueriesResponse {

  /** The kind, fixed to "doubleclickbidmanager#listQueriesResponse". */
  core.String kind;

  /** Retrieved queries. */
  core.List<Query> queries;

  /** Create new ListQueriesResponse from JSON data */
  ListQueriesResponse.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("queries")) {
      queries = json["queries"].map((queriesItem) => new Query.fromJson(queriesItem)).toList();
    }
  }

  /** Create JSON Object for ListQueriesResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (queries != null) {
      output["queries"] = queries.map((queriesItem) => queriesItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of ListQueriesResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** List reports response. */
class ListReportsResponse {

  /** The kind, fixed to "doubleclickbidmanager#listReportsResponse". */
  core.String kind;

  /** Retrieved reports. */
  core.List<Report> reports;

  /** Create new ListReportsResponse from JSON data */
  ListReportsResponse.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("reports")) {
      reports = json["reports"].map((reportsItem) => new Report.fromJson(reportsItem)).toList();
    }
  }

  /** Create JSON Object for ListReportsResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (reports != null) {
      output["reports"] = reports.map((reportsItem) => reportsItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of ListReportsResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** Parameters of a query or report. */
class Parameters {

  /** Filters used to match traffic data in your report. */
  core.List<FilterPair> filters;

  /** Data is grouped by the filters listed in this field. */
  core.List<core.String> groupBys;

  /** Whether to include data from Invite Media. */
  core.bool includeInviteData;

  /** Metrics to include as columns in your report. */
  core.List<core.String> metrics;

  /** Report type. */
  core.String type;

  /** Create new Parameters from JSON data */
  Parameters.fromJson(core.Map json) {
    if (json.containsKey("filters")) {
      filters = json["filters"].map((filtersItem) => new FilterPair.fromJson(filtersItem)).toList();
    }
    if (json.containsKey("groupBys")) {
      groupBys = json["groupBys"].toList();
    }
    if (json.containsKey("includeInviteData")) {
      includeInviteData = json["includeInviteData"];
    }
    if (json.containsKey("metrics")) {
      metrics = json["metrics"].toList();
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for Parameters */
  core.Map toJson() {
    var output = new core.Map();

    if (filters != null) {
      output["filters"] = filters.map((filtersItem) => filtersItem.toJson()).toList();
    }
    if (groupBys != null) {
      output["groupBys"] = groupBys.toList();
    }
    if (includeInviteData != null) {
      output["includeInviteData"] = includeInviteData;
    }
    if (metrics != null) {
      output["metrics"] = metrics.toList();
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of Parameters */
  core.String toString() => JSON.encode(this.toJson());

}

/** Represents a query. */
class Query {

  /** The kind, fixed to "doubleclickbidmanager#query". */
  core.String kind;

  /** Query metadata. */
  QueryMetadata metadata;

  /** Query parameters. */
  Parameters params;

  /** Query ID. */
  core.int queryId;

  /** The ending time for the data that is shown in the report. Note, reportDataEndTimeMs is required if metadata.dataRange is CUSTOM_DATES and ignored otherwise. */
  core.int reportDataEndTimeMs;

  /** The starting time for the data that is shown in the report. Note, reportDataStartTimeMs is required if metadata.dataRange is CUSTOM_DATES and ignored otherwise. */
  core.int reportDataStartTimeMs;

  /** Information on how often and when to run a query. */
  QuerySchedule schedule;

  /** Canonical timezone code for report data time. Defaults to America/New_York. */
  core.String timezoneCode;

  /** Create new Query from JSON data */
  Query.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("metadata")) {
      metadata = new QueryMetadata.fromJson(json["metadata"]);
    }
    if (json.containsKey("params")) {
      params = new Parameters.fromJson(json["params"]);
    }
    if (json.containsKey("queryId")) {
      queryId = (json["queryId"] is core.String) ? core.int.parse(json["queryId"]) : json["queryId"];
    }
    if (json.containsKey("reportDataEndTimeMs")) {
      reportDataEndTimeMs = (json["reportDataEndTimeMs"] is core.String) ? core.int.parse(json["reportDataEndTimeMs"]) : json["reportDataEndTimeMs"];
    }
    if (json.containsKey("reportDataStartTimeMs")) {
      reportDataStartTimeMs = (json["reportDataStartTimeMs"] is core.String) ? core.int.parse(json["reportDataStartTimeMs"]) : json["reportDataStartTimeMs"];
    }
    if (json.containsKey("schedule")) {
      schedule = new QuerySchedule.fromJson(json["schedule"]);
    }
    if (json.containsKey("timezoneCode")) {
      timezoneCode = json["timezoneCode"];
    }
  }

  /** Create JSON Object for Query */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (metadata != null) {
      output["metadata"] = metadata.toJson();
    }
    if (params != null) {
      output["params"] = params.toJson();
    }
    if (queryId != null) {
      output["queryId"] = queryId;
    }
    if (reportDataEndTimeMs != null) {
      output["reportDataEndTimeMs"] = reportDataEndTimeMs;
    }
    if (reportDataStartTimeMs != null) {
      output["reportDataStartTimeMs"] = reportDataStartTimeMs;
    }
    if (schedule != null) {
      output["schedule"] = schedule.toJson();
    }
    if (timezoneCode != null) {
      output["timezoneCode"] = timezoneCode;
    }

    return output;
  }

  /** Return String representation of Query */
  core.String toString() => JSON.encode(this.toJson());

}

/** Query metadata. */
class QueryMetadata {

  /** Range of report data. */
  core.String dataRange;

  /** Format of the generated report. */
  core.String format;

  /** The path to the location in Google Cloud Storage where the latest report is stored. */
  core.String googleCloudStoragePathForLatestReport;

  /** The path in Google Drive for the latest report. */
  core.String googleDrivePathForLatestReport;

  /** The time when the latest report started to run. */
  core.int latestReportRunTimeMs;

  /** Number of reports that have been generated for the query. */
  core.int reportCount;

  /** Whether the latest report is currently running. */
  core.bool running;

  /** Whether to send an email notification when a report is ready. Default to false. */
  core.bool sendNotification;

  /** List of email addresses which are sent email notifications when the report is finished. Separate from sendNotification. */
  core.List<core.String> shareEmailAddress;

  /** Query title. It is used to name the reports generated from this query. */
  core.String title;

  /** Create new QueryMetadata from JSON data */
  QueryMetadata.fromJson(core.Map json) {
    if (json.containsKey("dataRange")) {
      dataRange = json["dataRange"];
    }
    if (json.containsKey("format")) {
      format = json["format"];
    }
    if (json.containsKey("googleCloudStoragePathForLatestReport")) {
      googleCloudStoragePathForLatestReport = json["googleCloudStoragePathForLatestReport"];
    }
    if (json.containsKey("googleDrivePathForLatestReport")) {
      googleDrivePathForLatestReport = json["googleDrivePathForLatestReport"];
    }
    if (json.containsKey("latestReportRunTimeMs")) {
      latestReportRunTimeMs = (json["latestReportRunTimeMs"] is core.String) ? core.int.parse(json["latestReportRunTimeMs"]) : json["latestReportRunTimeMs"];
    }
    if (json.containsKey("reportCount")) {
      reportCount = json["reportCount"];
    }
    if (json.containsKey("running")) {
      running = json["running"];
    }
    if (json.containsKey("sendNotification")) {
      sendNotification = json["sendNotification"];
    }
    if (json.containsKey("shareEmailAddress")) {
      shareEmailAddress = json["shareEmailAddress"].toList();
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
  }

  /** Create JSON Object for QueryMetadata */
  core.Map toJson() {
    var output = new core.Map();

    if (dataRange != null) {
      output["dataRange"] = dataRange;
    }
    if (format != null) {
      output["format"] = format;
    }
    if (googleCloudStoragePathForLatestReport != null) {
      output["googleCloudStoragePathForLatestReport"] = googleCloudStoragePathForLatestReport;
    }
    if (googleDrivePathForLatestReport != null) {
      output["googleDrivePathForLatestReport"] = googleDrivePathForLatestReport;
    }
    if (latestReportRunTimeMs != null) {
      output["latestReportRunTimeMs"] = latestReportRunTimeMs;
    }
    if (reportCount != null) {
      output["reportCount"] = reportCount;
    }
    if (running != null) {
      output["running"] = running;
    }
    if (sendNotification != null) {
      output["sendNotification"] = sendNotification;
    }
    if (shareEmailAddress != null) {
      output["shareEmailAddress"] = shareEmailAddress.toList();
    }
    if (title != null) {
      output["title"] = title;
    }

    return output;
  }

  /** Return String representation of QueryMetadata */
  core.String toString() => JSON.encode(this.toJson());

}

/** Information on how frequently and when to run a query. */
class QuerySchedule {

  /** Datetime to periodically run the query until. */
  core.int endTimeMs;

  /** How often the query is run. */
  core.String frequency;

  /** Time of day at which a new report will be generated, represented as minutes past midnight Range is 0 to 1439. Only applies to scheduled reports. */
  core.int nextRunMinuteOfDay;

  /** Timezone in which a new report will be generated. */
  core.String nextRunTimezoneCode;

  /** Create new QuerySchedule from JSON data */
  QuerySchedule.fromJson(core.Map json) {
    if (json.containsKey("endTimeMs")) {
      endTimeMs = (json["endTimeMs"] is core.String) ? core.int.parse(json["endTimeMs"]) : json["endTimeMs"];
    }
    if (json.containsKey("frequency")) {
      frequency = json["frequency"];
    }
    if (json.containsKey("nextRunMinuteOfDay")) {
      nextRunMinuteOfDay = json["nextRunMinuteOfDay"];
    }
    if (json.containsKey("nextRunTimezoneCode")) {
      nextRunTimezoneCode = json["nextRunTimezoneCode"];
    }
  }

  /** Create JSON Object for QuerySchedule */
  core.Map toJson() {
    var output = new core.Map();

    if (endTimeMs != null) {
      output["endTimeMs"] = endTimeMs;
    }
    if (frequency != null) {
      output["frequency"] = frequency;
    }
    if (nextRunMinuteOfDay != null) {
      output["nextRunMinuteOfDay"] = nextRunMinuteOfDay;
    }
    if (nextRunTimezoneCode != null) {
      output["nextRunTimezoneCode"] = nextRunTimezoneCode;
    }

    return output;
  }

  /** Return String representation of QuerySchedule */
  core.String toString() => JSON.encode(this.toJson());

}

/** Represents a report. */
class Report {

  /** Key used to identify a report. */
  ReportKey key;

  /** Report metadata. */
  ReportMetadata metadata;

  /** Report parameters. */
  Parameters params;

  /** Create new Report from JSON data */
  Report.fromJson(core.Map json) {
    if (json.containsKey("key")) {
      key = new ReportKey.fromJson(json["key"]);
    }
    if (json.containsKey("metadata")) {
      metadata = new ReportMetadata.fromJson(json["metadata"]);
    }
    if (json.containsKey("params")) {
      params = new Parameters.fromJson(json["params"]);
    }
  }

  /** Create JSON Object for Report */
  core.Map toJson() {
    var output = new core.Map();

    if (key != null) {
      output["key"] = key.toJson();
    }
    if (metadata != null) {
      output["metadata"] = metadata.toJson();
    }
    if (params != null) {
      output["params"] = params.toJson();
    }

    return output;
  }

  /** Return String representation of Report */
  core.String toString() => JSON.encode(this.toJson());

}

/** An explanation of a report failure. */
class ReportFailure {

  /** Error code that shows why the report was not created. */
  core.String errorCode;

  /** Create new ReportFailure from JSON data */
  ReportFailure.fromJson(core.Map json) {
    if (json.containsKey("errorCode")) {
      errorCode = json["errorCode"];
    }
  }

  /** Create JSON Object for ReportFailure */
  core.Map toJson() {
    var output = new core.Map();

    if (errorCode != null) {
      output["errorCode"] = errorCode;
    }

    return output;
  }

  /** Return String representation of ReportFailure */
  core.String toString() => JSON.encode(this.toJson());

}

/** Key used to identify a report. */
class ReportKey {

  /** Query ID. */
  core.int queryId;

  /** Report ID. */
  core.int reportId;

  /** Create new ReportKey from JSON data */
  ReportKey.fromJson(core.Map json) {
    if (json.containsKey("queryId")) {
      queryId = (json["queryId"] is core.String) ? core.int.parse(json["queryId"]) : json["queryId"];
    }
    if (json.containsKey("reportId")) {
      reportId = (json["reportId"] is core.String) ? core.int.parse(json["reportId"]) : json["reportId"];
    }
  }

  /** Create JSON Object for ReportKey */
  core.Map toJson() {
    var output = new core.Map();

    if (queryId != null) {
      output["queryId"] = queryId;
    }
    if (reportId != null) {
      output["reportId"] = reportId;
    }

    return output;
  }

  /** Return String representation of ReportKey */
  core.String toString() => JSON.encode(this.toJson());

}

/** Report metadata. */
class ReportMetadata {

  /** The path to the location in Google Cloud Storage where the report is stored. */
  core.String googleCloudStoragePath;

  /** The ending time for the data that is shown in the report. */
  core.int reportDataEndTimeMs;

  /** The starting time for the data that is shown in the report. */
  core.int reportDataStartTimeMs;

  /** Report status. */
  ReportStatus status;

  /** Create new ReportMetadata from JSON data */
  ReportMetadata.fromJson(core.Map json) {
    if (json.containsKey("googleCloudStoragePath")) {
      googleCloudStoragePath = json["googleCloudStoragePath"];
    }
    if (json.containsKey("reportDataEndTimeMs")) {
      reportDataEndTimeMs = (json["reportDataEndTimeMs"] is core.String) ? core.int.parse(json["reportDataEndTimeMs"]) : json["reportDataEndTimeMs"];
    }
    if (json.containsKey("reportDataStartTimeMs")) {
      reportDataStartTimeMs = (json["reportDataStartTimeMs"] is core.String) ? core.int.parse(json["reportDataStartTimeMs"]) : json["reportDataStartTimeMs"];
    }
    if (json.containsKey("status")) {
      status = new ReportStatus.fromJson(json["status"]);
    }
  }

  /** Create JSON Object for ReportMetadata */
  core.Map toJson() {
    var output = new core.Map();

    if (googleCloudStoragePath != null) {
      output["googleCloudStoragePath"] = googleCloudStoragePath;
    }
    if (reportDataEndTimeMs != null) {
      output["reportDataEndTimeMs"] = reportDataEndTimeMs;
    }
    if (reportDataStartTimeMs != null) {
      output["reportDataStartTimeMs"] = reportDataStartTimeMs;
    }
    if (status != null) {
      output["status"] = status.toJson();
    }

    return output;
  }

  /** Return String representation of ReportMetadata */
  core.String toString() => JSON.encode(this.toJson());

}

/** Report status. */
class ReportStatus {

  /** If the report failed, this records the cause. */
  ReportFailure failure;

  /** The time when this report either completed successfully or failed. */
  core.int finishTimeMs;

  /** The file type of the report. */
  core.String format;

  /** The state of the report. */
  core.String state;

  /** Create new ReportStatus from JSON data */
  ReportStatus.fromJson(core.Map json) {
    if (json.containsKey("failure")) {
      failure = new ReportFailure.fromJson(json["failure"]);
    }
    if (json.containsKey("finishTimeMs")) {
      finishTimeMs = (json["finishTimeMs"] is core.String) ? core.int.parse(json["finishTimeMs"]) : json["finishTimeMs"];
    }
    if (json.containsKey("format")) {
      format = json["format"];
    }
    if (json.containsKey("state")) {
      state = json["state"];
    }
  }

  /** Create JSON Object for ReportStatus */
  core.Map toJson() {
    var output = new core.Map();

    if (failure != null) {
      output["failure"] = failure.toJson();
    }
    if (finishTimeMs != null) {
      output["finishTimeMs"] = finishTimeMs;
    }
    if (format != null) {
      output["format"] = format;
    }
    if (state != null) {
      output["state"] = state;
    }

    return output;
  }

  /** Return String representation of ReportStatus */
  core.String toString() => JSON.encode(this.toJson());

}

/** Represents the upload status of a row in the request. */
class RowStatus {

  /** Whether the stored entity is changed as a result of upload. */
  core.bool changed;

  /** Entity Id. */
  core.int entityId;

  /** Entity name. */
  core.String entityName;

  /** Reasons why the entity can't be uploaded. */
  core.List<core.String> errors;

  /** Whether the entity is persisted. */
  core.bool persisted;

  /** Row number. */
  core.int rowNumber;

  /** Create new RowStatus from JSON data */
  RowStatus.fromJson(core.Map json) {
    if (json.containsKey("changed")) {
      changed = json["changed"];
    }
    if (json.containsKey("entityId")) {
      entityId = (json["entityId"] is core.String) ? core.int.parse(json["entityId"]) : json["entityId"];
    }
    if (json.containsKey("entityName")) {
      entityName = json["entityName"];
    }
    if (json.containsKey("errors")) {
      errors = json["errors"].toList();
    }
    if (json.containsKey("persisted")) {
      persisted = json["persisted"];
    }
    if (json.containsKey("rowNumber")) {
      rowNumber = json["rowNumber"];
    }
  }

  /** Create JSON Object for RowStatus */
  core.Map toJson() {
    var output = new core.Map();

    if (changed != null) {
      output["changed"] = changed;
    }
    if (entityId != null) {
      output["entityId"] = entityId;
    }
    if (entityName != null) {
      output["entityName"] = entityName;
    }
    if (errors != null) {
      output["errors"] = errors.toList();
    }
    if (persisted != null) {
      output["persisted"] = persisted;
    }
    if (rowNumber != null) {
      output["rowNumber"] = rowNumber;
    }

    return output;
  }

  /** Return String representation of RowStatus */
  core.String toString() => JSON.encode(this.toJson());

}

/** Request to run a stored query to generate a report. */
class RunQueryRequest {

  /** Report data range used to generate the report. */
  core.String dataRange;

  /** The ending time for the data that is shown in the report. Note, reportDataEndTimeMs is required if dataRange is CUSTOM_DATES and ignored otherwise. */
  core.int reportDataEndTimeMs;

  /** The starting time for the data that is shown in the report. Note, reportDataStartTimeMs is required if dataRange is CUSTOM_DATES and ignored otherwise. */
  core.int reportDataStartTimeMs;

  /** Canonical timezone code for report data time. Defaults to America/New_York. */
  core.String timezoneCode;

  /** Create new RunQueryRequest from JSON data */
  RunQueryRequest.fromJson(core.Map json) {
    if (json.containsKey("dataRange")) {
      dataRange = json["dataRange"];
    }
    if (json.containsKey("reportDataEndTimeMs")) {
      reportDataEndTimeMs = (json["reportDataEndTimeMs"] is core.String) ? core.int.parse(json["reportDataEndTimeMs"]) : json["reportDataEndTimeMs"];
    }
    if (json.containsKey("reportDataStartTimeMs")) {
      reportDataStartTimeMs = (json["reportDataStartTimeMs"] is core.String) ? core.int.parse(json["reportDataStartTimeMs"]) : json["reportDataStartTimeMs"];
    }
    if (json.containsKey("timezoneCode")) {
      timezoneCode = json["timezoneCode"];
    }
  }

  /** Create JSON Object for RunQueryRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (dataRange != null) {
      output["dataRange"] = dataRange;
    }
    if (reportDataEndTimeMs != null) {
      output["reportDataEndTimeMs"] = reportDataEndTimeMs;
    }
    if (reportDataStartTimeMs != null) {
      output["reportDataStartTimeMs"] = reportDataStartTimeMs;
    }
    if (timezoneCode != null) {
      output["timezoneCode"] = timezoneCode;
    }

    return output;
  }

  /** Return String representation of RunQueryRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** Request to upload line items. */
class UploadLineItemsRequest {

  /** Set to true to get upload status without actually persisting the line items. */
  core.bool dryRun;

  /** Format the line items are in. Default to CSV. */
  core.String format;

  /** Line items in CSV to upload. Refer to  Entity Write File Format for more information on file format. */
  core.String lineItems;

  /** Create new UploadLineItemsRequest from JSON data */
  UploadLineItemsRequest.fromJson(core.Map json) {
    if (json.containsKey("dryRun")) {
      dryRun = json["dryRun"];
    }
    if (json.containsKey("format")) {
      format = json["format"];
    }
    if (json.containsKey("lineItems")) {
      lineItems = json["lineItems"];
    }
  }

  /** Create JSON Object for UploadLineItemsRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (dryRun != null) {
      output["dryRun"] = dryRun;
    }
    if (format != null) {
      output["format"] = format;
    }
    if (lineItems != null) {
      output["lineItems"] = lineItems;
    }

    return output;
  }

  /** Return String representation of UploadLineItemsRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** Upload line items response. */
class UploadLineItemsResponse {

  /** Status of upload. */
  UploadStatus uploadStatus;

  /** Create new UploadLineItemsResponse from JSON data */
  UploadLineItemsResponse.fromJson(core.Map json) {
    if (json.containsKey("uploadStatus")) {
      uploadStatus = new UploadStatus.fromJson(json["uploadStatus"]);
    }
  }

  /** Create JSON Object for UploadLineItemsResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (uploadStatus != null) {
      output["uploadStatus"] = uploadStatus.toJson();
    }

    return output;
  }

  /** Return String representation of UploadLineItemsResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** Represents the status of upload. */
class UploadStatus {

  /** Reasons why upload can't be completed. */
  core.List<core.String> errors;

  /** Per-row upload status. */
  core.List<RowStatus> rowStatus;

  /** Create new UploadStatus from JSON data */
  UploadStatus.fromJson(core.Map json) {
    if (json.containsKey("errors")) {
      errors = json["errors"].toList();
    }
    if (json.containsKey("rowStatus")) {
      rowStatus = json["rowStatus"].map((rowStatusItem) => new RowStatus.fromJson(rowStatusItem)).toList();
    }
  }

  /** Create JSON Object for UploadStatus */
  core.Map toJson() {
    var output = new core.Map();

    if (errors != null) {
      output["errors"] = errors.toList();
    }
    if (rowStatus != null) {
      output["rowStatus"] = rowStatus.map((rowStatusItem) => rowStatusItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of UploadStatus */
  core.String toString() => JSON.encode(this.toJson());

}

core.Map _mapMap(core.Map source, [core.Object convert(core.Object source) = null]) {
  assert(source != null);
  var result = new dart_collection.LinkedHashMap();
  source.forEach((core.String key, value) {
    assert(key != null);
    if(convert == null) {
      result[key] = value;
    } else {
      result[key] = convert(value);
    }
  });
  return result;
}
