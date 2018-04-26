
module AWS.XRay.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


-- | <p>An alias for an edge.</p>
newtype Alias = Alias 
  { "Name" :: Maybe (String)
  , "Names" :: Maybe (AliasNames)
  , "Type" :: Maybe (String)
  }
derive instance newtypeAlias :: Newtype Alias _
derive instance repGenericAlias :: Generic Alias _
instance showAlias :: Show Alias where show = genericShow
instance decodeAlias :: Decode Alias where decode = genericDecode options
instance encodeAlias :: Encode Alias where encode = genericEncode options

-- | Constructs Alias from required parameters
newAlias :: Alias
newAlias  = Alias { "Name": Nothing, "Names": Nothing, "Type": Nothing }

-- | Constructs Alias's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAlias' :: ( { "Name" :: Maybe (String) , "Names" :: Maybe (AliasNames) , "Type" :: Maybe (String) } -> {"Name" :: Maybe (String) , "Names" :: Maybe (AliasNames) , "Type" :: Maybe (String) } ) -> Alias
newAlias'  customize = (Alias <<< customize) { "Name": Nothing, "Names": Nothing, "Type": Nothing }



newtype AliasList = AliasList (Array Alias)
derive instance newtypeAliasList :: Newtype AliasList _
derive instance repGenericAliasList :: Generic AliasList _
instance showAliasList :: Show AliasList where show = genericShow
instance decodeAliasList :: Decode AliasList where decode = genericDecode options
instance encodeAliasList :: Encode AliasList where encode = genericEncode options



newtype AliasNames = AliasNames (Array String)
derive instance newtypeAliasNames :: Newtype AliasNames _
derive instance repGenericAliasNames :: Generic AliasNames _
instance showAliasNames :: Show AliasNames where show = genericShow
instance decodeAliasNames :: Decode AliasNames where decode = genericDecode options
instance encodeAliasNames :: Encode AliasNames where encode = genericEncode options



newtype AnnotationKey = AnnotationKey String
derive instance newtypeAnnotationKey :: Newtype AnnotationKey _
derive instance repGenericAnnotationKey :: Generic AnnotationKey _
instance showAnnotationKey :: Show AnnotationKey where show = genericShow
instance decodeAnnotationKey :: Decode AnnotationKey where decode = genericDecode options
instance encodeAnnotationKey :: Encode AnnotationKey where encode = genericEncode options



-- | <p>Value of a segment annotation. Has one of three value types: Number, Boolean or String.</p>
newtype AnnotationValue = AnnotationValue 
  { "NumberValue" :: Maybe (NullableDouble)
  , "BooleanValue" :: Maybe (NullableBoolean)
  , "StringValue" :: Maybe (String)
  }
derive instance newtypeAnnotationValue :: Newtype AnnotationValue _
derive instance repGenericAnnotationValue :: Generic AnnotationValue _
instance showAnnotationValue :: Show AnnotationValue where show = genericShow
instance decodeAnnotationValue :: Decode AnnotationValue where decode = genericDecode options
instance encodeAnnotationValue :: Encode AnnotationValue where encode = genericEncode options

-- | Constructs AnnotationValue from required parameters
newAnnotationValue :: AnnotationValue
newAnnotationValue  = AnnotationValue { "BooleanValue": Nothing, "NumberValue": Nothing, "StringValue": Nothing }

-- | Constructs AnnotationValue's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAnnotationValue' :: ( { "NumberValue" :: Maybe (NullableDouble) , "BooleanValue" :: Maybe (NullableBoolean) , "StringValue" :: Maybe (String) } -> {"NumberValue" :: Maybe (NullableDouble) , "BooleanValue" :: Maybe (NullableBoolean) , "StringValue" :: Maybe (String) } ) -> AnnotationValue
newAnnotationValue'  customize = (AnnotationValue <<< customize) { "BooleanValue": Nothing, "NumberValue": Nothing, "StringValue": Nothing }



newtype Annotations = Annotations (StrMap.StrMap ValuesWithServiceIds)
derive instance newtypeAnnotations :: Newtype Annotations _
derive instance repGenericAnnotations :: Generic Annotations _
instance showAnnotations :: Show Annotations where show = genericShow
instance decodeAnnotations :: Decode Annotations where decode = genericDecode options
instance encodeAnnotations :: Encode Annotations where encode = genericEncode options



-- | <p/>
newtype BackendConnectionErrors = BackendConnectionErrors 
  { "TimeoutCount" :: Maybe (NullableInteger)
  , "ConnectionRefusedCount" :: Maybe (NullableInteger)
  , "HTTPCode4XXCount" :: Maybe (NullableInteger)
  , "HTTPCode5XXCount" :: Maybe (NullableInteger)
  , "UnknownHostCount" :: Maybe (NullableInteger)
  , "OtherCount" :: Maybe (NullableInteger)
  }
derive instance newtypeBackendConnectionErrors :: Newtype BackendConnectionErrors _
derive instance repGenericBackendConnectionErrors :: Generic BackendConnectionErrors _
instance showBackendConnectionErrors :: Show BackendConnectionErrors where show = genericShow
instance decodeBackendConnectionErrors :: Decode BackendConnectionErrors where decode = genericDecode options
instance encodeBackendConnectionErrors :: Encode BackendConnectionErrors where encode = genericEncode options

-- | Constructs BackendConnectionErrors from required parameters
newBackendConnectionErrors :: BackendConnectionErrors
newBackendConnectionErrors  = BackendConnectionErrors { "ConnectionRefusedCount": Nothing, "HTTPCode4XXCount": Nothing, "HTTPCode5XXCount": Nothing, "OtherCount": Nothing, "TimeoutCount": Nothing, "UnknownHostCount": Nothing }

-- | Constructs BackendConnectionErrors's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBackendConnectionErrors' :: ( { "TimeoutCount" :: Maybe (NullableInteger) , "ConnectionRefusedCount" :: Maybe (NullableInteger) , "HTTPCode4XXCount" :: Maybe (NullableInteger) , "HTTPCode5XXCount" :: Maybe (NullableInteger) , "UnknownHostCount" :: Maybe (NullableInteger) , "OtherCount" :: Maybe (NullableInteger) } -> {"TimeoutCount" :: Maybe (NullableInteger) , "ConnectionRefusedCount" :: Maybe (NullableInteger) , "HTTPCode4XXCount" :: Maybe (NullableInteger) , "HTTPCode5XXCount" :: Maybe (NullableInteger) , "UnknownHostCount" :: Maybe (NullableInteger) , "OtherCount" :: Maybe (NullableInteger) } ) -> BackendConnectionErrors
newBackendConnectionErrors'  customize = (BackendConnectionErrors <<< customize) { "ConnectionRefusedCount": Nothing, "HTTPCode4XXCount": Nothing, "HTTPCode5XXCount": Nothing, "OtherCount": Nothing, "TimeoutCount": Nothing, "UnknownHostCount": Nothing }



newtype BatchGetTracesRequest = BatchGetTracesRequest 
  { "TraceIds" :: (TraceIdList)
  , "NextToken" :: Maybe (String)
  }
derive instance newtypeBatchGetTracesRequest :: Newtype BatchGetTracesRequest _
derive instance repGenericBatchGetTracesRequest :: Generic BatchGetTracesRequest _
instance showBatchGetTracesRequest :: Show BatchGetTracesRequest where show = genericShow
instance decodeBatchGetTracesRequest :: Decode BatchGetTracesRequest where decode = genericDecode options
instance encodeBatchGetTracesRequest :: Encode BatchGetTracesRequest where encode = genericEncode options

-- | Constructs BatchGetTracesRequest from required parameters
newBatchGetTracesRequest :: TraceIdList -> BatchGetTracesRequest
newBatchGetTracesRequest _TraceIds = BatchGetTracesRequest { "TraceIds": _TraceIds, "NextToken": Nothing }

-- | Constructs BatchGetTracesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBatchGetTracesRequest' :: TraceIdList -> ( { "TraceIds" :: (TraceIdList) , "NextToken" :: Maybe (String) } -> {"TraceIds" :: (TraceIdList) , "NextToken" :: Maybe (String) } ) -> BatchGetTracesRequest
newBatchGetTracesRequest' _TraceIds customize = (BatchGetTracesRequest <<< customize) { "TraceIds": _TraceIds, "NextToken": Nothing }



newtype BatchGetTracesResult = BatchGetTracesResult 
  { "Traces" :: Maybe (TraceList)
  , "UnprocessedTraceIds" :: Maybe (UnprocessedTraceIdList)
  , "NextToken" :: Maybe (String)
  }
