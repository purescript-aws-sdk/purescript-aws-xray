## Module AWS.XRay.Types

#### `options`

``` purescript
options :: Options
```

#### `Alias`

``` purescript
newtype Alias
  = Alias { "Name" :: NullOrUndefined (String), "Names" :: NullOrUndefined (AliasNames), "Type" :: NullOrUndefined (String) }
```

<p>An alias for an edge.</p>

##### Instances
``` purescript
Newtype Alias _
Generic Alias _
Show Alias
Decode Alias
Encode Alias
```

#### `newAlias`

``` purescript
newAlias :: Alias
```

Constructs Alias from required parameters

#### `newAlias'`

``` purescript
newAlias' :: ({ "Name" :: NullOrUndefined (String), "Names" :: NullOrUndefined (AliasNames), "Type" :: NullOrUndefined (String) } -> { "Name" :: NullOrUndefined (String), "Names" :: NullOrUndefined (AliasNames), "Type" :: NullOrUndefined (String) }) -> Alias
```

Constructs Alias's fields from required parameters

#### `AliasList`

``` purescript
newtype AliasList
  = AliasList (Array Alias)
```

##### Instances
``` purescript
Newtype AliasList _
Generic AliasList _
Show AliasList
Decode AliasList
Encode AliasList
```

#### `AliasNames`

``` purescript
newtype AliasNames
  = AliasNames (Array String)
```

##### Instances
``` purescript
Newtype AliasNames _
Generic AliasNames _
Show AliasNames
Decode AliasNames
Encode AliasNames
```

#### `AnnotationKey`

``` purescript
newtype AnnotationKey
  = AnnotationKey String
```

##### Instances
``` purescript
Newtype AnnotationKey _
Generic AnnotationKey _
Show AnnotationKey
Decode AnnotationKey
Encode AnnotationKey
```

#### `AnnotationValue`

``` purescript
newtype AnnotationValue
  = AnnotationValue { "NumberValue" :: NullOrUndefined (NullableDouble), "BooleanValue" :: NullOrUndefined (NullableBoolean), "StringValue" :: NullOrUndefined (String) }
```

<p>Value of a segment annotation. Has one of three value types: Number, Boolean or String.</p>

##### Instances
``` purescript
Newtype AnnotationValue _
Generic AnnotationValue _
Show AnnotationValue
Decode AnnotationValue
Encode AnnotationValue
```

#### `newAnnotationValue`

``` purescript
newAnnotationValue :: AnnotationValue
```

Constructs AnnotationValue from required parameters

#### `newAnnotationValue'`

``` purescript
newAnnotationValue' :: ({ "NumberValue" :: NullOrUndefined (NullableDouble), "BooleanValue" :: NullOrUndefined (NullableBoolean), "StringValue" :: NullOrUndefined (String) } -> { "NumberValue" :: NullOrUndefined (NullableDouble), "BooleanValue" :: NullOrUndefined (NullableBoolean), "StringValue" :: NullOrUndefined (String) }) -> AnnotationValue
```

Constructs AnnotationValue's fields from required parameters

#### `Annotations`

``` purescript
newtype Annotations
  = Annotations (StrMap ValuesWithServiceIds)
```

##### Instances
``` purescript
Newtype Annotations _
Generic Annotations _
Show Annotations
Decode Annotations
Encode Annotations
```

#### `BackendConnectionErrors`

``` purescript
newtype BackendConnectionErrors
  = BackendConnectionErrors { "TimeoutCount" :: NullOrUndefined (NullableInteger), "ConnectionRefusedCount" :: NullOrUndefined (NullableInteger), "HTTPCode4XXCount" :: NullOrUndefined (NullableInteger), "HTTPCode5XXCount" :: NullOrUndefined (NullableInteger), "UnknownHostCount" :: NullOrUndefined (NullableInteger), "OtherCount" :: NullOrUndefined (NullableInteger) }
```

<p/>

##### Instances
``` purescript
Newtype BackendConnectionErrors _
Generic BackendConnectionErrors _
Show BackendConnectionErrors
Decode BackendConnectionErrors
Encode BackendConnectionErrors
```

#### `newBackendConnectionErrors`

``` purescript
newBackendConnectionErrors :: BackendConnectionErrors
```

Constructs BackendConnectionErrors from required parameters

#### `newBackendConnectionErrors'`

``` purescript
newBackendConnectionErrors' :: ({ "TimeoutCount" :: NullOrUndefined (NullableInteger), "ConnectionRefusedCount" :: NullOrUndefined (NullableInteger), "HTTPCode4XXCount" :: NullOrUndefined (NullableInteger), "HTTPCode5XXCount" :: NullOrUndefined (NullableInteger), "UnknownHostCount" :: NullOrUndefined (NullableInteger), "OtherCount" :: NullOrUndefined (NullableInteger) } -> { "TimeoutCount" :: NullOrUndefined (NullableInteger), "ConnectionRefusedCount" :: NullOrUndefined (NullableInteger), "HTTPCode4XXCount" :: NullOrUndefined (NullableInteger), "HTTPCode5XXCount" :: NullOrUndefined (NullableInteger), "UnknownHostCount" :: NullOrUndefined (NullableInteger), "OtherCount" :: NullOrUndefined (NullableInteger) }) -> BackendConnectionErrors
```

Constructs BackendConnectionErrors's fields from required parameters

#### `BatchGetTracesRequest`

``` purescript
newtype BatchGetTracesRequest
  = BatchGetTracesRequest { "TraceIds" :: TraceIdList, "NextToken" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype BatchGetTracesRequest _
Generic BatchGetTracesRequest _
Show BatchGetTracesRequest
Decode BatchGetTracesRequest
Encode BatchGetTracesRequest
```

#### `newBatchGetTracesRequest`

``` purescript
newBatchGetTracesRequest :: TraceIdList -> BatchGetTracesRequest
```

Constructs BatchGetTracesRequest from required parameters

#### `newBatchGetTracesRequest'`

``` purescript
newBatchGetTracesRequest' :: TraceIdList -> ({ "TraceIds" :: TraceIdList, "NextToken" :: NullOrUndefined (String) } -> { "TraceIds" :: TraceIdList, "NextToken" :: NullOrUndefined (String) }) -> BatchGetTracesRequest
```

Constructs BatchGetTracesRequest's fields from required parameters

#### `BatchGetTracesResult`