derive instance newtypeBatchGetTracesResult :: Newtype BatchGetTracesResult _
derive instance repGenericBatchGetTracesResult :: Generic BatchGetTracesResult _
instance showBatchGetTracesResult :: Show BatchGetTracesResult where show = genericShow
instance decodeBatchGetTracesResult :: Decode BatchGetTracesResult where decode = genericDecode options
instance encodeBatchGetTracesResult :: Encode BatchGetTracesResult where encode = genericEncode options

-- | Constructs BatchGetTracesResult from required parameters
newBatchGetTracesResult :: BatchGetTracesResult
newBatchGetTracesResult  = BatchGetTracesResult { "NextToken": Nothing, "Traces": Nothing, "UnprocessedTraceIds": Nothing }

-- | Constructs BatchGetTracesResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBatchGetTracesResult' :: ( { "Traces" :: Maybe (TraceList) , "UnprocessedTraceIds" :: Maybe (UnprocessedTraceIdList) , "NextToken" :: Maybe (String) } -> {"Traces" :: Maybe (TraceList) , "UnprocessedTraceIds" :: Maybe (UnprocessedTraceIdList) , "NextToken" :: Maybe (String) } ) -> BatchGetTracesResult
newBatchGetTracesResult'  customize = (BatchGetTracesResult <<< customize) { "NextToken": Nothing, "Traces": Nothing, "UnprocessedTraceIds": Nothing }



newtype EC2InstanceId = EC2InstanceId String
derive instance newtypeEC2InstanceId :: Newtype EC2InstanceId _
derive instance repGenericEC2InstanceId :: Generic EC2InstanceId _
instance showEC2InstanceId :: Show EC2InstanceId where show = genericShow
instance decodeEC2InstanceId :: Decode EC2InstanceId where decode = genericDecode options
instance encodeEC2InstanceId :: Encode EC2InstanceId where encode = genericEncode options



-- | <p>Information about a connection between two services.</p>
newtype Edge = Edge 
  { "ReferenceId" :: Maybe (NullableInteger)
  , "StartTime" :: Maybe (Types.Timestamp)
  , "EndTime" :: Maybe (Types.Timestamp)
  , "SummaryStatistics" :: Maybe (EdgeStatistics)
  , "ResponseTimeHistogram" :: Maybe (Histogram)
  , "Aliases" :: Maybe (AliasList)
  }
derive instance newtypeEdge :: Newtype Edge _
derive instance repGenericEdge :: Generic Edge _
instance showEdge :: Show Edge where show = genericShow
instance decodeEdge :: Decode Edge where decode = genericDecode options
instance encodeEdge :: Encode Edge where encode = genericEncode options

-- | Constructs Edge from required parameters
newEdge :: Edge
newEdge  = Edge { "Aliases": Nothing, "EndTime": Nothing, "ReferenceId": Nothing, "ResponseTimeHistogram": Nothing, "StartTime": Nothing, "SummaryStatistics": Nothing }

-- | Constructs Edge's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEdge' :: ( { "ReferenceId" :: Maybe (NullableInteger) , "StartTime" :: Maybe (Types.Timestamp) , "EndTime" :: Maybe (Types.Timestamp) , "SummaryStatistics" :: Maybe (EdgeStatistics) , "ResponseTimeHistogram" :: Maybe (Histogram) , "Aliases" :: Maybe (AliasList) } -> {"ReferenceId" :: Maybe (NullableInteger) , "StartTime" :: Maybe (Types.Timestamp) , "EndTime" :: Maybe (Types.Timestamp) , "SummaryStatistics" :: Maybe (EdgeStatistics) , "ResponseTimeHistogram" :: Maybe (Histogram) , "Aliases" :: Maybe (AliasList) } ) -> Edge
newEdge'  customize = (Edge <<< customize) { "Aliases": Nothing, "EndTime": Nothing, "ReferenceId": Nothing, "ResponseTimeHistogram": Nothing, "StartTime": Nothing, "SummaryStatistics": Nothing }



newtype EdgeList = EdgeList (Array Edge)
derive instance newtypeEdgeList :: Newtype EdgeList _
derive instance repGenericEdgeList :: Generic EdgeList _
instance showEdgeList :: Show EdgeList where show = genericShow
instance decodeEdgeList :: Decode EdgeList where decode = genericDecode options
instance encodeEdgeList :: Encode EdgeList where encode = genericEncode options



-- | <p>Response statistics for an edge.</p>
newtype EdgeStatistics = EdgeStatistics 
  { "OkCount" :: Maybe (NullableLong)
  , "ErrorStatistics" :: Maybe (ErrorStatistics)
  , "FaultStatistics" :: Maybe (FaultStatistics)
  , "TotalCount" :: Maybe (NullableLong)
  , "TotalResponseTime" :: Maybe (NullableDouble)
  }
derive instance newtypeEdgeStatistics :: Newtype EdgeStatistics _
derive instance repGenericEdgeStatistics :: Generic EdgeStatistics _
instance showEdgeStatistics :: Show EdgeStatistics where show = genericShow
instance decodeEdgeStatistics :: Decode EdgeStatistics where decode = genericDecode options
instance encodeEdgeStatistics :: Encode EdgeStatistics where encode = genericEncode options

-- | Constructs EdgeStatistics from required parameters
newEdgeStatistics :: EdgeStatistics
newEdgeStatistics  = EdgeStatistics { "ErrorStatistics": Nothing, "FaultStatistics": Nothing, "OkCount": Nothing, "TotalCount": Nothing, "TotalResponseTime": Nothing }

-- | Constructs EdgeStatistics's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEdgeStatistics' :: ( { "OkCount" :: Maybe (NullableLong) , "ErrorStatistics" :: Maybe (ErrorStatistics) , "FaultStatistics" :: Maybe (FaultStatistics) , "TotalCount" :: Maybe (NullableLong) , "TotalResponseTime" :: Maybe (NullableDouble) } -> {"OkCount" :: Maybe (NullableLong) , "ErrorStatistics" :: Maybe (ErrorStatistics) , "FaultStatistics" :: Maybe (FaultStatistics) , "TotalCount" :: Maybe (NullableLong) , "TotalResponseTime" :: Maybe (NullableDouble) } ) -> EdgeStatistics
newEdgeStatistics'  customize = (EdgeStatistics <<< customize) { "ErrorStatistics": Nothing, "FaultStatistics": Nothing, "OkCount": Nothing, "TotalCount": Nothing, "TotalResponseTime": Nothing }



newtype ErrorMessage = ErrorMessage String
derive instance newtypeErrorMessage :: Newtype ErrorMessage _
derive instance repGenericErrorMessage :: Generic ErrorMessage _
instance showErrorMessage :: Show ErrorMessage where show = genericShow
instance decodeErrorMessage :: Decode ErrorMessage where decode = genericDecode options
instance encodeErrorMessage :: Encode ErrorMessage where encode = genericEncode options



-- | <p>Information about requests that failed with a 4xx Client Error status code.</p>
newtype ErrorStatistics = ErrorStatistics 
  { "ThrottleCount" :: Maybe (NullableLong)
  , "OtherCount" :: Maybe (NullableLong)
  , "TotalCount" :: Maybe (NullableLong)
  }
derive instance newtypeErrorStatistics :: Newtype ErrorStatistics _
derive instance repGenericErrorStatistics :: Generic ErrorStatistics _
instance showErrorStatistics :: Show ErrorStatistics where show = genericShow
instance decodeErrorStatistics :: Decode ErrorStatistics where decode = genericDecode options
instance encodeErrorStatistics :: Encode ErrorStatistics where encode = genericEncode options

-- | Constructs ErrorStatistics from required parameters
newErrorStatistics :: ErrorStatistics
newErrorStatistics  = ErrorStatistics { "OtherCount": Nothing, "ThrottleCount": Nothing, "TotalCount": Nothing }

-- | Constructs ErrorStatistics's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newErrorStatistics' :: ( { "ThrottleCount" :: Maybe (NullableLong) , "OtherCount" :: Maybe (NullableLong) , "TotalCount" :: Maybe (NullableLong) } -> {"ThrottleCount" :: Maybe (NullableLong) , "OtherCount" :: Maybe (NullableLong) , "TotalCount" :: Maybe (NullableLong) } ) -> ErrorStatistics
newErrorStatistics'  customize = (ErrorStatistics <<< customize) { "OtherCount": Nothing, "ThrottleCount": Nothing, "TotalCount": Nothing }



-- | <p>Information about requests that failed with a 5xx Server Error status code.</p>
newtype FaultStatistics = FaultStatistics 
  { "OtherCount" :: Maybe (NullableLong)
  , "TotalCount" :: Maybe (NullableLong)
  }