``` purescript
newtype BatchGetTracesResult
  = BatchGetTracesResult { "Traces" :: NullOrUndefined (TraceList), "UnprocessedTraceIds" :: NullOrUndefined (UnprocessedTraceIdList), "NextToken" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype BatchGetTracesResult _
Generic BatchGetTracesResult _
Show BatchGetTracesResult
Decode BatchGetTracesResult
Encode BatchGetTracesResult
```

#### `newBatchGetTracesResult`

``` purescript
newBatchGetTracesResult :: BatchGetTracesResult
```

Constructs BatchGetTracesResult from required parameters

#### `newBatchGetTracesResult'`

``` purescript
newBatchGetTracesResult' :: ({ "Traces" :: NullOrUndefined (TraceList), "UnprocessedTraceIds" :: NullOrUndefined (UnprocessedTraceIdList), "NextToken" :: NullOrUndefined (String) } -> { "Traces" :: NullOrUndefined (TraceList), "UnprocessedTraceIds" :: NullOrUndefined (UnprocessedTraceIdList), "NextToken" :: NullOrUndefined (String) }) -> BatchGetTracesResult
```

Constructs BatchGetTracesResult's fields from required parameters

#### `EC2InstanceId`

``` purescript
newtype EC2InstanceId
  = EC2InstanceId String
```

##### Instances
``` purescript
Newtype EC2InstanceId _
Generic EC2InstanceId _
Show EC2InstanceId
Decode EC2InstanceId
Encode EC2InstanceId
```

#### `Edge`

``` purescript
newtype Edge
  = Edge { "ReferenceId" :: NullOrUndefined (NullableInteger), "StartTime" :: NullOrUndefined (Timestamp), "EndTime" :: NullOrUndefined (Timestamp), "SummaryStatistics" :: NullOrUndefined (EdgeStatistics), "ResponseTimeHistogram" :: NullOrUndefined (Histogram), "Aliases" :: NullOrUndefined (AliasList) }
```

<p>Information about a connection between two services.</p>

##### Instances
``` purescript
Newtype Edge _
Generic Edge _
Show Edge
Decode Edge
Encode Edge
```

#### `newEdge`

``` purescript
newEdge :: Edge
```

Constructs Edge from required parameters

#### `newEdge'`

``` purescript
newEdge' :: ({ "ReferenceId" :: NullOrUndefined (NullableInteger), "StartTime" :: NullOrUndefined (Timestamp), "EndTime" :: NullOrUndefined (Timestamp), "SummaryStatistics" :: NullOrUndefined (EdgeStatistics), "ResponseTimeHistogram" :: NullOrUndefined (Histogram), "Aliases" :: NullOrUndefined (AliasList) } -> { "ReferenceId" :: NullOrUndefined (NullableInteger), "StartTime" :: NullOrUndefined (Timestamp), "EndTime" :: NullOrUndefined (Timestamp), "SummaryStatistics" :: NullOrUndefined (EdgeStatistics), "ResponseTimeHistogram" :: NullOrUndefined (Histogram), "Aliases" :: NullOrUndefined (AliasList) }) -> Edge
```

Constructs Edge's fields from required parameters

#### `EdgeList`

``` purescript
newtype EdgeList
  = EdgeList (Array Edge)
```

##### Instances
``` purescript
Newtype EdgeList _
Generic EdgeList _
Show EdgeList
Decode EdgeList
Encode EdgeList
```

#### `EdgeStatistics`

``` purescript
newtype EdgeStatistics
  = EdgeStatistics { "OkCount" :: NullOrUndefined (NullableLong), "ErrorStatistics" :: NullOrUndefined (ErrorStatistics), "FaultStatistics" :: NullOrUndefined (FaultStatistics), "TotalCount" :: NullOrUndefined (NullableLong), "TotalResponseTime" :: NullOrUndefined (NullableDouble) }
```

<p>Response statistics for an edge.</p>

##### Instances
``` purescript
Newtype EdgeStatistics _
Generic EdgeStatistics _
Show EdgeStatistics
Decode EdgeStatistics
Encode EdgeStatistics
```

#### `newEdgeStatistics`

``` purescript
newEdgeStatistics :: EdgeStatistics
```

Constructs EdgeStatistics from required parameters

#### `newEdgeStatistics'`

``` purescript
newEdgeStatistics' :: ({ "OkCount" :: NullOrUndefined (NullableLong), "ErrorStatistics" :: NullOrUndefined (ErrorStatistics), "FaultStatistics" :: NullOrUndefined (FaultStatistics), "TotalCount" :: NullOrUndefined (NullableLong), "TotalResponseTime" :: NullOrUndefined (NullableDouble) } -> { "OkCount" :: NullOrUndefined (NullableLong), "ErrorStatistics" :: NullOrUndefined (ErrorStatistics), "FaultStatistics" :: NullOrUndefined (FaultStatistics), "TotalCount" :: NullOrUndefined (NullableLong), "TotalResponseTime" :: NullOrUndefined (NullableDouble) }) -> EdgeStatistics
```

Constructs EdgeStatistics's fields from required parameters

#### `ErrorMessage`

``` purescript
newtype ErrorMessage
  = ErrorMessage String
```

##### Instances
``` purescript
Newtype ErrorMessage _
Generic ErrorMessage _
Show ErrorMessage
Decode ErrorMessage
Encode ErrorMessage
```

#### `ErrorStatistics`

``` purescript
newtype ErrorStatistics
  = ErrorStatistics { "ThrottleCount" :: NullOrUndefined (NullableLong), "OtherCount" :: NullOrUndefined (NullableLong), "TotalCount" :: NullOrUndefined (NullableLong) }
```

<p>Information about requests that failed with a 4xx Client Error status code.</p>

##### Instances
``` purescript
Newtype ErrorStatistics _
Generic ErrorStatistics _
Show ErrorStatistics
Decode ErrorStatistics
Encode ErrorStatistics
```

#### `newErrorStatistics`

``` purescript
newErrorStatistics :: ErrorStatistics
```

Constructs ErrorStatistics from required parameters

#### `newErrorStatistics'`

``` purescript
newErrorStatistics' :: ({ "ThrottleCount" :: NullOrUndefined (NullableLong), "OtherCount" :: NullOrUndefined (NullableLong), "TotalCount" :: NullOrUndefined (NullableLong) } -> { "ThrottleCount" :: NullOrUndefined (NullableLong), "OtherCount" :: NullOrUndefined (NullableLong), "TotalCount" :: NullOrUndefined (NullableLong) }) -> ErrorStatistics
```

Constructs ErrorStatistics's fields from required parameters

#### `FaultStatistics`

``` purescript
newtype FaultStatistics
  = FaultStatistics { "OtherCount" :: NullOrUndefined (NullableLong), "TotalCount" :: NullOrUndefined (NullableLong) }
```

<p>Information about requests that failed with a 5xx Server Error status code.</p>

##### Instances
``` purescript
Newtype FaultStatistics _
Generic FaultStatistics _
Show FaultStatistics
Decode FaultStatistics
Encode FaultStatistics
```

#### `newFaultStatistics`

``` purescript
newFaultStatistics :: FaultStatistics
```

Constructs FaultStatistics from required parameters

#### `newFaultStatistics'`

``` purescript
newFaultStatistics' :: ({ "OtherCount" :: NullOrUndefined (NullableLong), "TotalCount" :: NullOrUndefined (NullableLong) } -> { "OtherCount" :: NullOrUndefined (NullableLong), "TotalCount" :: NullOrUndefined (NullableLong) }) -> FaultStatistics
```

Constructs FaultStatistics's fields from required parameters

#### `FilterExpression`

``` purescript
newtype FilterExpression
  = FilterExpression String
```

##### Instances
``` purescript
Newtype FilterExpression _
Generic FilterExpression _
Show FilterExpression
Decode FilterExpression
Encode FilterExpression
```

#### `GetServiceGraphRequest`

``` purescript
newtype GetServiceGraphRequest
  = GetServiceGraphRequest { "StartTime" :: Timestamp, "EndTime" :: Timestamp, "NextToken" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype GetServiceGraphRequest _
Generic GetServiceGraphRequest _
Show GetServiceGraphRequest
Decode GetServiceGraphRequest
Encode GetServiceGraphRequest
```

#### `newGetServiceGraphRequest`

``` purescript
newGetServiceGraphRequest :: Timestamp -> Timestamp -> GetServiceGraphRequest
```

Constructs GetServiceGraphRequest from required parameters

#### `newGetServiceGraphRequest'`

``` purescript
newGetServiceGraphRequest' :: Timestamp -> Timestamp -> ({ "StartTime" :: Timestamp, "EndTime" :: Timestamp, "NextToken" :: NullOrUndefined (String) } -> { "StartTime" :: Timestamp, "EndTime" :: Timestamp, "NextToken" :: NullOrUndefined (String) }) -> GetServiceGraphRequest
```

Constructs GetServiceGraphRequest's fields from required parameters

#### `GetServiceGraphResult`

``` purescript
newtype GetServiceGraphResult
  = GetServiceGraphResult { "StartTime" :: NullOrUndefined (Timestamp), "EndTime" :: NullOrUndefined (Timestamp), "Services" :: NullOrUndefined (ServiceList), "NextToken" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype GetServiceGraphResult _
Generic GetServiceGraphResult _
Show GetServiceGraphResult
Decode GetServiceGraphResult
Encode GetServiceGraphResult
```

#### `newGetServiceGraphResult`

``` purescript
newGetServiceGraphResult :: GetServiceGraphResult
```

Constructs GetServiceGraphResult from required parameters

#### `newGetServiceGraphResult'`

``` purescript
newGetServiceGraphResult' :: ({ "StartTime" :: NullOrUndefined (Timestamp), "EndTime" :: NullOrUndefined (Timestamp), "Services" :: NullOrUndefined (ServiceList), "NextToken" :: NullOrUndefined (String) } -> { "StartTime" :: NullOrUndefined (Timestamp), "EndTime" :: NullOrUndefined (Timestamp), "Services" :: NullOrUndefined (ServiceList), "NextToken" :: NullOrUndefined (String) }) -> GetServiceGraphResult
```

Constructs GetServiceGraphResult's fields from required parameters

#### `GetTraceGraphRequest`

``` purescript
newtype GetTraceGraphRequest
  = GetTraceGraphRequest { "TraceIds" :: TraceIdList, "NextToken" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype GetTraceGraphRequest _
Generic GetTraceGraphRequest _
Show GetTraceGraphRequest
Decode GetTraceGraphRequest
Encode GetTraceGraphRequest
```

#### `newGetTraceGraphRequest`

``` purescript
newGetTraceGraphRequest :: TraceIdList -> GetTraceGraphRequest
```

Constructs GetTraceGraphRequest from required parameters

#### `newGetTraceGraphRequest'`

``` purescript
newGetTraceGraphRequest' :: TraceIdList -> ({ "TraceIds" :: TraceIdList, "NextToken" :: NullOrUndefined (String) } -> { "TraceIds" :: TraceIdList, "NextToken" :: NullOrUndefined (String) }) -> GetTraceGraphRequest
```

Constructs GetTraceGraphRequest's fields from required parameters

#### `GetTraceGraphResult`

``` purescript
newtype GetTraceGraphResult
  = GetTraceGraphResult { "Services" :: NullOrUndefined (ServiceList), "NextToken" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype GetTraceGraphResult _
Generic GetTraceGraphResult _
Show GetTraceGraphResult
Decode GetTraceGraphResult
Encode GetTraceGraphResult
```

#### `newGetTraceGraphResult`

``` purescript
newGetTraceGraphResult :: GetTraceGraphResult
```

Constructs GetTraceGraphResult from required parameters

#### `newGetTraceGraphResult'`

``` purescript
newGetTraceGraphResult' :: ({ "Services" :: NullOrUndefined (ServiceList), "NextToken" :: NullOrUndefined (String) } -> { "Services" :: NullOrUndefined (ServiceList), "NextToken" :: NullOrUndefined (String) }) -> GetTraceGraphResult
```

Constructs GetTraceGraphResult's fields from required parameters

#### `GetTraceSummariesRequest`

``` purescript
newtype GetTraceSummariesRequest
  = GetTraceSummariesRequest { "StartTime" :: Timestamp, "EndTime" :: Timestamp, "Sampling" :: NullOrUndefined (NullableBoolean), "FilterExpression" :: NullOrUndefined (FilterExpression), "NextToken" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype GetTraceSummariesRequest _
Generic GetTraceSummariesRequest _
Show GetTraceSummariesRequest
Decode GetTraceSummariesRequest
Encode GetTraceSummariesRequest
```

#### `newGetTraceSummariesRequest`

``` purescript
newGetTraceSummariesRequest :: Timestamp -> Timestamp -> GetTraceSummariesRequest
```

Constructs GetTraceSummariesRequest from required parameters

#### `newGetTraceSummariesRequest'`