derive instance newtypeFaultStatistics :: Newtype FaultStatistics _
derive instance repGenericFaultStatistics :: Generic FaultStatistics _
instance showFaultStatistics :: Show FaultStatistics where show = genericShow
instance decodeFaultStatistics :: Decode FaultStatistics where decode = genericDecode options
instance encodeFaultStatistics :: Encode FaultStatistics where encode = genericEncode options

-- | Constructs FaultStatistics from required parameters
newFaultStatistics :: FaultStatistics
newFaultStatistics  = FaultStatistics { "OtherCount": Nothing, "TotalCount": Nothing }

-- | Constructs FaultStatistics's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newFaultStatistics' :: ( { "OtherCount" :: Maybe (NullableLong) , "TotalCount" :: Maybe (NullableLong) } -> {"OtherCount" :: Maybe (NullableLong) , "TotalCount" :: Maybe (NullableLong) } ) -> FaultStatistics
newFaultStatistics'  customize = (FaultStatistics <<< customize) { "OtherCount": Nothing, "TotalCount": Nothing }



newtype FilterExpression = FilterExpression String
derive instance newtypeFilterExpression :: Newtype FilterExpression _
derive instance repGenericFilterExpression :: Generic FilterExpression _
instance showFilterExpression :: Show FilterExpression where show = genericShow
instance decodeFilterExpression :: Decode FilterExpression where decode = genericDecode options
instance encodeFilterExpression :: Encode FilterExpression where encode = genericEncode options



newtype GetServiceGraphRequest = GetServiceGraphRequest 
  { "StartTime" :: (Types.Timestamp)
  , "EndTime" :: (Types.Timestamp)
  , "NextToken" :: Maybe (String)
  }
derive instance newtypeGetServiceGraphRequest :: Newtype GetServiceGraphRequest _
derive instance repGenericGetServiceGraphRequest :: Generic GetServiceGraphRequest _
instance showGetServiceGraphRequest :: Show GetServiceGraphRequest where show = genericShow
instance decodeGetServiceGraphRequest :: Decode GetServiceGraphRequest where decode = genericDecode options
instance encodeGetServiceGraphRequest :: Encode GetServiceGraphRequest where encode = genericEncode options

-- | Constructs GetServiceGraphRequest from required parameters
newGetServiceGraphRequest :: Types.Timestamp -> Types.Timestamp -> GetServiceGraphRequest
newGetServiceGraphRequest _EndTime _StartTime = GetServiceGraphRequest { "EndTime": _EndTime, "StartTime": _StartTime, "NextToken": Nothing }

-- | Constructs GetServiceGraphRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetServiceGraphRequest' :: Types.Timestamp -> Types.Timestamp -> ( { "StartTime" :: (Types.Timestamp) , "EndTime" :: (Types.Timestamp) , "NextToken" :: Maybe (String) } -> {"StartTime" :: (Types.Timestamp) , "EndTime" :: (Types.Timestamp) , "NextToken" :: Maybe (String) } ) -> GetServiceGraphRequest
newGetServiceGraphRequest' _EndTime _StartTime customize = (GetServiceGraphRequest <<< customize) { "EndTime": _EndTime, "StartTime": _StartTime, "NextToken": Nothing }



newtype GetServiceGraphResult = GetServiceGraphResult 
  { "StartTime" :: Maybe (Types.Timestamp)
  , "EndTime" :: Maybe (Types.Timestamp)
  , "Services" :: Maybe (ServiceList)
  , "NextToken" :: Maybe (String)
  }
derive instance newtypeGetServiceGraphResult :: Newtype GetServiceGraphResult _
derive instance repGenericGetServiceGraphResult :: Generic GetServiceGraphResult _
instance showGetServiceGraphResult :: Show GetServiceGraphResult where show = genericShow
instance decodeGetServiceGraphResult :: Decode GetServiceGraphResult where decode = genericDecode options
instance encodeGetServiceGraphResult :: Encode GetServiceGraphResult where encode = genericEncode options

-- | Constructs GetServiceGraphResult from required parameters
newGetServiceGraphResult :: GetServiceGraphResult
newGetServiceGraphResult  = GetServiceGraphResult { "EndTime": Nothing, "NextToken": Nothing, "Services": Nothing, "StartTime": Nothing }

-- | Constructs GetServiceGraphResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetServiceGraphResult' :: ( { "StartTime" :: Maybe (Types.Timestamp) , "EndTime" :: Maybe (Types.Timestamp) , "Services" :: Maybe (ServiceList) , "NextToken" :: Maybe (String) } -> {"StartTime" :: Maybe (Types.Timestamp) , "EndTime" :: Maybe (Types.Timestamp) , "Services" :: Maybe (ServiceList) , "NextToken" :: Maybe (String) } ) -> GetServiceGraphResult
newGetServiceGraphResult'  customize = (GetServiceGraphResult <<< customize) { "EndTime": Nothing, "NextToken": Nothing, "Services": Nothing, "StartTime": Nothing }



newtype GetTraceGraphRequest = GetTraceGraphRequest 
  { "TraceIds" :: (TraceIdList)
  , "NextToken" :: Maybe (String)
  }
derive instance newtypeGetTraceGraphRequest :: Newtype GetTraceGraphRequest _
derive instance repGenericGetTraceGraphRequest :: Generic GetTraceGraphRequest _
instance showGetTraceGraphRequest :: Show GetTraceGraphRequest where show = genericShow
instance decodeGetTraceGraphRequest :: Decode GetTraceGraphRequest where decode = genericDecode options
instance encodeGetTraceGraphRequest :: Encode GetTraceGraphRequest where encode = genericEncode options

-- | Constructs GetTraceGraphRequest from required parameters
newGetTraceGraphRequest :: TraceIdList -> GetTraceGraphRequest
newGetTraceGraphRequest _TraceIds = GetTraceGraphRequest { "TraceIds": _TraceIds, "NextToken": Nothing }

-- | Constructs GetTraceGraphRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetTraceGraphRequest' :: TraceIdList -> ( { "TraceIds" :: (TraceIdList) , "NextToken" :: Maybe (String) } -> {"TraceIds" :: (TraceIdList) , "NextToken" :: Maybe (String) } ) -> GetTraceGraphRequest
newGetTraceGraphRequest' _TraceIds customize = (GetTraceGraphRequest <<< customize) { "TraceIds": _TraceIds, "NextToken": Nothing }



newtype GetTraceGraphResult = GetTraceGraphResult 
  { "Services" :: Maybe (ServiceList)
  , "NextToken" :: Maybe (String)
  }
derive instance newtypeGetTraceGraphResult :: Newtype GetTraceGraphResult _
derive instance repGenericGetTraceGraphResult :: Generic GetTraceGraphResult _
instance showGetTraceGraphResult :: Show GetTraceGraphResult where show = genericShow
instance decodeGetTraceGraphResult :: Decode GetTraceGraphResult where decode = genericDecode options
instance encodeGetTraceGraphResult :: Encode GetTraceGraphResult where encode = genericEncode options

-- | Constructs GetTraceGraphResult from required parameters
newGetTraceGraphResult :: GetTraceGraphResult
newGetTraceGraphResult  = GetTraceGraphResult { "NextToken": Nothing, "Services": Nothing }

-- | Constructs GetTraceGraphResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetTraceGraphResult' :: ( { "Services" :: Maybe (ServiceList) , "NextToken" :: Maybe (String) } -> {"Services" :: Maybe (ServiceList) , "NextToken" :: Maybe (String) } ) -> GetTraceGraphResult
newGetTraceGraphResult'  customize = (GetTraceGraphResult <<< customize) { "NextToken": Nothing, "Services": Nothing }



newtype GetTraceSummariesRequest = GetTraceSummariesRequest 
  { "StartTime" :: (Types.Timestamp)
  , "EndTime" :: (Types.Timestamp)
  , "Sampling" :: Maybe (NullableBoolean)
  , "FilterExpression" :: Maybe (FilterExpression)
  , "NextToken" :: Maybe (String)
  }
derive instance newtypeGetTraceSummariesRequest :: Newtype GetTraceSummariesRequest _
derive instance repGenericGetTraceSummariesRequest :: Generic GetTraceSummariesRequest _
instance showGetTraceSummariesRequest :: Show GetTraceSummariesRequest where show = genericShow
instance decodeGetTraceSummariesRequest :: Decode GetTraceSummariesRequest where decode = genericDecode options
instance encodeGetTraceSummariesRequest :: Encode GetTraceSummariesRequest where encode = genericEncode options

-- | Constructs GetTraceSummariesRequest from required parameters
newGetTraceSummariesRequest :: Types.Timestamp -> Types.Timestamp -> GetTraceSummariesRequest
newGetTraceSummariesRequest _EndTime _StartTime = GetTraceSummariesRequest { "EndTime": _EndTime, "StartTime": _StartTime, "FilterExpression": Nothing, "NextToken": Nothing, "Sampling": Nothing }