``` purescript
newGetTraceSummariesRequest' :: Timestamp -> Timestamp -> ({ "StartTime" :: Timestamp, "EndTime" :: Timestamp, "Sampling" :: NullOrUndefined (NullableBoolean), "FilterExpression" :: NullOrUndefined (FilterExpression), "NextToken" :: NullOrUndefined (String) } -> { "StartTime" :: Timestamp, "EndTime" :: Timestamp, "Sampling" :: NullOrUndefined (NullableBoolean), "FilterExpression" :: NullOrUndefined (FilterExpression), "NextToken" :: NullOrUndefined (String) }) -> GetTraceSummariesRequest
```

Constructs GetTraceSummariesRequest's fields from required parameters

#### `GetTraceSummariesResult`

``` purescript
newtype GetTraceSummariesResult
  = GetTraceSummariesResult { "TraceSummaries" :: NullOrUndefined (TraceSummaryList), "ApproximateTime" :: NullOrUndefined (Timestamp), "TracesProcessedCount" :: NullOrUndefined (NullableLong), "NextToken" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype GetTraceSummariesResult _
Generic GetTraceSummariesResult _
Show GetTraceSummariesResult
Decode GetTraceSummariesResult
Encode GetTraceSummariesResult
```

#### `newGetTraceSummariesResult`

``` purescript
newGetTraceSummariesResult :: GetTraceSummariesResult
```

Constructs GetTraceSummariesResult from required parameters

#### `newGetTraceSummariesResult'`

``` purescript
newGetTraceSummariesResult' :: ({ "TraceSummaries" :: NullOrUndefined (TraceSummaryList), "ApproximateTime" :: NullOrUndefined (Timestamp), "TracesProcessedCount" :: NullOrUndefined (NullableLong), "NextToken" :: NullOrUndefined (String) } -> { "TraceSummaries" :: NullOrUndefined (TraceSummaryList), "ApproximateTime" :: NullOrUndefined (Timestamp), "TracesProcessedCount" :: NullOrUndefined (NullableLong), "NextToken" :: NullOrUndefined (String) }) -> GetTraceSummariesResult
```

Constructs GetTraceSummariesResult's fields from required parameters

#### `Histogram`

``` purescript
newtype Histogram
  = Histogram (Array HistogramEntry)
```

##### Instances
``` purescript
Newtype Histogram _
Generic Histogram _
Show Histogram
Decode Histogram
Encode Histogram
```

#### `HistogramEntry`

``` purescript
newtype HistogramEntry
  = HistogramEntry { "Value" :: NullOrUndefined (Number), "Count" :: NullOrUndefined (Int) }
```

<p>An entry in a histogram for a statistic. A histogram maps the range of observed values on the X axis, and the prevalence of each value on the Y axis.</p>

##### Instances
``` purescript
Newtype HistogramEntry _
Generic HistogramEntry _
Show HistogramEntry
Decode HistogramEntry
Encode HistogramEntry
```

#### `newHistogramEntry`

``` purescript
newHistogramEntry :: HistogramEntry
```

Constructs HistogramEntry from required parameters

#### `newHistogramEntry'`

``` purescript
newHistogramEntry' :: ({ "Value" :: NullOrUndefined (Number), "Count" :: NullOrUndefined (Int) } -> { "Value" :: NullOrUndefined (Number), "Count" :: NullOrUndefined (Int) }) -> HistogramEntry
```

Constructs HistogramEntry's fields from required parameters

#### `Hostname`

``` purescript
newtype Hostname
  = Hostname String
```

##### Instances
``` purescript
Newtype Hostname _
Generic Hostname _
Show Hostname
Decode Hostname
Encode Hostname
```

#### `Http`

``` purescript
newtype Http
  = Http { "HttpURL" :: NullOrUndefined (String), "HttpStatus" :: NullOrUndefined (NullableInteger), "HttpMethod" :: NullOrUndefined (String), "UserAgent" :: NullOrUndefined (String), "ClientIp" :: NullOrUndefined (String) }
```

<p>Information about an HTTP request.</p>

##### Instances
``` purescript
Newtype Http _
Generic Http _
Show Http
Decode Http
Encode Http
```

#### `newHttp`

``` purescript
newHttp :: Http
```

Constructs Http from required parameters

#### `newHttp'`

``` purescript
newHttp' :: ({ "HttpURL" :: NullOrUndefined (String), "HttpStatus" :: NullOrUndefined (NullableInteger), "HttpMethod" :: NullOrUndefined (String), "UserAgent" :: NullOrUndefined (String), "ClientIp" :: NullOrUndefined (String) } -> { "HttpURL" :: NullOrUndefined (String), "HttpStatus" :: NullOrUndefined (NullableInteger), "HttpMethod" :: NullOrUndefined (String), "UserAgent" :: NullOrUndefined (String), "ClientIp" :: NullOrUndefined (String) }) -> Http
```

Constructs Http's fields from required parameters

#### `InvalidRequestException`

``` purescript
newtype InvalidRequestException
  = InvalidRequestException { "Message" :: NullOrUndefined (ErrorMessage) }
```

<p>The request is missing required parameters or has invalid parameters.</p>

##### Instances
``` purescript
Newtype InvalidRequestException _
Generic InvalidRequestException _
Show InvalidRequestException
Decode InvalidRequestException
Encode InvalidRequestException
```

#### `newInvalidRequestException`

``` purescript
newInvalidRequestException :: InvalidRequestException
```

Constructs InvalidRequestException from required parameters

#### `newInvalidRequestException'`

``` purescript
newInvalidRequestException' :: ({ "Message" :: NullOrUndefined (ErrorMessage) } -> { "Message" :: NullOrUndefined (ErrorMessage) }) -> InvalidRequestException
```

Constructs InvalidRequestException's fields from required parameters

#### `NullableBoolean`

``` purescript
newtype NullableBoolean
  = NullableBoolean Boolean
```

##### Instances
``` purescript
Newtype NullableBoolean _
Generic NullableBoolean _
Show NullableBoolean
Decode NullableBoolean
Encode NullableBoolean
```

#### `NullableDouble`

``` purescript
newtype NullableDouble
  = NullableDouble Number
```

##### Instances
``` purescript
Newtype NullableDouble _
Generic NullableDouble _
Show NullableDouble
Decode NullableDouble
Encode NullableDouble
```

#### `NullableInteger`

``` purescript
newtype NullableInteger
  = NullableInteger Int
```

##### Instances
``` purescript
Newtype NullableInteger _
Generic NullableInteger _
Show NullableInteger
Decode NullableInteger
Encode NullableInteger
```

#### `NullableLong`

``` purescript
newtype NullableLong
  = NullableLong Number
```

##### Instances
``` purescript
Newtype NullableLong _
Generic NullableLong _
Show NullableLong
Decode NullableLong
Encode NullableLong
```

#### `PutTelemetryRecordsRequest`

``` purescript
newtype PutTelemetryRecordsRequest
  = PutTelemetryRecordsRequest { "TelemetryRecords" :: TelemetryRecordList, "EC2InstanceId" :: NullOrUndefined (EC2InstanceId), "Hostname" :: NullOrUndefined (Hostname), "ResourceARN" :: NullOrUndefined (ResourceARN) }
```

##### Instances
``` purescript
Newtype PutTelemetryRecordsRequest _
Generic PutTelemetryRecordsRequest _
Show PutTelemetryRecordsRequest
Decode PutTelemetryRecordsRequest
Encode PutTelemetryRecordsRequest
```

#### `newPutTelemetryRecordsRequest`

``` purescript
newPutTelemetryRecordsRequest :: TelemetryRecordList -> PutTelemetryRecordsRequest
```

Constructs PutTelemetryRecordsRequest from required parameters

#### `newPutTelemetryRecordsRequest'`

``` purescript
newPutTelemetryRecordsRequest' :: TelemetryRecordList -> ({ "TelemetryRecords" :: TelemetryRecordList, "EC2InstanceId" :: NullOrUndefined (EC2InstanceId), "Hostname" :: NullOrUndefined (Hostname), "ResourceARN" :: NullOrUndefined (ResourceARN) } -> { "TelemetryRecords" :: TelemetryRecordList, "EC2InstanceId" :: NullOrUndefined (EC2InstanceId), "Hostname" :: NullOrUndefined (Hostname), "ResourceARN" :: NullOrUndefined (ResourceARN) }) -> PutTelemetryRecordsRequest
```

Constructs PutTelemetryRecordsRequest's fields from required parameters

#### `PutTelemetryRecordsResult`

``` purescript
newtype PutTelemetryRecordsResult
  = PutTelemetryRecordsResult NoArguments
```

##### Instances
``` purescript
Newtype PutTelemetryRecordsResult _
Generic PutTelemetryRecordsResult _
Show PutTelemetryRecordsResult
Decode PutTelemetryRecordsResult
Encode PutTelemetryRecordsResult
```

#### `PutTraceSegmentsRequest`

``` purescript
newtype PutTraceSegmentsRequest
  = PutTraceSegmentsRequest { "TraceSegmentDocuments" :: TraceSegmentDocumentList }
```

##### Instances
``` purescript
Newtype PutTraceSegmentsRequest _
Generic PutTraceSegmentsRequest _
Show PutTraceSegmentsRequest
Decode PutTraceSegmentsRequest
Encode PutTraceSegmentsRequest
```

#### `newPutTraceSegmentsRequest`

``` purescript
newPutTraceSegmentsRequest :: TraceSegmentDocumentList -> PutTraceSegmentsRequest
```

Constructs PutTraceSegmentsRequest from required parameters

#### `newPutTraceSegmentsRequest'`

``` purescript
newPutTraceSegmentsRequest' :: TraceSegmentDocumentList -> ({ "TraceSegmentDocuments" :: TraceSegmentDocumentList } -> { "TraceSegmentDocuments" :: TraceSegmentDocumentList }) -> PutTraceSegmentsRequest
```

Constructs PutTraceSegmentsRequest's fields from required parameters

#### `PutTraceSegmentsResult`

``` purescript
newtype PutTraceSegmentsResult
  = PutTraceSegmentsResult { "UnprocessedTraceSegments" :: NullOrUndefined (UnprocessedTraceSegmentList) }
```

##### Instances
``` purescript
Newtype PutTraceSegmentsResult _
Generic PutTraceSegmentsResult _
Show PutTraceSegmentsResult
Decode PutTraceSegmentsResult
Encode PutTraceSegmentsResult
```

#### `newPutTraceSegmentsResult`

``` purescript
newPutTraceSegmentsResult :: PutTraceSegmentsResult
```

Constructs PutTraceSegmentsResult from required parameters

#### `newPutTraceSegmentsResult'`

``` purescript
newPutTraceSegmentsResult' :: ({ "UnprocessedTraceSegments" :: NullOrUndefined (UnprocessedTraceSegmentList) } -> { "UnprocessedTraceSegments" :: NullOrUndefined (UnprocessedTraceSegmentList) }) -> PutTraceSegmentsResult
```

Constructs PutTraceSegmentsResult's fields from required parameters

#### `ResourceARN`

``` purescript
newtype ResourceARN
  = ResourceARN String
```

##### Instances
``` purescript
Newtype ResourceARN _
Generic ResourceARN _
Show ResourceARN
Decode ResourceARN
Encode ResourceARN
```

#### `Segment`

``` purescript
newtype Segment
  = Segment { "Id" :: NullOrUndefined (SegmentId), "Document" :: NullOrUndefined (SegmentDocument) }
```

<p>A segment from a trace that has been ingested by the X-Ray service. The segment can be compiled from documents uploaded with <a>PutTraceSegments</a>, or an <code>inferred</code> segment for a downstream service, generated from a subsegment sent by the service that called it.</p>

##### Instances
``` purescript
Newtype Segment _
Generic Segment _
Show Segment
Decode Segment
Encode Segment
```

#### `newSegment`

``` purescript
newSegment :: Segment
```

Constructs Segment from required parameters

#### `newSegment'`

``` purescript
newSegment' :: ({ "Id" :: NullOrUndefined (SegmentId), "Document" :: NullOrUndefined (SegmentDocument) } -> { "Id" :: NullOrUndefined (SegmentId), "Document" :: NullOrUndefined (SegmentDocument) }) -> Segment
```

Constructs Segment's fields from required parameters

#### `SegmentDocument`

``` purescript
newtype SegmentDocument
  = SegmentDocument String
```

##### Instances
``` purescript
Newtype SegmentDocument _
Generic SegmentDocument _
Show SegmentDocument
Decode SegmentDocument
Encode SegmentDocument
```

#### `SegmentId`

``` purescript
newtype SegmentId
  = SegmentId String
```

##### Instances
``` purescript
Newtype SegmentId _
Generic SegmentId _
Show SegmentId
Decode SegmentId
Encode SegmentId
```

#### `SegmentList`

``` purescript
newtype SegmentList
  = SegmentList (Array Segment)
```

##### Instances
``` purescript
Newtype SegmentList _
Generic SegmentList _
Show SegmentList
Decode SegmentList
Encode SegmentList
```

#### `Service`