-- | Constructs GetTraceSummariesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetTraceSummariesRequest' :: Types.Timestamp -> Types.Timestamp -> ( { "StartTime" :: (Types.Timestamp) , "EndTime" :: (Types.Timestamp) , "Sampling" :: Maybe (NullableBoolean) , "FilterExpression" :: Maybe (FilterExpression) , "NextToken" :: Maybe (String) } -> {"StartTime" :: (Types.Timestamp) , "EndTime" :: (Types.Timestamp) , "Sampling" :: Maybe (NullableBoolean) , "FilterExpression" :: Maybe (FilterExpression) , "NextToken" :: Maybe (String) } ) -> GetTraceSummariesRequest
newGetTraceSummariesRequest' _EndTime _StartTime customize = (GetTraceSummariesRequest <<< customize) { "EndTime": _EndTime, "StartTime": _StartTime, "FilterExpression": Nothing, "NextToken": Nothing, "Sampling": Nothing }



newtype GetTraceSummariesResult = GetTraceSummariesResult 
  { "TraceSummaries" :: Maybe (TraceSummaryList)
  , "ApproximateTime" :: Maybe (Types.Timestamp)
  , "TracesProcessedCount" :: Maybe (NullableLong)
  , "NextToken" :: Maybe (String)
  }
derive instance newtypeGetTraceSummariesResult :: Newtype GetTraceSummariesResult _
derive instance repGenericGetTraceSummariesResult :: Generic GetTraceSummariesResult _
instance showGetTraceSummariesResult :: Show GetTraceSummariesResult where show = genericShow
instance decodeGetTraceSummariesResult :: Decode GetTraceSummariesResult where decode = genericDecode options
instance encodeGetTraceSummariesResult :: Encode GetTraceSummariesResult where encode = genericEncode options

-- | Constructs GetTraceSummariesResult from required parameters
newGetTraceSummariesResult :: GetTraceSummariesResult
newGetTraceSummariesResult  = GetTraceSummariesResult { "ApproximateTime": Nothing, "NextToken": Nothing, "TraceSummaries": Nothing, "TracesProcessedCount": Nothing }

-- | Constructs GetTraceSummariesResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetTraceSummariesResult' :: ( { "TraceSummaries" :: Maybe (TraceSummaryList) , "ApproximateTime" :: Maybe (Types.Timestamp) , "TracesProcessedCount" :: Maybe (NullableLong) , "NextToken" :: Maybe (String) } -> {"TraceSummaries" :: Maybe (TraceSummaryList) , "ApproximateTime" :: Maybe (Types.Timestamp) , "TracesProcessedCount" :: Maybe (NullableLong) , "NextToken" :: Maybe (String) } ) -> GetTraceSummariesResult
newGetTraceSummariesResult'  customize = (GetTraceSummariesResult <<< customize) { "ApproximateTime": Nothing, "NextToken": Nothing, "TraceSummaries": Nothing, "TracesProcessedCount": Nothing }



newtype Histogram = Histogram (Array HistogramEntry)
derive instance newtypeHistogram :: Newtype Histogram _
derive instance repGenericHistogram :: Generic Histogram _
instance showHistogram :: Show Histogram where show = genericShow
instance decodeHistogram :: Decode Histogram where decode = genericDecode options
instance encodeHistogram :: Encode Histogram where encode = genericEncode options



-- | <p>An entry in a histogram for a statistic. A histogram maps the range of observed values on the X axis, and the prevalence of each value on the Y axis.</p>
newtype HistogramEntry = HistogramEntry 
  { "Value" :: Maybe (Number)
  , "Count" :: Maybe (Int)
  }
derive instance newtypeHistogramEntry :: Newtype HistogramEntry _
derive instance repGenericHistogramEntry :: Generic HistogramEntry _
instance showHistogramEntry :: Show HistogramEntry where show = genericShow
instance decodeHistogramEntry :: Decode HistogramEntry where decode = genericDecode options
instance encodeHistogramEntry :: Encode HistogramEntry where encode = genericEncode options

-- | Constructs HistogramEntry from required parameters
newHistogramEntry :: HistogramEntry
newHistogramEntry  = HistogramEntry { "Count": Nothing, "Value": Nothing }

-- | Constructs HistogramEntry's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHistogramEntry' :: ( { "Value" :: Maybe (Number) , "Count" :: Maybe (Int) } -> {"Value" :: Maybe (Number) , "Count" :: Maybe (Int) } ) -> HistogramEntry
newHistogramEntry'  customize = (HistogramEntry <<< customize) { "Count": Nothing, "Value": Nothing }



newtype Hostname = Hostname String
derive instance newtypeHostname :: Newtype Hostname _
derive instance repGenericHostname :: Generic Hostname _
instance showHostname :: Show Hostname where show = genericShow
instance decodeHostname :: Decode Hostname where decode = genericDecode options
instance encodeHostname :: Encode Hostname where encode = genericEncode options



-- | <p>Information about an HTTP request.</p>
newtype Http = Http 
  { "HttpURL" :: Maybe (String)
  , "HttpStatus" :: Maybe (NullableInteger)
  , "HttpMethod" :: Maybe (String)
  , "UserAgent" :: Maybe (String)
  , "ClientIp" :: Maybe (String)
  }
derive instance newtypeHttp :: Newtype Http _
derive instance repGenericHttp :: Generic Http _
instance showHttp :: Show Http where show = genericShow
instance decodeHttp :: Decode Http where decode = genericDecode options
instance encodeHttp :: Encode Http where encode = genericEncode options

-- | Constructs Http from required parameters
newHttp :: Http
newHttp  = Http { "ClientIp": Nothing, "HttpMethod": Nothing, "HttpStatus": Nothing, "HttpURL": Nothing, "UserAgent": Nothing }

-- | Constructs Http's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHttp' :: ( { "HttpURL" :: Maybe (String) , "HttpStatus" :: Maybe (NullableInteger) , "HttpMethod" :: Maybe (String) , "UserAgent" :: Maybe (String) , "ClientIp" :: Maybe (String) } -> {"HttpURL" :: Maybe (String) , "HttpStatus" :: Maybe (NullableInteger) , "HttpMethod" :: Maybe (String) , "UserAgent" :: Maybe (String) , "ClientIp" :: Maybe (String) } ) -> Http
newHttp'  customize = (Http <<< customize) { "ClientIp": Nothing, "HttpMethod": Nothing, "HttpStatus": Nothing, "HttpURL": Nothing, "UserAgent": Nothing }



-- | <p>The request is missing required parameters or has invalid parameters.</p>
newtype InvalidRequestException = InvalidRequestException 
  { "Message" :: Maybe (ErrorMessage)
  }
derive instance newtypeInvalidRequestException :: Newtype InvalidRequestException _
derive instance repGenericInvalidRequestException :: Generic InvalidRequestException _
instance showInvalidRequestException :: Show InvalidRequestException where show = genericShow
instance decodeInvalidRequestException :: Decode InvalidRequestException where decode = genericDecode options
instance encodeInvalidRequestException :: Encode InvalidRequestException where encode = genericEncode options

-- | Constructs InvalidRequestException from required parameters
newInvalidRequestException :: InvalidRequestException
newInvalidRequestException  = InvalidRequestException { "Message": Nothing }

-- | Constructs InvalidRequestException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidRequestException' :: ( { "Message" :: Maybe (ErrorMessage) } -> {"Message" :: Maybe (ErrorMessage) } ) -> InvalidRequestException
newInvalidRequestException'  customize = (InvalidRequestException <<< customize) { "Message": Nothing }



newtype NullableBoolean = NullableBoolean Boolean
derive instance newtypeNullableBoolean :: Newtype NullableBoolean _
derive instance repGenericNullableBoolean :: Generic NullableBoolean _
instance showNullableBoolean :: Show NullableBoolean where show = genericShow
instance decodeNullableBoolean :: Decode NullableBoolean where decode = genericDecode options
instance encodeNullableBoolean :: Encode NullableBoolean where encode = genericEncode options



newtype NullableDouble = NullableDouble Number
derive instance newtypeNullableDouble :: Newtype NullableDouble _
derive instance repGenericNullableDouble :: Generic NullableDouble _
instance showNullableDouble :: Show NullableDouble where show = genericShow
instance decodeNullableDouble :: Decode NullableDouble where decode = genericDecode options
instance encodeNullableDouble :: Encode NullableDouble where encode = genericEncode options



newtype NullableInteger = NullableInteger Int
derive instance newtypeNullableInteger :: Newtype NullableInteger _
derive instance repGenericNullableInteger :: Generic NullableInteger _
instance showNullableInteger :: Show NullableInteger where show = genericShow
instance decodeNullableInteger :: Decode NullableInteger where decode = genericDecode options
instance encodeNullableInteger :: Encode NullableInteger where encode = genericEncode options



newtype NullableLong = NullableLong Number
derive instance newtypeNullableLong :: Newtype NullableLong _
derive instance repGenericNullableLong :: Generic NullableLong _
instance showNullableLong :: Show NullableLong where show = genericShow
instance decodeNullableLong :: Decode NullableLong where decode = genericDecode options
instance encodeNullableLong :: Encode NullableLong where encode = genericEncode options



newtype PutTelemetryRecordsRequest = PutTelemetryRecordsRequest 
  { "TelemetryRecords" :: (TelemetryRecordList)
  , "EC2InstanceId" :: Maybe (EC2InstanceId)
  , "Hostname" :: Maybe (Hostname)
  , "ResourceARN" :: Maybe (ResourceARN)
  }
derive instance newtypePutTelemetryRecordsRequest :: Newtype PutTelemetryRecordsRequest _
derive instance repGenericPutTelemetryRecordsRequest :: Generic PutTelemetryRecordsRequest _
instance showPutTelemetryRecordsRequest :: Show PutTelemetryRecordsRequest where show = genericShow
instance decodePutTelemetryRecordsRequest :: Decode PutTelemetryRecordsRequest where decode = genericDecode options
instance encodePutTelemetryRecordsRequest :: Encode PutTelemetryRecordsRequest where encode = genericEncode options

-- | Constructs PutTelemetryRecordsRequest from required parameters
newPutTelemetryRecordsRequest :: TelemetryRecordList -> PutTelemetryRecordsRequest
newPutTelemetryRecordsRequest _TelemetryRecords = PutTelemetryRecordsRequest { "TelemetryRecords": _TelemetryRecords, "EC2InstanceId": Nothing, "Hostname": Nothing, "ResourceARN": Nothing }

-- | Constructs PutTelemetryRecordsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutTelemetryRecordsRequest' :: TelemetryRecordList -> ( { "TelemetryRecords" :: (TelemetryRecordList) , "EC2InstanceId" :: Maybe (EC2InstanceId) , "Hostname" :: Maybe (Hostname) , "ResourceARN" :: Maybe (ResourceARN) } -> {"TelemetryRecords" :: (TelemetryRecordList) , "EC2InstanceId" :: Maybe (EC2InstanceId) , "Hostname" :: Maybe (Hostname) , "ResourceARN" :: Maybe (ResourceARN) } ) -> PutTelemetryRecordsRequest
newPutTelemetryRecordsRequest' _TelemetryRecords customize = (PutTelemetryRecordsRequest <<< customize) { "TelemetryRecords": _TelemetryRecords, "EC2InstanceId": Nothing, "Hostname": Nothing, "ResourceARN": Nothing }



newtype PutTelemetryRecordsResult = PutTelemetryRecordsResult Types.NoArguments
derive instance newtypePutTelemetryRecordsResult :: Newtype PutTelemetryRecordsResult _
derive instance repGenericPutTelemetryRecordsResult :: Generic PutTelemetryRecordsResult _
instance showPutTelemetryRecordsResult :: Show PutTelemetryRecordsResult where show = genericShow
instance decodePutTelemetryRecordsResult :: Decode PutTelemetryRecordsResult where decode = genericDecode options
instance encodePutTelemetryRecordsResult :: Encode PutTelemetryRecordsResult where encode = genericEncode options



newtype PutTraceSegmentsRequest = PutTraceSegmentsRequest 
  { "TraceSegmentDocuments" :: (TraceSegmentDocumentList)
  }
derive instance newtypePutTraceSegmentsRequest :: Newtype PutTraceSegmentsRequest _
derive instance repGenericPutTraceSegmentsRequest :: Generic PutTraceSegmentsRequest _
instance showPutTraceSegmentsRequest :: Show PutTraceSegmentsRequest where show = genericShow
instance decodePutTraceSegmentsRequest :: Decode PutTraceSegmentsRequest where decode = genericDecode options
instance encodePutTraceSegmentsRequest :: Encode PutTraceSegmentsRequest where encode = genericEncode options

-- | Constructs PutTraceSegmentsRequest from required parameters
newPutTraceSegmentsRequest :: TraceSegmentDocumentList -> PutTraceSegmentsRequest
newPutTraceSegmentsRequest _TraceSegmentDocuments = PutTraceSegmentsRequest { "TraceSegmentDocuments": _TraceSegmentDocuments }

-- | Constructs PutTraceSegmentsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutTraceSegmentsRequest' :: TraceSegmentDocumentList -> ( { "TraceSegmentDocuments" :: (TraceSegmentDocumentList) } -> {"TraceSegmentDocuments" :: (TraceSegmentDocumentList) } ) -> PutTraceSegmentsRequest
newPutTraceSegmentsRequest' _TraceSegmentDocuments customize = (PutTraceSegmentsRequest <<< customize) { "TraceSegmentDocuments": _TraceSegmentDocuments }



newtype PutTraceSegmentsResult = PutTraceSegmentsResult 
  { "UnprocessedTraceSegments" :: Maybe (UnprocessedTraceSegmentList)
  }
derive instance newtypePutTraceSegmentsResult :: Newtype PutTraceSegmentsResult _
derive instance repGenericPutTraceSegmentsResult :: Generic PutTraceSegmentsResult _
instance showPutTraceSegmentsResult :: Show PutTraceSegmentsResult where show = genericShow
instance decodePutTraceSegmentsResult :: Decode PutTraceSegmentsResult where decode = genericDecode options
instance encodePutTraceSegmentsResult :: Encode PutTraceSegmentsResult where encode = genericEncode options

-- | Constructs PutTraceSegmentsResult from required parameters
newPutTraceSegmentsResult :: PutTraceSegmentsResult
newPutTraceSegmentsResult  = PutTraceSegmentsResult { "UnprocessedTraceSegments": Nothing }

-- | Constructs PutTraceSegmentsResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutTraceSegmentsResult' :: ( { "UnprocessedTraceSegments" :: Maybe (UnprocessedTraceSegmentList) } -> {"UnprocessedTraceSegments" :: Maybe (UnprocessedTraceSegmentList) } ) -> PutTraceSegmentsResult
newPutTraceSegmentsResult'  customize = (PutTraceSegmentsResult <<< customize) { "UnprocessedTraceSegments": Nothing }



newtype ResourceARN = ResourceARN String
derive instance newtypeResourceARN :: Newtype ResourceARN _
derive instance repGenericResourceARN :: Generic ResourceARN _
instance showResourceARN :: Show ResourceARN where show = genericShow
instance decodeResourceARN :: Decode ResourceARN where decode = genericDecode options
instance encodeResourceARN :: Encode ResourceARN where encode = genericEncode options



-- | <p>A segment from a trace that has been ingested by the X-Ray service. The segment can be compiled from documents uploaded with <a>PutTraceSegments</a>, or an <code>inferred</code> segment for a downstream service, generated from a subsegment sent by the service that called it.</p>
newtype Segment = Segment 
  { "Id" :: Maybe (SegmentId)
  , "Document" :: Maybe (SegmentDocument)
  }
derive instance newtypeSegment :: Newtype Segment _
derive instance repGenericSegment :: Generic Segment _
instance showSegment :: Show Segment where show = genericShow
instance decodeSegment :: Decode Segment where decode = genericDecode options
instance encodeSegment :: Encode Segment where encode = genericEncode options

-- | Constructs Segment from required parameters
newSegment :: Segment
newSegment  = Segment { "Document": Nothing, "Id": Nothing }

-- | Constructs Segment's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSegment' :: ( { "Id" :: Maybe (SegmentId) , "Document" :: Maybe (SegmentDocument) } -> {"Id" :: Maybe (SegmentId) , "Document" :: Maybe (SegmentDocument) } ) -> Segment
newSegment'  customize = (Segment <<< customize) { "Document": Nothing, "Id": Nothing }



newtype SegmentDocument = SegmentDocument String
derive instance newtypeSegmentDocument :: Newtype SegmentDocument _
derive instance repGenericSegmentDocument :: Generic SegmentDocument _
instance showSegmentDocument :: Show SegmentDocument where show = genericShow
instance decodeSegmentDocument :: Decode SegmentDocument where decode = genericDecode options
instance encodeSegmentDocument :: Encode SegmentDocument where encode = genericEncode options



newtype SegmentId = SegmentId String
derive instance newtypeSegmentId :: Newtype SegmentId _
derive instance repGenericSegmentId :: Generic SegmentId _
instance showSegmentId :: Show SegmentId where show = genericShow
instance decodeSegmentId :: Decode SegmentId where decode = genericDecode options
instance encodeSegmentId :: Encode SegmentId where encode = genericEncode options