``` purescript
newtype Service
  = Service { "ReferenceId" :: NullOrUndefined (NullableInteger), "Name" :: NullOrUndefined (String), "Names" :: NullOrUndefined (ServiceNames), "Root" :: NullOrUndefined (NullableBoolean), "AccountId" :: NullOrUndefined (String), "Type" :: NullOrUndefined (String), "State" :: NullOrUndefined (String), "StartTime" :: NullOrUndefined (Timestamp), "EndTime" :: NullOrUndefined (Timestamp), "Edges" :: NullOrUndefined (EdgeList), "SummaryStatistics" :: NullOrUndefined (ServiceStatistics), "DurationHistogram" :: NullOrUndefined (Histogram), "ResponseTimeHistogram" :: NullOrUndefined (Histogram) }
```

<p>Information about an application that processed requests, users that made requests, or downstream services, resources and applications that an application used.</p>

##### Instances
``` purescript
Newtype Service _
Generic Service _
Show Service
Decode Service
Encode Service
```

#### `newService`

``` purescript
newService :: Service
```

Constructs Service from required parameters

#### `newService'`

``` purescript
newService' :: ({ "ReferenceId" :: NullOrUndefined (NullableInteger), "Name" :: NullOrUndefined (String), "Names" :: NullOrUndefined (ServiceNames), "Root" :: NullOrUndefined (NullableBoolean), "AccountId" :: NullOrUndefined (String), "Type" :: NullOrUndefined (String), "State" :: NullOrUndefined (String), "StartTime" :: NullOrUndefined (Timestamp), "EndTime" :: NullOrUndefined (Timestamp), "Edges" :: NullOrUndefined (EdgeList), "SummaryStatistics" :: NullOrUndefined (ServiceStatistics), "DurationHistogram" :: NullOrUndefined (Histogram), "ResponseTimeHistogram" :: NullOrUndefined (Histogram) } -> { "ReferenceId" :: NullOrUndefined (NullableInteger), "Name" :: NullOrUndefined (String), "Names" :: NullOrUndefined (ServiceNames), "Root" :: NullOrUndefined (NullableBoolean), "AccountId" :: NullOrUndefined (String), "Type" :: NullOrUndefined (String), "State" :: NullOrUndefined (String), "StartTime" :: NullOrUndefined (Timestamp), "EndTime" :: NullOrUndefined (Timestamp), "Edges" :: NullOrUndefined (EdgeList), "SummaryStatistics" :: NullOrUndefined (ServiceStatistics), "DurationHistogram" :: NullOrUndefined (Histogram), "ResponseTimeHistogram" :: NullOrUndefined (Histogram) }) -> Service
```

Constructs Service's fields from required parameters

#### `ServiceId`

``` purescript
newtype ServiceId
  = ServiceId { "Name" :: NullOrUndefined (String), "Names" :: NullOrUndefined (ServiceNames), "AccountId" :: NullOrUndefined (String), "Type" :: NullOrUndefined (String) }
```

<p/>

##### Instances
``` purescript
Newtype ServiceId _
Generic ServiceId _
Show ServiceId
Decode ServiceId
Encode ServiceId
```

#### `newServiceId`

``` purescript
newServiceId :: ServiceId
```

Constructs ServiceId from required parameters

#### `newServiceId'`

``` purescript
newServiceId' :: ({ "Name" :: NullOrUndefined (String), "Names" :: NullOrUndefined (ServiceNames), "AccountId" :: NullOrUndefined (String), "Type" :: NullOrUndefined (String) } -> { "Name" :: NullOrUndefined (String), "Names" :: NullOrUndefined (ServiceNames), "AccountId" :: NullOrUndefined (String), "Type" :: NullOrUndefined (String) }) -> ServiceId
```

Constructs ServiceId's fields from required parameters

#### `ServiceIds`

``` purescript
newtype ServiceIds
  = ServiceIds (Array ServiceId)
```

##### Instances
``` purescript
Newtype ServiceIds _
Generic ServiceIds _
Show ServiceIds
Decode ServiceIds
Encode ServiceIds
```

#### `ServiceList`

``` purescript
newtype ServiceList
  = ServiceList (Array Service)
```

##### Instances
``` purescript
Newtype ServiceList _
Generic ServiceList _
Show ServiceList
Decode ServiceList
Encode ServiceList
```

#### `ServiceNames`

``` purescript
newtype ServiceNames
  = ServiceNames (Array String)
```

##### Instances
``` purescript
Newtype ServiceNames _
Generic ServiceNames _
Show ServiceNames
Decode ServiceNames
Encode ServiceNames
```

#### `ServiceStatistics`

``` purescript
newtype ServiceStatistics
  = ServiceStatistics { "OkCount" :: NullOrUndefined (NullableLong), "ErrorStatistics" :: NullOrUndefined (ErrorStatistics), "FaultStatistics" :: NullOrUndefined (FaultStatistics), "TotalCount" :: NullOrUndefined (NullableLong), "TotalResponseTime" :: NullOrUndefined (NullableDouble) }
```

<p>Response statistics for a service.</p>

##### Instances
``` purescript
Newtype ServiceStatistics _
Generic ServiceStatistics _
Show ServiceStatistics
Decode ServiceStatistics
Encode ServiceStatistics
```

#### `newServiceStatistics`

``` purescript
newServiceStatistics :: ServiceStatistics
```

Constructs ServiceStatistics from required parameters

#### `newServiceStatistics'`

``` purescript
newServiceStatistics' :: ({ "OkCount" :: NullOrUndefined (NullableLong), "ErrorStatistics" :: NullOrUndefined (ErrorStatistics), "FaultStatistics" :: NullOrUndefined (FaultStatistics), "TotalCount" :: NullOrUndefined (NullableLong), "TotalResponseTime" :: NullOrUndefined (NullableDouble) } -> { "OkCount" :: NullOrUndefined (NullableLong), "ErrorStatistics" :: NullOrUndefined (ErrorStatistics), "FaultStatistics" :: NullOrUndefined (FaultStatistics), "TotalCount" :: NullOrUndefined (NullableLong), "TotalResponseTime" :: NullOrUndefined (NullableDouble) }) -> ServiceStatistics
```

Constructs ServiceStatistics's fields from required parameters

#### `TelemetryRecord`

``` purescript
newtype TelemetryRecord
  = TelemetryRecord { "Timestamp" :: Timestamp, "SegmentsReceivedCount" :: NullOrUndefined (NullableInteger), "SegmentsSentCount" :: NullOrUndefined (NullableInteger), "SegmentsSpilloverCount" :: NullOrUndefined (NullableInteger), "SegmentsRejectedCount" :: NullOrUndefined (NullableInteger), "BackendConnectionErrors" :: NullOrUndefined (BackendConnectionErrors) }
```