newtype SegmentList = SegmentList (Array Segment)
derive instance newtypeSegmentList :: Newtype SegmentList _
derive instance repGenericSegmentList :: Generic SegmentList _
instance showSegmentList :: Show SegmentList where show = genericShow
instance decodeSegmentList :: Decode SegmentList where decode = genericDecode options
instance encodeSegmentList :: Encode SegmentList where encode = genericEncode options



-- | <p>Information about an application that processed requests, users that made requests, or downstream services, resources and applications that an application used.</p>
newtype Service = Service 
  { "ReferenceId" :: Maybe (NullableInteger)
  , "Name" :: Maybe (String)
  , "Names" :: Maybe (ServiceNames)
  , "Root" :: Maybe (NullableBoolean)
  , "AccountId" :: Maybe (String)
  , "Type" :: Maybe (String)
  , "State" :: Maybe (String)
  , "StartTime" :: Maybe (Types.Timestamp)
  , "EndTime" :: Maybe (Types.Timestamp)
  , "Edges" :: Maybe (EdgeList)
  , "SummaryStatistics" :: Maybe (ServiceStatistics)
  , "DurationHistogram" :: Maybe (Histogram)
  , "ResponseTimeHistogram" :: Maybe (Histogram)
  }
derive instance newtypeService :: Newtype Service _
derive instance repGenericService :: Generic Service _
instance showService :: Show Service where show = genericShow
instance decodeService :: Decode Service where decode = genericDecode options
instance encodeService :: Encode Service where encode = genericEncode options

-- | Constructs Service from required parameters
newService :: Service
newService  = Service { "AccountId": Nothing, "DurationHistogram": Nothing, "Edges": Nothing, "EndTime": Nothing, "Name": Nothing, "Names": Nothing, "ReferenceId": Nothing, "ResponseTimeHistogram": Nothing, "Root": Nothing, "StartTime": Nothing, "State": Nothing, "SummaryStatistics": Nothing, "Type": Nothing }

-- | Constructs Service's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newService' :: ( { "ReferenceId" :: Maybe (NullableInteger) , "Name" :: Maybe (String) , "Names" :: Maybe (ServiceNames) , "Root" :: Maybe (NullableBoolean) , "AccountId" :: Maybe (String) , "Type" :: Maybe (String) , "State" :: Maybe (String) , "StartTime" :: Maybe (Types.Timestamp) , "EndTime" :: Maybe (Types.Timestamp) , "Edges" :: Maybe (EdgeList) , "SummaryStatistics" :: Maybe (ServiceStatistics) , "DurationHistogram" :: Maybe (Histogram) , "ResponseTimeHistogram" :: Maybe (Histogram) } -> {"ReferenceId" :: Maybe (NullableInteger) , "Name" :: Maybe (String) , "Names" :: Maybe (ServiceNames) , "Root" :: Maybe (NullableBoolean) , "AccountId" :: Maybe (String) , "Type" :: Maybe (String) , "State" :: Maybe (String) , "StartTime" :: Maybe (Types.Timestamp) , "EndTime" :: Maybe (Types.Timestamp) , "Edges" :: Maybe (EdgeList) , "SummaryStatistics" :: Maybe (ServiceStatistics) , "DurationHistogram" :: Maybe (Histogram) , "ResponseTimeHistogram" :: Maybe (Histogram) } ) -> Service
newService'  customize = (Service <<< customize) { "AccountId": Nothing, "DurationHistogram": Nothing, "Edges": Nothing, "EndTime": Nothing, "Name": Nothing, "Names": Nothing, "ReferenceId": Nothing, "ResponseTimeHistogram": Nothing, "Root": Nothing, "StartTime": Nothing, "State": Nothing, "SummaryStatistics": Nothing, "Type": Nothing }



-- | <p/>
newtype ServiceId = ServiceId 
  { "Name" :: Maybe (String)
  , "Names" :: Maybe (ServiceNames)
  , "AccountId" :: Maybe (String)
  , "Type" :: Maybe (String)
  }
derive instance newtypeServiceId :: Newtype ServiceId _
derive instance repGenericServiceId :: Generic ServiceId _
instance showServiceId :: Show ServiceId where show = genericShow
instance decodeServiceId :: Decode ServiceId where decode = genericDecode options
instance encodeServiceId :: Encode ServiceId where encode = genericEncode options

-- | Constructs ServiceId from required parameters
newServiceId :: ServiceId
newServiceId  = ServiceId { "AccountId": Nothing, "Name": Nothing, "Names": Nothing, "Type": Nothing }

-- | Constructs ServiceId's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServiceId' :: ( { "Name" :: Maybe (String) , "Names" :: Maybe (ServiceNames) , "AccountId" :: Maybe (String) , "Type" :: Maybe (String) } -> {"Name" :: Maybe (String) , "Names" :: Maybe (ServiceNames) , "AccountId" :: Maybe (String) , "Type" :: Maybe (String) } ) -> ServiceId
newServiceId'  customize = (ServiceId <<< customize) { "AccountId": Nothing, "Name": Nothing, "Names": Nothing, "Type": Nothing }



newtype ServiceIds = ServiceIds (Array ServiceId)
derive instance newtypeServiceIds :: Newtype ServiceIds _
derive instance repGenericServiceIds :: Generic ServiceIds _
instance showServiceIds :: Show ServiceIds where show = genericShow
instance decodeServiceIds :: Decode ServiceIds where decode = genericDecode options
instance encodeServiceIds :: Encode ServiceIds where encode = genericEncode options



newtype ServiceList = ServiceList (Array Service)
derive instance newtypeServiceList :: Newtype ServiceList _
derive instance repGenericServiceList :: Generic ServiceList _
instance showServiceList :: Show ServiceList where show = genericShow
instance decodeServiceList :: Decode ServiceList where decode = genericDecode options
instance encodeServiceList :: Encode ServiceList where encode = genericEncode options



newtype ServiceNames = ServiceNames (Array String)
derive instance newtypeServiceNames :: Newtype ServiceNames _
derive instance repGenericServiceNames :: Generic ServiceNames _
instance showServiceNames :: Show ServiceNames where show = genericShow
instance decodeServiceNames :: Decode ServiceNames where decode = genericDecode options
instance encodeServiceNames :: Encode ServiceNames where encode = genericEncode options



-- | <p>Response statistics for a service.</p>
newtype ServiceStatistics = ServiceStatistics 
  { "OkCount" :: Maybe (NullableLong)
  , "ErrorStatistics" :: Maybe (ErrorStatistics)
  , "FaultStatistics" :: Maybe (FaultStatistics)
  , "TotalCount" :: Maybe (NullableLong)
  , "TotalResponseTime" :: Maybe (NullableDouble)
  }
derive instance newtypeServiceStatistics :: Newtype ServiceStatistics _
derive instance repGenericServiceStatistics :: Generic ServiceStatistics _
instance showServiceStatistics :: Show ServiceStatistics where show = genericShow
instance decodeServiceStatistics :: Decode ServiceStatistics where decode = genericDecode options
instance encodeServiceStatistics :: Encode ServiceStatistics where encode = genericEncode options

-- | Constructs ServiceStatistics from required parameters
newServiceStatistics :: ServiceStatistics
newServiceStatistics  = ServiceStatistics { "ErrorStatistics": Nothing, "FaultStatistics": Nothing, "OkCount": Nothing, "TotalCount": Nothing, "TotalResponseTime": Nothing }

-- | Constructs ServiceStatistics's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServiceStatistics' :: ( { "OkCount" :: Maybe (NullableLong) , "ErrorStatistics" :: Maybe (ErrorStatistics) , "FaultStatistics" :: Maybe (FaultStatistics) , "TotalCount" :: Maybe (NullableLong) , "TotalResponseTime" :: Maybe (NullableDouble) } -> {"OkCount" :: Maybe (NullableLong) , "ErrorStatistics" :: Maybe (ErrorStatistics) , "FaultStatistics" :: Maybe (FaultStatistics) , "TotalCount" :: Maybe (NullableLong) , "TotalResponseTime" :: Maybe (NullableDouble) } ) -> ServiceStatistics
newServiceStatistics'  customize = (ServiceStatistics <<< customize) { "ErrorStatistics": Nothing, "FaultStatistics": Nothing, "OkCount": Nothing, "TotalCount": Nothing, "TotalResponseTime": Nothing }



-- | <p/>
newtype TelemetryRecord = TelemetryRecord 
  { "Timestamp" :: (Types.Timestamp)
  , "SegmentsReceivedCount" :: Maybe (NullableInteger)
  , "SegmentsSentCount" :: Maybe (NullableInteger)
  , "SegmentsSpilloverCount" :: Maybe (NullableInteger)
  , "SegmentsRejectedCount" :: Maybe (NullableInteger)
  , "BackendConnectionErrors" :: Maybe (BackendConnectionErrors)
  }
derive instance newtypeTelemetryRecord :: Newtype TelemetryRecord _
derive instance repGenericTelemetryRecord :: Generic TelemetryRecord _
instance showTelemetryRecord :: Show TelemetryRecord where show = genericShow
instance decodeTelemetryRecord :: Decode TelemetryRecord where decode = genericDecode options
instance encodeTelemetryRecord :: Encode TelemetryRecord where encode = genericEncode options

-- | Constructs TelemetryRecord from required parameters
newTelemetryRecord :: Types.Timestamp -> TelemetryRecord
newTelemetryRecord _Timestamp = TelemetryRecord { "Timestamp": _Timestamp, "BackendConnectionErrors": Nothing, "SegmentsReceivedCount": Nothing, "SegmentsRejectedCount": Nothing, "SegmentsSentCount": Nothing, "SegmentsSpilloverCount": Nothing }

-- | Constructs TelemetryRecord's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTelemetryRecord' :: Types.Timestamp -> ( { "Timestamp" :: (Types.Timestamp) , "SegmentsReceivedCount" :: Maybe (NullableInteger) , "SegmentsSentCount" :: Maybe (NullableInteger) , "SegmentsSpilloverCount" :: Maybe (NullableInteger) , "SegmentsRejectedCount" :: Maybe (NullableInteger) , "BackendConnectionErrors" :: Maybe (BackendConnectionErrors) } -> {"Timestamp" :: (Types.Timestamp) , "SegmentsReceivedCount" :: Maybe (NullableInteger) , "SegmentsSentCount" :: Maybe (NullableInteger) , "SegmentsSpilloverCount" :: Maybe (NullableInteger) , "SegmentsRejectedCount" :: Maybe (NullableInteger) , "BackendConnectionErrors" :: Maybe (BackendConnectionErrors) } ) -> TelemetryRecord
newTelemetryRecord' _Timestamp customize = (TelemetryRecord <<< customize) { "Timestamp": _Timestamp, "BackendConnectionErrors": Nothing, "SegmentsReceivedCount": Nothing, "SegmentsRejectedCount": Nothing, "SegmentsSentCount": Nothing, "SegmentsSpilloverCount": Nothing }



newtype TelemetryRecordList = TelemetryRecordList (Array TelemetryRecord)
derive instance newtypeTelemetryRecordList :: Newtype TelemetryRecordList _
derive instance repGenericTelemetryRecordList :: Generic TelemetryRecordList _
instance showTelemetryRecordList :: Show TelemetryRecordList where show = genericShow
instance decodeTelemetryRecordList :: Decode TelemetryRecordList where decode = genericDecode options
instance encodeTelemetryRecordList :: Encode TelemetryRecordList where encode = genericEncode options



-- | <p>The request exceeds the maximum number of requests per second.</p>
newtype ThrottledException = ThrottledException 
  { "Message" :: Maybe (ErrorMessage)
  }
derive instance newtypeThrottledException :: Newtype ThrottledException _
derive instance repGenericThrottledException :: Generic ThrottledException _
instance showThrottledException :: Show ThrottledException where show = genericShow
instance decodeThrottledException :: Decode ThrottledException where decode = genericDecode options
instance encodeThrottledException :: Encode ThrottledException where encode = genericEncode options

-- | Constructs ThrottledException from required parameters
newThrottledException :: ThrottledException
newThrottledException  = ThrottledException { "Message": Nothing }

-- | Constructs ThrottledException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newThrottledException' :: ( { "Message" :: Maybe (ErrorMessage) } -> {"Message" :: Maybe (ErrorMessage) } ) -> ThrottledException
newThrottledException'  customize = (ThrottledException <<< customize) { "Message": Nothing }



-- | <p>A collection of segment documents with matching trace IDs.</p>
newtype Trace = Trace 
  { "Id" :: Maybe (TraceId)
  , "Duration" :: Maybe (NullableDouble)
  , "Segments" :: Maybe (SegmentList)
  }
derive instance newtypeTrace :: Newtype Trace _
derive instance repGenericTrace :: Generic Trace _
instance showTrace :: Show Trace where show = genericShow
instance decodeTrace :: Decode Trace where decode = genericDecode options
instance encodeTrace :: Encode Trace where encode = genericEncode options

-- | Constructs Trace from required parameters
newTrace :: Trace
newTrace  = Trace { "Duration": Nothing, "Id": Nothing, "Segments": Nothing }

-- | Constructs Trace's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTrace' :: ( { "Id" :: Maybe (TraceId) , "Duration" :: Maybe (NullableDouble) , "Segments" :: Maybe (SegmentList) } -> {"Id" :: Maybe (TraceId) , "Duration" :: Maybe (NullableDouble) , "Segments" :: Maybe (SegmentList) } ) -> Trace
newTrace'  customize = (Trace <<< customize) { "Duration": Nothing, "Id": Nothing, "Segments": Nothing }



newtype TraceId = TraceId String
derive instance newtypeTraceId :: Newtype TraceId _
derive instance repGenericTraceId :: Generic TraceId _
instance showTraceId :: Show TraceId where show = genericShow
instance decodeTraceId :: Decode TraceId where decode = genericDecode options
instance encodeTraceId :: Encode TraceId where encode = genericEncode options



newtype TraceIdList = TraceIdList (Array TraceId)
derive instance newtypeTraceIdList :: Newtype TraceIdList _
derive instance repGenericTraceIdList :: Generic TraceIdList _
instance showTraceIdList :: Show TraceIdList where show = genericShow
instance decodeTraceIdList :: Decode TraceIdList where decode = genericDecode options
instance encodeTraceIdList :: Encode TraceIdList where encode = genericEncode options



newtype TraceList = TraceList (Array Trace)
derive instance newtypeTraceList :: Newtype TraceList _
derive instance repGenericTraceList :: Generic TraceList _
instance showTraceList :: Show TraceList where show = genericShow
instance decodeTraceList :: Decode TraceList where decode = genericDecode options
instance encodeTraceList :: Encode TraceList where encode = genericEncode options



newtype TraceSegmentDocument = TraceSegmentDocument String
derive instance newtypeTraceSegmentDocument :: Newtype TraceSegmentDocument _
derive instance repGenericTraceSegmentDocument :: Generic TraceSegmentDocument _
instance showTraceSegmentDocument :: Show TraceSegmentDocument where show = genericShow
instance decodeTraceSegmentDocument :: Decode TraceSegmentDocument where decode = genericDecode options
instance encodeTraceSegmentDocument :: Encode TraceSegmentDocument where encode = genericEncode options



newtype TraceSegmentDocumentList = TraceSegmentDocumentList (Array TraceSegmentDocument)
derive instance newtypeTraceSegmentDocumentList :: Newtype TraceSegmentDocumentList _
derive instance repGenericTraceSegmentDocumentList :: Generic TraceSegmentDocumentList _
instance showTraceSegmentDocumentList :: Show TraceSegmentDocumentList where show = genericShow
instance decodeTraceSegmentDocumentList :: Decode TraceSegmentDocumentList where decode = genericDecode options
instance encodeTraceSegmentDocumentList :: Encode TraceSegmentDocumentList where encode = genericEncode options



-- | <p>Metadata generated from the segment documents in a trace.</p>
newtype TraceSummary = TraceSummary 
  { "Id" :: Maybe (TraceId)
  , "Duration" :: Maybe (NullableDouble)
  , "ResponseTime" :: Maybe (NullableDouble)
  , "HasFault" :: Maybe (NullableBoolean)
  , "HasError" :: Maybe (NullableBoolean)
  , "HasThrottle" :: Maybe (NullableBoolean)
  , "IsPartial" :: Maybe (NullableBoolean)
  , "Http" :: Maybe (Http)
  , "Annotations" :: Maybe (Annotations)
  , "Users" :: Maybe (TraceUsers)
  , "ServiceIds" :: Maybe (ServiceIds)
  }
derive instance newtypeTraceSummary :: Newtype TraceSummary _
derive instance repGenericTraceSummary :: Generic TraceSummary _
instance showTraceSummary :: Show TraceSummary where show = genericShow
instance decodeTraceSummary :: Decode TraceSummary where decode = genericDecode options
instance encodeTraceSummary :: Encode TraceSummary where encode = genericEncode options

-- | Constructs TraceSummary from required parameters
newTraceSummary :: TraceSummary
newTraceSummary  = TraceSummary { "Annotations": Nothing, "Duration": Nothing, "HasError": Nothing, "HasFault": Nothing, "HasThrottle": Nothing, "Http": Nothing, "Id": Nothing, "IsPartial": Nothing, "ResponseTime": Nothing, "ServiceIds": Nothing, "Users": Nothing }