<p/>

##### Instances
``` purescript
Newtype TelemetryRecord _
Generic TelemetryRecord _
Show TelemetryRecord
Decode TelemetryRecord
Encode TelemetryRecord
```

#### `newTelemetryRecord`

``` purescript
newTelemetryRecord :: Timestamp -> TelemetryRecord
```

Constructs TelemetryRecord from required parameters

#### `newTelemetryRecord'`

``` purescript
newTelemetryRecord' :: Timestamp -> ({ "Timestamp" :: Timestamp, "SegmentsReceivedCount" :: NullOrUndefined (NullableInteger), "SegmentsSentCount" :: NullOrUndefined (NullableInteger), "SegmentsSpilloverCount" :: NullOrUndefined (NullableInteger), "SegmentsRejectedCount" :: NullOrUndefined (NullableInteger), "BackendConnectionErrors" :: NullOrUndefined (BackendConnectionErrors) } -> { "Timestamp" :: Timestamp, "SegmentsReceivedCount" :: NullOrUndefined (NullableInteger), "SegmentsSentCount" :: NullOrUndefined (NullableInteger), "SegmentsSpilloverCount" :: NullOrUndefined (NullableInteger), "SegmentsRejectedCount" :: NullOrUndefined (NullableInteger), "BackendConnectionErrors" :: NullOrUndefined (BackendConnectionErrors) }) -> TelemetryRecord
```

Constructs TelemetryRecord's fields from required parameters

#### `TelemetryRecordList`

``` purescript
newtype TelemetryRecordList
  = TelemetryRecordList (Array TelemetryRecord)
```

##### Instances
``` purescript
Newtype TelemetryRecordList _
Generic TelemetryRecordList _
Show TelemetryRecordList
Decode TelemetryRecordList
Encode TelemetryRecordList
```

#### `ThrottledException`

``` purescript
newtype ThrottledException
  = ThrottledException { "Message" :: NullOrUndefined (ErrorMessage) }
```

<p>The request exceeds the maximum number of requests per second.</p>

##### Instances
``` purescript
Newtype ThrottledException _
Generic ThrottledException _
Show ThrottledException
Decode ThrottledException
Encode ThrottledException
```

#### `newThrottledException`

``` purescript
newThrottledException :: ThrottledException
```

Constructs ThrottledException from required parameters

#### `newThrottledException'`

``` purescript
newThrottledException' :: ({ "Message" :: NullOrUndefined (ErrorMessage) } -> { "Message" :: NullOrUndefined (ErrorMessage) }) -> ThrottledException
```

Constructs ThrottledException's fields from required parameters

#### `Trace`

``` purescript
newtype Trace
  = Trace { "Id" :: NullOrUndefined (TraceId), "Duration" :: NullOrUndefined (NullableDouble), "Segments" :: NullOrUndefined (SegmentList) }
```

<p>A collection of segment documents with matching trace IDs.</p>

##### Instances
``` purescript
Newtype Trace _
Generic Trace _
Show Trace
Decode Trace
Encode Trace
```

#### `newTrace`

``` purescript
newTrace :: Trace
```

Constructs Trace from required parameters

#### `newTrace'`

``` purescript
newTrace' :: ({ "Id" :: NullOrUndefined (TraceId), "Duration" :: NullOrUndefined (NullableDouble), "Segments" :: NullOrUndefined (SegmentList) } -> { "Id" :: NullOrUndefined (TraceId), "Duration" :: NullOrUndefined (NullableDouble), "Segments" :: NullOrUndefined (SegmentList) }) -> Trace
```

Constructs Trace's fields from required parameters

#### `TraceId`

``` purescript
newtype TraceId
  = TraceId String
```

##### Instances
``` purescript
Newtype TraceId _
Generic TraceId _
Show TraceId
Decode TraceId
Encode TraceId
```

#### `TraceIdList`

``` purescript
newtype TraceIdList
  = TraceIdList (Array TraceId)
```

##### Instances
``` purescript
Newtype TraceIdList _
Generic TraceIdList _
Show TraceIdList
Decode TraceIdList
Encode TraceIdList
```

#### `TraceList`

``` purescript
newtype TraceList
  = TraceList (Array Trace)
```

##### Instances
``` purescript
Newtype TraceList _
Generic TraceList _
Show TraceList
Decode TraceList
Encode TraceList
```

#### `TraceSegmentDocument`

``` purescript
newtype TraceSegmentDocument
  = TraceSegmentDocument String
```

##### Instances
``` purescript
Newtype TraceSegmentDocument _
Generic TraceSegmentDocument _
Show TraceSegmentDocument
Decode TraceSegmentDocument
Encode TraceSegmentDocument
```

#### `TraceSegmentDocumentList`

``` purescript
newtype TraceSegmentDocumentList
  = TraceSegmentDocumentList (Array TraceSegmentDocument)
```

##### Instances
``` purescript
Newtype TraceSegmentDocumentList _
Generic TraceSegmentDocumentList _
Show TraceSegmentDocumentList
Decode TraceSegmentDocumentList
Encode TraceSegmentDocumentList
```

#### `TraceSummary`

``` purescript
newtype TraceSummary
  = TraceSummary { "Id" :: NullOrUndefined (TraceId), "Duration" :: NullOrUndefined (NullableDouble), "ResponseTime" :: NullOrUndefined (NullableDouble), "HasFault" :: NullOrUndefined (NullableBoolean), "HasError" :: NullOrUndefined (NullableBoolean), "HasThrottle" :: NullOrUndefined (NullableBoolean), "IsPartial" :: NullOrUndefined (NullableBoolean), "Http" :: NullOrUndefined (Http), "Annotations" :: NullOrUndefined (Annotations), "Users" :: NullOrUndefined (TraceUsers), "ServiceIds" :: NullOrUndefined (ServiceIds) }
```

<p>Metadata generated from the segment documents in a trace.</p>

##### Instances
``` purescript
Newtype TraceSummary _
Generic TraceSummary _
Show TraceSummary
Decode TraceSummary
Encode TraceSummary
```

#### `newTraceSummary`

``` purescript
newTraceSummary :: TraceSummary
```

Constructs TraceSummary from required parameters

#### `newTraceSummary'`