-- | Constructs TraceSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTraceSummary' :: ( { "Id" :: Maybe (TraceId) , "Duration" :: Maybe (NullableDouble) , "ResponseTime" :: Maybe (NullableDouble) , "HasFault" :: Maybe (NullableBoolean) , "HasError" :: Maybe (NullableBoolean) , "HasThrottle" :: Maybe (NullableBoolean) , "IsPartial" :: Maybe (NullableBoolean) , "Http" :: Maybe (Http) , "Annotations" :: Maybe (Annotations) , "Users" :: Maybe (TraceUsers) , "ServiceIds" :: Maybe (ServiceIds) } -> {"Id" :: Maybe (TraceId) , "Duration" :: Maybe (NullableDouble) , "ResponseTime" :: Maybe (NullableDouble) , "HasFault" :: Maybe (NullableBoolean) , "HasError" :: Maybe (NullableBoolean) , "HasThrottle" :: Maybe (NullableBoolean) , "IsPartial" :: Maybe (NullableBoolean) , "Http" :: Maybe (Http) , "Annotations" :: Maybe (Annotations) , "Users" :: Maybe (TraceUsers) , "ServiceIds" :: Maybe (ServiceIds) } ) -> TraceSummary
newTraceSummary'  customize = (TraceSummary <<< customize) { "Annotations": Nothing, "Duration": Nothing, "HasError": Nothing, "HasFault": Nothing, "HasThrottle": Nothing, "Http": Nothing, "Id": Nothing, "IsPartial": Nothing, "ResponseTime": Nothing, "ServiceIds": Nothing, "Users": Nothing }



newtype TraceSummaryList = TraceSummaryList (Array TraceSummary)
derive instance newtypeTraceSummaryList :: Newtype TraceSummaryList _
derive instance repGenericTraceSummaryList :: Generic TraceSummaryList _
instance showTraceSummaryList :: Show TraceSummaryList where show = genericShow
instance decodeTraceSummaryList :: Decode TraceSummaryList where decode = genericDecode options
instance encodeTraceSummaryList :: Encode TraceSummaryList where encode = genericEncode options



-- | <p>Information about a user recorded in segment documents.</p>
newtype TraceUser = TraceUser 
  { "UserName" :: Maybe (String)
  , "ServiceIds" :: Maybe (ServiceIds)
  }
derive instance newtypeTraceUser :: Newtype TraceUser _
derive instance repGenericTraceUser :: Generic TraceUser _
instance showTraceUser :: Show TraceUser where show = genericShow
instance decodeTraceUser :: Decode TraceUser where decode = genericDecode options
instance encodeTraceUser :: Encode TraceUser where encode = genericEncode options

-- | Constructs TraceUser from required parameters
newTraceUser :: TraceUser
newTraceUser  = TraceUser { "ServiceIds": Nothing, "UserName": Nothing }

-- | Constructs TraceUser's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTraceUser' :: ( { "UserName" :: Maybe (String) , "ServiceIds" :: Maybe (ServiceIds) } -> {"UserName" :: Maybe (String) , "ServiceIds" :: Maybe (ServiceIds) } ) -> TraceUser
newTraceUser'  customize = (TraceUser <<< customize) { "ServiceIds": Nothing, "UserName": Nothing }



newtype TraceUsers = TraceUsers (Array TraceUser)
derive instance newtypeTraceUsers :: Newtype TraceUsers _
derive instance repGenericTraceUsers :: Generic TraceUsers _
instance showTraceUsers :: Show TraceUsers where show = genericShow
instance decodeTraceUsers :: Decode TraceUsers where decode = genericDecode options
instance encodeTraceUsers :: Encode TraceUsers where encode = genericEncode options



newtype UnprocessedTraceIdList = UnprocessedTraceIdList (Array TraceId)
derive instance newtypeUnprocessedTraceIdList :: Newtype UnprocessedTraceIdList _
derive instance repGenericUnprocessedTraceIdList :: Generic UnprocessedTraceIdList _
instance showUnprocessedTraceIdList :: Show UnprocessedTraceIdList where show = genericShow
instance decodeUnprocessedTraceIdList :: Decode UnprocessedTraceIdList where decode = genericDecode options
instance encodeUnprocessedTraceIdList :: Encode UnprocessedTraceIdList where encode = genericEncode options



-- | <p>Information about a segment that failed processing.</p>
newtype UnprocessedTraceSegment = UnprocessedTraceSegment 
  { "Id" :: Maybe (String)
  , "ErrorCode" :: Maybe (String)
  , "Message" :: Maybe (String)
  }
derive instance newtypeUnprocessedTraceSegment :: Newtype UnprocessedTraceSegment _
derive instance repGenericUnprocessedTraceSegment :: Generic UnprocessedTraceSegment _
instance showUnprocessedTraceSegment :: Show UnprocessedTraceSegment where show = genericShow
instance decodeUnprocessedTraceSegment :: Decode UnprocessedTraceSegment where decode = genericDecode options
instance encodeUnprocessedTraceSegment :: Encode UnprocessedTraceSegment where encode = genericEncode options

-- | Constructs UnprocessedTraceSegment from required parameters
newUnprocessedTraceSegment :: UnprocessedTraceSegment
newUnprocessedTraceSegment  = UnprocessedTraceSegment { "ErrorCode": Nothing, "Id": Nothing, "Message": Nothing }

-- | Constructs UnprocessedTraceSegment's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUnprocessedTraceSegment' :: ( { "Id" :: Maybe (String) , "ErrorCode" :: Maybe (String) , "Message" :: Maybe (String) } -> {"Id" :: Maybe (String) , "ErrorCode" :: Maybe (String) , "Message" :: Maybe (String) } ) -> UnprocessedTraceSegment
newUnprocessedTraceSegment'  customize = (UnprocessedTraceSegment <<< customize) { "ErrorCode": Nothing, "Id": Nothing, "Message": Nothing }



newtype UnprocessedTraceSegmentList = UnprocessedTraceSegmentList (Array UnprocessedTraceSegment)
derive instance newtypeUnprocessedTraceSegmentList :: Newtype UnprocessedTraceSegmentList _
derive instance repGenericUnprocessedTraceSegmentList :: Generic UnprocessedTraceSegmentList _
instance showUnprocessedTraceSegmentList :: Show UnprocessedTraceSegmentList where show = genericShow
instance decodeUnprocessedTraceSegmentList :: Decode UnprocessedTraceSegmentList where decode = genericDecode options
instance encodeUnprocessedTraceSegmentList :: Encode UnprocessedTraceSegmentList where encode = genericEncode options



-- | <p>Information about a segment annotation.</p>
newtype ValueWithServiceIds = ValueWithServiceIds 
  { "AnnotationValue" :: Maybe (AnnotationValue)
  , "ServiceIds" :: Maybe (ServiceIds)
  }
derive instance newtypeValueWithServiceIds :: Newtype ValueWithServiceIds _
derive instance repGenericValueWithServiceIds :: Generic ValueWithServiceIds _
instance showValueWithServiceIds :: Show ValueWithServiceIds where show = genericShow
instance decodeValueWithServiceIds :: Decode ValueWithServiceIds where decode = genericDecode options
instance encodeValueWithServiceIds :: Encode ValueWithServiceIds where encode = genericEncode options

-- | Constructs ValueWithServiceIds from required parameters
newValueWithServiceIds :: ValueWithServiceIds
newValueWithServiceIds  = ValueWithServiceIds { "AnnotationValue": Nothing, "ServiceIds": Nothing }

-- | Constructs ValueWithServiceIds's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newValueWithServiceIds' :: ( { "AnnotationValue" :: Maybe (AnnotationValue) , "ServiceIds" :: Maybe (ServiceIds) } -> {"AnnotationValue" :: Maybe (AnnotationValue) , "ServiceIds" :: Maybe (ServiceIds) } ) -> ValueWithServiceIds
newValueWithServiceIds'  customize = (ValueWithServiceIds <<< customize) { "AnnotationValue": Nothing, "ServiceIds": Nothing }



newtype ValuesWithServiceIds = ValuesWithServiceIds (Array ValueWithServiceIds)
derive instance newtypeValuesWithServiceIds :: Newtype ValuesWithServiceIds _
derive instance repGenericValuesWithServiceIds :: Generic ValuesWithServiceIds _
instance showValuesWithServiceIds :: Show ValuesWithServiceIds where show = genericShow
instance decodeValuesWithServiceIds :: Decode ValuesWithServiceIds where decode = genericDecode options
instance encodeValuesWithServiceIds :: Encode ValuesWithServiceIds where encode = genericEncode options