``` purescript
newTraceSummary' :: ({ "Id" :: NullOrUndefined (TraceId), "Duration" :: NullOrUndefined (NullableDouble), "ResponseTime" :: NullOrUndefined (NullableDouble), "HasFault" :: NullOrUndefined (NullableBoolean), "HasError" :: NullOrUndefined (NullableBoolean), "HasThrottle" :: NullOrUndefined (NullableBoolean), "IsPartial" :: NullOrUndefined (NullableBoolean), "Http" :: NullOrUndefined (Http), "Annotations" :: NullOrUndefined (Annotations), "Users" :: NullOrUndefined (TraceUsers), "ServiceIds" :: NullOrUndefined (ServiceIds) } -> { "Id" :: NullOrUndefined (TraceId), "Duration" :: NullOrUndefined (NullableDouble), "ResponseTime" :: NullOrUndefined (NullableDouble), "HasFault" :: NullOrUndefined (NullableBoolean), "HasError" :: NullOrUndefined (NullableBoolean), "HasThrottle" :: NullOrUndefined (NullableBoolean), "IsPartial" :: NullOrUndefined (NullableBoolean), "Http" :: NullOrUndefined (Http), "Annotations" :: NullOrUndefined (Annotations), "Users" :: NullOrUndefined (TraceUsers), "ServiceIds" :: NullOrUndefined (ServiceIds) }) -> TraceSummary
```

Constructs TraceSummary's fields from required parameters

#### `TraceSummaryList`

``` purescript
newtype TraceSummaryList
  = TraceSummaryList (Array TraceSummary)
```

##### Instances
``` purescript
Newtype TraceSummaryList _
Generic TraceSummaryList _
Show TraceSummaryList
Decode TraceSummaryList
Encode TraceSummaryList
```

#### `TraceUser`

``` purescript
newtype TraceUser
  = TraceUser { "UserName" :: NullOrUndefined (String), "ServiceIds" :: NullOrUndefined (ServiceIds) }
```

<p>Information about a user recorded in segment documents.</p>

##### Instances
``` purescript
Newtype TraceUser _
Generic TraceUser _
Show TraceUser
Decode TraceUser
Encode TraceUser
```

#### `newTraceUser`

``` purescript
newTraceUser :: TraceUser
```

Constructs TraceUser from required parameters

#### `newTraceUser'`

``` purescript
newTraceUser' :: ({ "UserName" :: NullOrUndefined (String), "ServiceIds" :: NullOrUndefined (ServiceIds) } -> { "UserName" :: NullOrUndefined (String), "ServiceIds" :: NullOrUndefined (ServiceIds) }) -> TraceUser
```

Constructs TraceUser's fields from required parameters

#### `TraceUsers`

``` purescript
newtype TraceUsers
  = TraceUsers (Array TraceUser)
```

##### Instances
``` purescript
Newtype TraceUsers _
Generic TraceUsers _
Show TraceUsers
Decode TraceUsers
Encode TraceUsers
```

#### `UnprocessedTraceIdList`

``` purescript
newtype UnprocessedTraceIdList
  = UnprocessedTraceIdList (Array TraceId)
```

##### Instances
``` purescript
Newtype UnprocessedTraceIdList _
Generic UnprocessedTraceIdList _
Show UnprocessedTraceIdList
Decode UnprocessedTraceIdList
Encode UnprocessedTraceIdList
```

#### `UnprocessedTraceSegment`

``` purescript
newtype UnprocessedTraceSegment
  = UnprocessedTraceSegment { "Id" :: NullOrUndefined (String), "ErrorCode" :: NullOrUndefined (String), "Message" :: NullOrUndefined (String) }
```

<p>Information about a segment that failed processing.</p>

##### Instances
``` purescript
Newtype UnprocessedTraceSegment _
Generic UnprocessedTraceSegment _
Show UnprocessedTraceSegment
Decode UnprocessedTraceSegment
Encode UnprocessedTraceSegment
```

#### `newUnprocessedTraceSegment`

``` purescript
newUnprocessedTraceSegment :: UnprocessedTraceSegment
```

Constructs UnprocessedTraceSegment from required parameters

#### `newUnprocessedTraceSegment'`

``` purescript
newUnprocessedTraceSegment' :: ({ "Id" :: NullOrUndefined (String), "ErrorCode" :: NullOrUndefined (String), "Message" :: NullOrUndefined (String) } -> { "Id" :: NullOrUndefined (String), "ErrorCode" :: NullOrUndefined (String), "Message" :: NullOrUndefined (String) }) -> UnprocessedTraceSegment
```

Constructs UnprocessedTraceSegment's fields from required parameters

#### `UnprocessedTraceSegmentList`

``` purescript
newtype UnprocessedTraceSegmentList
  = UnprocessedTraceSegmentList (Array UnprocessedTraceSegment)
```

##### Instances
``` purescript
Newtype UnprocessedTraceSegmentList _
Generic UnprocessedTraceSegmentList _
Show UnprocessedTraceSegmentList
Decode UnprocessedTraceSegmentList
Encode UnprocessedTraceSegmentList
```

#### `ValueWithServiceIds`

``` purescript
newtype ValueWithServiceIds
  = ValueWithServiceIds { "AnnotationValue" :: NullOrUndefined (AnnotationValue), "ServiceIds" :: NullOrUndefined (ServiceIds) }
```

<p>Information about a segment annotation.</p>

##### Instances
``` purescript
Newtype ValueWithServiceIds _
Generic ValueWithServiceIds _
Show ValueWithServiceIds
Decode ValueWithServiceIds
Encode ValueWithServiceIds
```

#### `newValueWithServiceIds`

``` purescript
newValueWithServiceIds :: ValueWithServiceIds
```

Constructs ValueWithServiceIds from required parameters

#### `newValueWithServiceIds'`

``` purescript
newValueWithServiceIds' :: ({ "AnnotationValue" :: NullOrUndefined (AnnotationValue), "ServiceIds" :: NullOrUndefined (ServiceIds) } -> { "AnnotationValue" :: NullOrUndefined (AnnotationValue), "ServiceIds" :: NullOrUndefined (ServiceIds) }) -> ValueWithServiceIds
```

Constructs ValueWithServiceIds's fields from required parameters

#### `ValuesWithServiceIds`

``` purescript
newtype ValuesWithServiceIds
  = ValuesWithServiceIds (Array ValueWithServiceIds)
```

##### Instances
``` purescript
Newtype ValuesWithServiceIds _
Generic ValuesWithServiceIds _
Show ValuesWithServiceIds
Decode ValuesWithServiceIds
Encode ValuesWithServiceIds
```


