
module AWS.XRay.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
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
  { "Name" :: NullOrUndefined (String)
  , "Names" :: NullOrUndefined (AliasNames)
  , "Type" :: NullOrUndefined (String)
  }
derive instance newtypeAlias :: Newtype Alias _
derive instance repGenericAlias :: Generic Alias _
instance showAlias :: Show Alias where show = genericShow
instance decodeAlias :: Decode Alias where decode = genericDecode options
instance encodeAlias :: Encode Alias where encode = genericEncode options

-- | Constructs Alias from required parameters
newAlias :: Alias
newAlias  = Alias { "Name": (NullOrUndefined Nothing), "Names": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }

-- | Constructs Alias's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAlias' :: ( { "Name" :: NullOrUndefined (String) , "Names" :: NullOrUndefined (AliasNames) , "Type" :: NullOrUndefined (String) } -> {"Name" :: NullOrUndefined (String) , "Names" :: NullOrUndefined (AliasNames) , "Type" :: NullOrUndefined (String) } ) -> Alias
newAlias'  customize = (Alias <<< customize) { "Name": (NullOrUndefined Nothing), "Names": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }



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
  { "NumberValue" :: NullOrUndefined (NullableDouble)
  , "BooleanValue" :: NullOrUndefined (NullableBoolean)
  , "StringValue" :: NullOrUndefined (String)
  }
derive instance newtypeAnnotationValue :: Newtype AnnotationValue _
derive instance repGenericAnnotationValue :: Generic AnnotationValue _
instance showAnnotationValue :: Show AnnotationValue where show = genericShow
instance decodeAnnotationValue :: Decode AnnotationValue where decode = genericDecode options
instance encodeAnnotationValue :: Encode AnnotationValue where encode = genericEncode options

-- | Constructs AnnotationValue from required parameters
newAnnotationValue :: AnnotationValue
newAnnotationValue  = AnnotationValue { "BooleanValue": (NullOrUndefined Nothing), "NumberValue": (NullOrUndefined Nothing), "StringValue": (NullOrUndefined Nothing) }

-- | Constructs AnnotationValue's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAnnotationValue' :: ( { "NumberValue" :: NullOrUndefined (NullableDouble) , "BooleanValue" :: NullOrUndefined (NullableBoolean) , "StringValue" :: NullOrUndefined (String) } -> {"NumberValue" :: NullOrUndefined (NullableDouble) , "BooleanValue" :: NullOrUndefined (NullableBoolean) , "StringValue" :: NullOrUndefined (String) } ) -> AnnotationValue
newAnnotationValue'  customize = (AnnotationValue <<< customize) { "BooleanValue": (NullOrUndefined Nothing), "NumberValue": (NullOrUndefined Nothing), "StringValue": (NullOrUndefined Nothing) }



newtype Annotations = Annotations (StrMap.StrMap ValuesWithServiceIds)
derive instance newtypeAnnotations :: Newtype Annotations _
derive instance repGenericAnnotations :: Generic Annotations _
instance showAnnotations :: Show Annotations where show = genericShow
instance decodeAnnotations :: Decode Annotations where decode = genericDecode options
instance encodeAnnotations :: Encode Annotations where encode = genericEncode options



-- | <p/>
newtype BackendConnectionErrors = BackendConnectionErrors 
  { "TimeoutCount" :: NullOrUndefined (NullableInteger)
  , "ConnectionRefusedCount" :: NullOrUndefined (NullableInteger)
  , "HTTPCode4XXCount" :: NullOrUndefined (NullableInteger)
  , "HTTPCode5XXCount" :: NullOrUndefined (NullableInteger)
  , "UnknownHostCount" :: NullOrUndefined (NullableInteger)
  , "OtherCount" :: NullOrUndefined (NullableInteger)
  }
derive instance newtypeBackendConnectionErrors :: Newtype BackendConnectionErrors _
derive instance repGenericBackendConnectionErrors :: Generic BackendConnectionErrors _
instance showBackendConnectionErrors :: Show BackendConnectionErrors where show = genericShow
instance decodeBackendConnectionErrors :: Decode BackendConnectionErrors where decode = genericDecode options
instance encodeBackendConnectionErrors :: Encode BackendConnectionErrors where encode = genericEncode options

-- | Constructs BackendConnectionErrors from required parameters
newBackendConnectionErrors :: BackendConnectionErrors
newBackendConnectionErrors  = BackendConnectionErrors { "ConnectionRefusedCount": (NullOrUndefined Nothing), "HTTPCode4XXCount": (NullOrUndefined Nothing), "HTTPCode5XXCount": (NullOrUndefined Nothing), "OtherCount": (NullOrUndefined Nothing), "TimeoutCount": (NullOrUndefined Nothing), "UnknownHostCount": (NullOrUndefined Nothing) }

-- | Constructs BackendConnectionErrors's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBackendConnectionErrors' :: ( { "TimeoutCount" :: NullOrUndefined (NullableInteger) , "ConnectionRefusedCount" :: NullOrUndefined (NullableInteger) , "HTTPCode4XXCount" :: NullOrUndefined (NullableInteger) , "HTTPCode5XXCount" :: NullOrUndefined (NullableInteger) , "UnknownHostCount" :: NullOrUndefined (NullableInteger) , "OtherCount" :: NullOrUndefined (NullableInteger) } -> {"TimeoutCount" :: NullOrUndefined (NullableInteger) , "ConnectionRefusedCount" :: NullOrUndefined (NullableInteger) , "HTTPCode4XXCount" :: NullOrUndefined (NullableInteger) , "HTTPCode5XXCount" :: NullOrUndefined (NullableInteger) , "UnknownHostCount" :: NullOrUndefined (NullableInteger) , "OtherCount" :: NullOrUndefined (NullableInteger) } ) -> BackendConnectionErrors
newBackendConnectionErrors'  customize = (BackendConnectionErrors <<< customize) { "ConnectionRefusedCount": (NullOrUndefined Nothing), "HTTPCode4XXCount": (NullOrUndefined Nothing), "HTTPCode5XXCount": (NullOrUndefined Nothing), "OtherCount": (NullOrUndefined Nothing), "TimeoutCount": (NullOrUndefined Nothing), "UnknownHostCount": (NullOrUndefined Nothing) }



newtype BatchGetTracesRequest = BatchGetTracesRequest 
  { "TraceIds" :: (TraceIdList)
  , "NextToken" :: NullOrUndefined (String)
  }
derive instance newtypeBatchGetTracesRequest :: Newtype BatchGetTracesRequest _
derive instance repGenericBatchGetTracesRequest :: Generic BatchGetTracesRequest _
instance showBatchGetTracesRequest :: Show BatchGetTracesRequest where show = genericShow
instance decodeBatchGetTracesRequest :: Decode BatchGetTracesRequest where decode = genericDecode options
instance encodeBatchGetTracesRequest :: Encode BatchGetTracesRequest where encode = genericEncode options

-- | Constructs BatchGetTracesRequest from required parameters
newBatchGetTracesRequest :: TraceIdList -> BatchGetTracesRequest
newBatchGetTracesRequest _TraceIds = BatchGetTracesRequest { "TraceIds": _TraceIds, "NextToken": (NullOrUndefined Nothing) }

-- | Constructs BatchGetTracesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBatchGetTracesRequest' :: TraceIdList -> ( { "TraceIds" :: (TraceIdList) , "NextToken" :: NullOrUndefined (String) } -> {"TraceIds" :: (TraceIdList) , "NextToken" :: NullOrUndefined (String) } ) -> BatchGetTracesRequest
newBatchGetTracesRequest' _TraceIds customize = (BatchGetTracesRequest <<< customize) { "TraceIds": _TraceIds, "NextToken": (NullOrUndefined Nothing) }



newtype BatchGetTracesResult = BatchGetTracesResult 
  { "Traces" :: NullOrUndefined (TraceList)
  , "UnprocessedTraceIds" :: NullOrUndefined (UnprocessedTraceIdList)
  , "NextToken" :: NullOrUndefined (String)
  }
derive instance newtypeBatchGetTracesResult :: Newtype BatchGetTracesResult _
derive instance repGenericBatchGetTracesResult :: Generic BatchGetTracesResult _
instance showBatchGetTracesResult :: Show BatchGetTracesResult where show = genericShow
instance decodeBatchGetTracesResult :: Decode BatchGetTracesResult where decode = genericDecode options
instance encodeBatchGetTracesResult :: Encode BatchGetTracesResult where encode = genericEncode options

-- | Constructs BatchGetTracesResult from required parameters
newBatchGetTracesResult :: BatchGetTracesResult
newBatchGetTracesResult  = BatchGetTracesResult { "NextToken": (NullOrUndefined Nothing), "Traces": (NullOrUndefined Nothing), "UnprocessedTraceIds": (NullOrUndefined Nothing) }

-- | Constructs BatchGetTracesResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBatchGetTracesResult' :: ( { "Traces" :: NullOrUndefined (TraceList) , "UnprocessedTraceIds" :: NullOrUndefined (UnprocessedTraceIdList) , "NextToken" :: NullOrUndefined (String) } -> {"Traces" :: NullOrUndefined (TraceList) , "UnprocessedTraceIds" :: NullOrUndefined (UnprocessedTraceIdList) , "NextToken" :: NullOrUndefined (String) } ) -> BatchGetTracesResult
newBatchGetTracesResult'  customize = (BatchGetTracesResult <<< customize) { "NextToken": (NullOrUndefined Nothing), "Traces": (NullOrUndefined Nothing), "UnprocessedTraceIds": (NullOrUndefined Nothing) }



newtype EC2InstanceId = EC2InstanceId String
derive instance newtypeEC2InstanceId :: Newtype EC2InstanceId _
derive instance repGenericEC2InstanceId :: Generic EC2InstanceId _
instance showEC2InstanceId :: Show EC2InstanceId where show = genericShow
instance decodeEC2InstanceId :: Decode EC2InstanceId where decode = genericDecode options
instance encodeEC2InstanceId :: Encode EC2InstanceId where encode = genericEncode options



-- | <p>Information about a connection between two services.</p>
newtype Edge = Edge 
  { "ReferenceId" :: NullOrUndefined (NullableInteger)
  , "StartTime" :: NullOrUndefined (Types.Timestamp)
  , "EndTime" :: NullOrUndefined (Types.Timestamp)
  , "SummaryStatistics" :: NullOrUndefined (EdgeStatistics)
  , "ResponseTimeHistogram" :: NullOrUndefined (Histogram)
  , "Aliases" :: NullOrUndefined (AliasList)
  }
derive instance newtypeEdge :: Newtype Edge _
derive instance repGenericEdge :: Generic Edge _
instance showEdge :: Show Edge where show = genericShow
instance decodeEdge :: Decode Edge where decode = genericDecode options
instance encodeEdge :: Encode Edge where encode = genericEncode options

-- | Constructs Edge from required parameters
newEdge :: Edge
newEdge  = Edge { "Aliases": (NullOrUndefined Nothing), "EndTime": (NullOrUndefined Nothing), "ReferenceId": (NullOrUndefined Nothing), "ResponseTimeHistogram": (NullOrUndefined Nothing), "StartTime": (NullOrUndefined Nothing), "SummaryStatistics": (NullOrUndefined Nothing) }

-- | Constructs Edge's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEdge' :: ( { "ReferenceId" :: NullOrUndefined (NullableInteger) , "StartTime" :: NullOrUndefined (Types.Timestamp) , "EndTime" :: NullOrUndefined (Types.Timestamp) , "SummaryStatistics" :: NullOrUndefined (EdgeStatistics) , "ResponseTimeHistogram" :: NullOrUndefined (Histogram) , "Aliases" :: NullOrUndefined (AliasList) } -> {"ReferenceId" :: NullOrUndefined (NullableInteger) , "StartTime" :: NullOrUndefined (Types.Timestamp) , "EndTime" :: NullOrUndefined (Types.Timestamp) , "SummaryStatistics" :: NullOrUndefined (EdgeStatistics) , "ResponseTimeHistogram" :: NullOrUndefined (Histogram) , "Aliases" :: NullOrUndefined (AliasList) } ) -> Edge
newEdge'  customize = (Edge <<< customize) { "Aliases": (NullOrUndefined Nothing), "EndTime": (NullOrUndefined Nothing), "ReferenceId": (NullOrUndefined Nothing), "ResponseTimeHistogram": (NullOrUndefined Nothing), "StartTime": (NullOrUndefined Nothing), "SummaryStatistics": (NullOrUndefined Nothing) }



newtype EdgeList = EdgeList (Array Edge)
derive instance newtypeEdgeList :: Newtype EdgeList _
derive instance repGenericEdgeList :: Generic EdgeList _
instance showEdgeList :: Show EdgeList where show = genericShow
instance decodeEdgeList :: Decode EdgeList where decode = genericDecode options
instance encodeEdgeList :: Encode EdgeList where encode = genericEncode options



-- | <p>Response statistics for an edge.</p>
newtype EdgeStatistics = EdgeStatistics 
  { "OkCount" :: NullOrUndefined (NullableLong)
  , "ErrorStatistics" :: NullOrUndefined (ErrorStatistics)
  , "FaultStatistics" :: NullOrUndefined (FaultStatistics)
  , "TotalCount" :: NullOrUndefined (NullableLong)
  , "TotalResponseTime" :: NullOrUndefined (NullableDouble)
  }
derive instance newtypeEdgeStatistics :: Newtype EdgeStatistics _
derive instance repGenericEdgeStatistics :: Generic EdgeStatistics _
instance showEdgeStatistics :: Show EdgeStatistics where show = genericShow
instance decodeEdgeStatistics :: Decode EdgeStatistics where decode = genericDecode options
instance encodeEdgeStatistics :: Encode EdgeStatistics where encode = genericEncode options

-- | Constructs EdgeStatistics from required parameters
newEdgeStatistics :: EdgeStatistics
newEdgeStatistics  = EdgeStatistics { "ErrorStatistics": (NullOrUndefined Nothing), "FaultStatistics": (NullOrUndefined Nothing), "OkCount": (NullOrUndefined Nothing), "TotalCount": (NullOrUndefined Nothing), "TotalResponseTime": (NullOrUndefined Nothing) }

-- | Constructs EdgeStatistics's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEdgeStatistics' :: ( { "OkCount" :: NullOrUndefined (NullableLong) , "ErrorStatistics" :: NullOrUndefined (ErrorStatistics) , "FaultStatistics" :: NullOrUndefined (FaultStatistics) , "TotalCount" :: NullOrUndefined (NullableLong) , "TotalResponseTime" :: NullOrUndefined (NullableDouble) } -> {"OkCount" :: NullOrUndefined (NullableLong) , "ErrorStatistics" :: NullOrUndefined (ErrorStatistics) , "FaultStatistics" :: NullOrUndefined (FaultStatistics) , "TotalCount" :: NullOrUndefined (NullableLong) , "TotalResponseTime" :: NullOrUndefined (NullableDouble) } ) -> EdgeStatistics
newEdgeStatistics'  customize = (EdgeStatistics <<< customize) { "ErrorStatistics": (NullOrUndefined Nothing), "FaultStatistics": (NullOrUndefined Nothing), "OkCount": (NullOrUndefined Nothing), "TotalCount": (NullOrUndefined Nothing), "TotalResponseTime": (NullOrUndefined Nothing) }



newtype ErrorMessage = ErrorMessage String
derive instance newtypeErrorMessage :: Newtype ErrorMessage _
derive instance repGenericErrorMessage :: Generic ErrorMessage _
instance showErrorMessage :: Show ErrorMessage where show = genericShow
instance decodeErrorMessage :: Decode ErrorMessage where decode = genericDecode options
instance encodeErrorMessage :: Encode ErrorMessage where encode = genericEncode options



-- | <p>Information about requests that failed with a 4xx Client Error status code.</p>
newtype ErrorStatistics = ErrorStatistics 
  { "ThrottleCount" :: NullOrUndefined (NullableLong)
  , "OtherCount" :: NullOrUndefined (NullableLong)
  , "TotalCount" :: NullOrUndefined (NullableLong)
  }
derive instance newtypeErrorStatistics :: Newtype ErrorStatistics _
derive instance repGenericErrorStatistics :: Generic ErrorStatistics _
instance showErrorStatistics :: Show ErrorStatistics where show = genericShow
instance decodeErrorStatistics :: Decode ErrorStatistics where decode = genericDecode options
instance encodeErrorStatistics :: Encode ErrorStatistics where encode = genericEncode options

-- | Constructs ErrorStatistics from required parameters
newErrorStatistics :: ErrorStatistics
newErrorStatistics  = ErrorStatistics { "OtherCount": (NullOrUndefined Nothing), "ThrottleCount": (NullOrUndefined Nothing), "TotalCount": (NullOrUndefined Nothing) }

-- | Constructs ErrorStatistics's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newErrorStatistics' :: ( { "ThrottleCount" :: NullOrUndefined (NullableLong) , "OtherCount" :: NullOrUndefined (NullableLong) , "TotalCount" :: NullOrUndefined (NullableLong) } -> {"ThrottleCount" :: NullOrUndefined (NullableLong) , "OtherCount" :: NullOrUndefined (NullableLong) , "TotalCount" :: NullOrUndefined (NullableLong) } ) -> ErrorStatistics
newErrorStatistics'  customize = (ErrorStatistics <<< customize) { "OtherCount": (NullOrUndefined Nothing), "ThrottleCount": (NullOrUndefined Nothing), "TotalCount": (NullOrUndefined Nothing) }



-- | <p>Information about requests that failed with a 5xx Server Error status code.</p>
newtype FaultStatistics = FaultStatistics 
  { "OtherCount" :: NullOrUndefined (NullableLong)
  , "TotalCount" :: NullOrUndefined (NullableLong)
  }
derive instance newtypeFaultStatistics :: Newtype FaultStatistics _
derive instance repGenericFaultStatistics :: Generic FaultStatistics _
instance showFaultStatistics :: Show FaultStatistics where show = genericShow
instance decodeFaultStatistics :: Decode FaultStatistics where decode = genericDecode options
instance encodeFaultStatistics :: Encode FaultStatistics where encode = genericEncode options

-- | Constructs FaultStatistics from required parameters
newFaultStatistics :: FaultStatistics
newFaultStatistics  = FaultStatistics { "OtherCount": (NullOrUndefined Nothing), "TotalCount": (NullOrUndefined Nothing) }

-- | Constructs FaultStatistics's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newFaultStatistics' :: ( { "OtherCount" :: NullOrUndefined (NullableLong) , "TotalCount" :: NullOrUndefined (NullableLong) } -> {"OtherCount" :: NullOrUndefined (NullableLong) , "TotalCount" :: NullOrUndefined (NullableLong) } ) -> FaultStatistics
newFaultStatistics'  customize = (FaultStatistics <<< customize) { "OtherCount": (NullOrUndefined Nothing), "TotalCount": (NullOrUndefined Nothing) }



newtype FilterExpression = FilterExpression String
derive instance newtypeFilterExpression :: Newtype FilterExpression _
derive instance repGenericFilterExpression :: Generic FilterExpression _
instance showFilterExpression :: Show FilterExpression where show = genericShow
instance decodeFilterExpression :: Decode FilterExpression where decode = genericDecode options
instance encodeFilterExpression :: Encode FilterExpression where encode = genericEncode options



newtype GetServiceGraphRequest = GetServiceGraphRequest 
  { "StartTime" :: (Types.Timestamp)
  , "EndTime" :: (Types.Timestamp)
  , "NextToken" :: NullOrUndefined (String)
  }
derive instance newtypeGetServiceGraphRequest :: Newtype GetServiceGraphRequest _
derive instance repGenericGetServiceGraphRequest :: Generic GetServiceGraphRequest _
instance showGetServiceGraphRequest :: Show GetServiceGraphRequest where show = genericShow
instance decodeGetServiceGraphRequest :: Decode GetServiceGraphRequest where decode = genericDecode options
instance encodeGetServiceGraphRequest :: Encode GetServiceGraphRequest where encode = genericEncode options

-- | Constructs GetServiceGraphRequest from required parameters
newGetServiceGraphRequest :: Types.Timestamp -> Types.Timestamp -> GetServiceGraphRequest
newGetServiceGraphRequest _EndTime _StartTime = GetServiceGraphRequest { "EndTime": _EndTime, "StartTime": _StartTime, "NextToken": (NullOrUndefined Nothing) }

-- | Constructs GetServiceGraphRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetServiceGraphRequest' :: Types.Timestamp -> Types.Timestamp -> ( { "StartTime" :: (Types.Timestamp) , "EndTime" :: (Types.Timestamp) , "NextToken" :: NullOrUndefined (String) } -> {"StartTime" :: (Types.Timestamp) , "EndTime" :: (Types.Timestamp) , "NextToken" :: NullOrUndefined (String) } ) -> GetServiceGraphRequest
newGetServiceGraphRequest' _EndTime _StartTime customize = (GetServiceGraphRequest <<< customize) { "EndTime": _EndTime, "StartTime": _StartTime, "NextToken": (NullOrUndefined Nothing) }



newtype GetServiceGraphResult = GetServiceGraphResult 
  { "StartTime" :: NullOrUndefined (Types.Timestamp)
  , "EndTime" :: NullOrUndefined (Types.Timestamp)
  , "Services" :: NullOrUndefined (ServiceList)
  , "NextToken" :: NullOrUndefined (String)
  }
derive instance newtypeGetServiceGraphResult :: Newtype GetServiceGraphResult _
derive instance repGenericGetServiceGraphResult :: Generic GetServiceGraphResult _
instance showGetServiceGraphResult :: Show GetServiceGraphResult where show = genericShow
instance decodeGetServiceGraphResult :: Decode GetServiceGraphResult where decode = genericDecode options
instance encodeGetServiceGraphResult :: Encode GetServiceGraphResult where encode = genericEncode options

-- | Constructs GetServiceGraphResult from required parameters
newGetServiceGraphResult :: GetServiceGraphResult
newGetServiceGraphResult  = GetServiceGraphResult { "EndTime": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "Services": (NullOrUndefined Nothing), "StartTime": (NullOrUndefined Nothing) }

-- | Constructs GetServiceGraphResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetServiceGraphResult' :: ( { "StartTime" :: NullOrUndefined (Types.Timestamp) , "EndTime" :: NullOrUndefined (Types.Timestamp) , "Services" :: NullOrUndefined (ServiceList) , "NextToken" :: NullOrUndefined (String) } -> {"StartTime" :: NullOrUndefined (Types.Timestamp) , "EndTime" :: NullOrUndefined (Types.Timestamp) , "Services" :: NullOrUndefined (ServiceList) , "NextToken" :: NullOrUndefined (String) } ) -> GetServiceGraphResult
newGetServiceGraphResult'  customize = (GetServiceGraphResult <<< customize) { "EndTime": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "Services": (NullOrUndefined Nothing), "StartTime": (NullOrUndefined Nothing) }



newtype GetTraceGraphRequest = GetTraceGraphRequest 
  { "TraceIds" :: (TraceIdList)
  , "NextToken" :: NullOrUndefined (String)
  }
derive instance newtypeGetTraceGraphRequest :: Newtype GetTraceGraphRequest _
derive instance repGenericGetTraceGraphRequest :: Generic GetTraceGraphRequest _
instance showGetTraceGraphRequest :: Show GetTraceGraphRequest where show = genericShow
instance decodeGetTraceGraphRequest :: Decode GetTraceGraphRequest where decode = genericDecode options
instance encodeGetTraceGraphRequest :: Encode GetTraceGraphRequest where encode = genericEncode options

-- | Constructs GetTraceGraphRequest from required parameters
newGetTraceGraphRequest :: TraceIdList -> GetTraceGraphRequest
newGetTraceGraphRequest _TraceIds = GetTraceGraphRequest { "TraceIds": _TraceIds, "NextToken": (NullOrUndefined Nothing) }

-- | Constructs GetTraceGraphRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetTraceGraphRequest' :: TraceIdList -> ( { "TraceIds" :: (TraceIdList) , "NextToken" :: NullOrUndefined (String) } -> {"TraceIds" :: (TraceIdList) , "NextToken" :: NullOrUndefined (String) } ) -> GetTraceGraphRequest
newGetTraceGraphRequest' _TraceIds customize = (GetTraceGraphRequest <<< customize) { "TraceIds": _TraceIds, "NextToken": (NullOrUndefined Nothing) }



newtype GetTraceGraphResult = GetTraceGraphResult 
  { "Services" :: NullOrUndefined (ServiceList)
  , "NextToken" :: NullOrUndefined (String)
  }
derive instance newtypeGetTraceGraphResult :: Newtype GetTraceGraphResult _
derive instance repGenericGetTraceGraphResult :: Generic GetTraceGraphResult _
instance showGetTraceGraphResult :: Show GetTraceGraphResult where show = genericShow
instance decodeGetTraceGraphResult :: Decode GetTraceGraphResult where decode = genericDecode options
instance encodeGetTraceGraphResult :: Encode GetTraceGraphResult where encode = genericEncode options

-- | Constructs GetTraceGraphResult from required parameters
newGetTraceGraphResult :: GetTraceGraphResult
newGetTraceGraphResult  = GetTraceGraphResult { "NextToken": (NullOrUndefined Nothing), "Services": (NullOrUndefined Nothing) }

-- | Constructs GetTraceGraphResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetTraceGraphResult' :: ( { "Services" :: NullOrUndefined (ServiceList) , "NextToken" :: NullOrUndefined (String) } -> {"Services" :: NullOrUndefined (ServiceList) , "NextToken" :: NullOrUndefined (String) } ) -> GetTraceGraphResult
newGetTraceGraphResult'  customize = (GetTraceGraphResult <<< customize) { "NextToken": (NullOrUndefined Nothing), "Services": (NullOrUndefined Nothing) }



newtype GetTraceSummariesRequest = GetTraceSummariesRequest 
  { "StartTime" :: (Types.Timestamp)
  , "EndTime" :: (Types.Timestamp)
  , "Sampling" :: NullOrUndefined (NullableBoolean)
  , "FilterExpression" :: NullOrUndefined (FilterExpression)
  , "NextToken" :: NullOrUndefined (String)
  }
derive instance newtypeGetTraceSummariesRequest :: Newtype GetTraceSummariesRequest _
derive instance repGenericGetTraceSummariesRequest :: Generic GetTraceSummariesRequest _
instance showGetTraceSummariesRequest :: Show GetTraceSummariesRequest where show = genericShow
instance decodeGetTraceSummariesRequest :: Decode GetTraceSummariesRequest where decode = genericDecode options
instance encodeGetTraceSummariesRequest :: Encode GetTraceSummariesRequest where encode = genericEncode options

-- | Constructs GetTraceSummariesRequest from required parameters
newGetTraceSummariesRequest :: Types.Timestamp -> Types.Timestamp -> GetTraceSummariesRequest
newGetTraceSummariesRequest _EndTime _StartTime = GetTraceSummariesRequest { "EndTime": _EndTime, "StartTime": _StartTime, "FilterExpression": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "Sampling": (NullOrUndefined Nothing) }

-- | Constructs GetTraceSummariesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetTraceSummariesRequest' :: Types.Timestamp -> Types.Timestamp -> ( { "StartTime" :: (Types.Timestamp) , "EndTime" :: (Types.Timestamp) , "Sampling" :: NullOrUndefined (NullableBoolean) , "FilterExpression" :: NullOrUndefined (FilterExpression) , "NextToken" :: NullOrUndefined (String) } -> {"StartTime" :: (Types.Timestamp) , "EndTime" :: (Types.Timestamp) , "Sampling" :: NullOrUndefined (NullableBoolean) , "FilterExpression" :: NullOrUndefined (FilterExpression) , "NextToken" :: NullOrUndefined (String) } ) -> GetTraceSummariesRequest
newGetTraceSummariesRequest' _EndTime _StartTime customize = (GetTraceSummariesRequest <<< customize) { "EndTime": _EndTime, "StartTime": _StartTime, "FilterExpression": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "Sampling": (NullOrUndefined Nothing) }



newtype GetTraceSummariesResult = GetTraceSummariesResult 
  { "TraceSummaries" :: NullOrUndefined (TraceSummaryList)
  , "ApproximateTime" :: NullOrUndefined (Types.Timestamp)
  , "TracesProcessedCount" :: NullOrUndefined (NullableLong)
  , "NextToken" :: NullOrUndefined (String)
  }
derive instance newtypeGetTraceSummariesResult :: Newtype GetTraceSummariesResult _
derive instance repGenericGetTraceSummariesResult :: Generic GetTraceSummariesResult _
instance showGetTraceSummariesResult :: Show GetTraceSummariesResult where show = genericShow
instance decodeGetTraceSummariesResult :: Decode GetTraceSummariesResult where decode = genericDecode options
instance encodeGetTraceSummariesResult :: Encode GetTraceSummariesResult where encode = genericEncode options

-- | Constructs GetTraceSummariesResult from required parameters
newGetTraceSummariesResult :: GetTraceSummariesResult
newGetTraceSummariesResult  = GetTraceSummariesResult { "ApproximateTime": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "TraceSummaries": (NullOrUndefined Nothing), "TracesProcessedCount": (NullOrUndefined Nothing) }

-- | Constructs GetTraceSummariesResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetTraceSummariesResult' :: ( { "TraceSummaries" :: NullOrUndefined (TraceSummaryList) , "ApproximateTime" :: NullOrUndefined (Types.Timestamp) , "TracesProcessedCount" :: NullOrUndefined (NullableLong) , "NextToken" :: NullOrUndefined (String) } -> {"TraceSummaries" :: NullOrUndefined (TraceSummaryList) , "ApproximateTime" :: NullOrUndefined (Types.Timestamp) , "TracesProcessedCount" :: NullOrUndefined (NullableLong) , "NextToken" :: NullOrUndefined (String) } ) -> GetTraceSummariesResult
newGetTraceSummariesResult'  customize = (GetTraceSummariesResult <<< customize) { "ApproximateTime": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "TraceSummaries": (NullOrUndefined Nothing), "TracesProcessedCount": (NullOrUndefined Nothing) }



newtype Histogram = Histogram (Array HistogramEntry)
derive instance newtypeHistogram :: Newtype Histogram _
derive instance repGenericHistogram :: Generic Histogram _
instance showHistogram :: Show Histogram where show = genericShow
instance decodeHistogram :: Decode Histogram where decode = genericDecode options
instance encodeHistogram :: Encode Histogram where encode = genericEncode options



-- | <p>An entry in a histogram for a statistic. A histogram maps the range of observed values on the X axis, and the prevalence of each value on the Y axis.</p>
newtype HistogramEntry = HistogramEntry 
  { "Value" :: NullOrUndefined (Number)
  , "Count" :: NullOrUndefined (Int)
  }
derive instance newtypeHistogramEntry :: Newtype HistogramEntry _
derive instance repGenericHistogramEntry :: Generic HistogramEntry _
instance showHistogramEntry :: Show HistogramEntry where show = genericShow
instance decodeHistogramEntry :: Decode HistogramEntry where decode = genericDecode options
instance encodeHistogramEntry :: Encode HistogramEntry where encode = genericEncode options

-- | Constructs HistogramEntry from required parameters
newHistogramEntry :: HistogramEntry
newHistogramEntry  = HistogramEntry { "Count": (NullOrUndefined Nothing), "Value": (NullOrUndefined Nothing) }

-- | Constructs HistogramEntry's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHistogramEntry' :: ( { "Value" :: NullOrUndefined (Number) , "Count" :: NullOrUndefined (Int) } -> {"Value" :: NullOrUndefined (Number) , "Count" :: NullOrUndefined (Int) } ) -> HistogramEntry
newHistogramEntry'  customize = (HistogramEntry <<< customize) { "Count": (NullOrUndefined Nothing), "Value": (NullOrUndefined Nothing) }



newtype Hostname = Hostname String
derive instance newtypeHostname :: Newtype Hostname _
derive instance repGenericHostname :: Generic Hostname _
instance showHostname :: Show Hostname where show = genericShow
instance decodeHostname :: Decode Hostname where decode = genericDecode options
instance encodeHostname :: Encode Hostname where encode = genericEncode options



-- | <p>Information about an HTTP request.</p>
newtype Http = Http 
  { "HttpURL" :: NullOrUndefined (String)
  , "HttpStatus" :: NullOrUndefined (NullableInteger)
  , "HttpMethod" :: NullOrUndefined (String)
  , "UserAgent" :: NullOrUndefined (String)
  , "ClientIp" :: NullOrUndefined (String)
  }
derive instance newtypeHttp :: Newtype Http _
derive instance repGenericHttp :: Generic Http _
instance showHttp :: Show Http where show = genericShow
instance decodeHttp :: Decode Http where decode = genericDecode options
instance encodeHttp :: Encode Http where encode = genericEncode options

-- | Constructs Http from required parameters
newHttp :: Http
newHttp  = Http { "ClientIp": (NullOrUndefined Nothing), "HttpMethod": (NullOrUndefined Nothing), "HttpStatus": (NullOrUndefined Nothing), "HttpURL": (NullOrUndefined Nothing), "UserAgent": (NullOrUndefined Nothing) }

-- | Constructs Http's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHttp' :: ( { "HttpURL" :: NullOrUndefined (String) , "HttpStatus" :: NullOrUndefined (NullableInteger) , "HttpMethod" :: NullOrUndefined (String) , "UserAgent" :: NullOrUndefined (String) , "ClientIp" :: NullOrUndefined (String) } -> {"HttpURL" :: NullOrUndefined (String) , "HttpStatus" :: NullOrUndefined (NullableInteger) , "HttpMethod" :: NullOrUndefined (String) , "UserAgent" :: NullOrUndefined (String) , "ClientIp" :: NullOrUndefined (String) } ) -> Http
newHttp'  customize = (Http <<< customize) { "ClientIp": (NullOrUndefined Nothing), "HttpMethod": (NullOrUndefined Nothing), "HttpStatus": (NullOrUndefined Nothing), "HttpURL": (NullOrUndefined Nothing), "UserAgent": (NullOrUndefined Nothing) }



-- | <p>The request is missing required parameters or has invalid parameters.</p>
newtype InvalidRequestException = InvalidRequestException 
  { "Message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeInvalidRequestException :: Newtype InvalidRequestException _
derive instance repGenericInvalidRequestException :: Generic InvalidRequestException _
instance showInvalidRequestException :: Show InvalidRequestException where show = genericShow
instance decodeInvalidRequestException :: Decode InvalidRequestException where decode = genericDecode options
instance encodeInvalidRequestException :: Encode InvalidRequestException where encode = genericEncode options

-- | Constructs InvalidRequestException from required parameters
newInvalidRequestException :: InvalidRequestException
newInvalidRequestException  = InvalidRequestException { "Message": (NullOrUndefined Nothing) }

-- | Constructs InvalidRequestException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidRequestException' :: ( { "Message" :: NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined (ErrorMessage) } ) -> InvalidRequestException
newInvalidRequestException'  customize = (InvalidRequestException <<< customize) { "Message": (NullOrUndefined Nothing) }



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
  , "EC2InstanceId" :: NullOrUndefined (EC2InstanceId)
  , "Hostname" :: NullOrUndefined (Hostname)
  , "ResourceARN" :: NullOrUndefined (ResourceARN)
  }
derive instance newtypePutTelemetryRecordsRequest :: Newtype PutTelemetryRecordsRequest _
derive instance repGenericPutTelemetryRecordsRequest :: Generic PutTelemetryRecordsRequest _
instance showPutTelemetryRecordsRequest :: Show PutTelemetryRecordsRequest where show = genericShow
instance decodePutTelemetryRecordsRequest :: Decode PutTelemetryRecordsRequest where decode = genericDecode options
instance encodePutTelemetryRecordsRequest :: Encode PutTelemetryRecordsRequest where encode = genericEncode options

-- | Constructs PutTelemetryRecordsRequest from required parameters
newPutTelemetryRecordsRequest :: TelemetryRecordList -> PutTelemetryRecordsRequest
newPutTelemetryRecordsRequest _TelemetryRecords = PutTelemetryRecordsRequest { "TelemetryRecords": _TelemetryRecords, "EC2InstanceId": (NullOrUndefined Nothing), "Hostname": (NullOrUndefined Nothing), "ResourceARN": (NullOrUndefined Nothing) }

-- | Constructs PutTelemetryRecordsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutTelemetryRecordsRequest' :: TelemetryRecordList -> ( { "TelemetryRecords" :: (TelemetryRecordList) , "EC2InstanceId" :: NullOrUndefined (EC2InstanceId) , "Hostname" :: NullOrUndefined (Hostname) , "ResourceARN" :: NullOrUndefined (ResourceARN) } -> {"TelemetryRecords" :: (TelemetryRecordList) , "EC2InstanceId" :: NullOrUndefined (EC2InstanceId) , "Hostname" :: NullOrUndefined (Hostname) , "ResourceARN" :: NullOrUndefined (ResourceARN) } ) -> PutTelemetryRecordsRequest
newPutTelemetryRecordsRequest' _TelemetryRecords customize = (PutTelemetryRecordsRequest <<< customize) { "TelemetryRecords": _TelemetryRecords, "EC2InstanceId": (NullOrUndefined Nothing), "Hostname": (NullOrUndefined Nothing), "ResourceARN": (NullOrUndefined Nothing) }



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
  { "UnprocessedTraceSegments" :: NullOrUndefined (UnprocessedTraceSegmentList)
  }
derive instance newtypePutTraceSegmentsResult :: Newtype PutTraceSegmentsResult _
derive instance repGenericPutTraceSegmentsResult :: Generic PutTraceSegmentsResult _
instance showPutTraceSegmentsResult :: Show PutTraceSegmentsResult where show = genericShow
instance decodePutTraceSegmentsResult :: Decode PutTraceSegmentsResult where decode = genericDecode options
instance encodePutTraceSegmentsResult :: Encode PutTraceSegmentsResult where encode = genericEncode options

-- | Constructs PutTraceSegmentsResult from required parameters
newPutTraceSegmentsResult :: PutTraceSegmentsResult
newPutTraceSegmentsResult  = PutTraceSegmentsResult { "UnprocessedTraceSegments": (NullOrUndefined Nothing) }

-- | Constructs PutTraceSegmentsResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutTraceSegmentsResult' :: ( { "UnprocessedTraceSegments" :: NullOrUndefined (UnprocessedTraceSegmentList) } -> {"UnprocessedTraceSegments" :: NullOrUndefined (UnprocessedTraceSegmentList) } ) -> PutTraceSegmentsResult
newPutTraceSegmentsResult'  customize = (PutTraceSegmentsResult <<< customize) { "UnprocessedTraceSegments": (NullOrUndefined Nothing) }



newtype ResourceARN = ResourceARN String
derive instance newtypeResourceARN :: Newtype ResourceARN _
derive instance repGenericResourceARN :: Generic ResourceARN _
instance showResourceARN :: Show ResourceARN where show = genericShow
instance decodeResourceARN :: Decode ResourceARN where decode = genericDecode options
instance encodeResourceARN :: Encode ResourceARN where encode = genericEncode options



-- | <p>A segment from a trace that has been ingested by the X-Ray service. The segment can be compiled from documents uploaded with <a>PutTraceSegments</a>, or an <code>inferred</code> segment for a downstream service, generated from a subsegment sent by the service that called it.</p>
newtype Segment = Segment 
  { "Id" :: NullOrUndefined (SegmentId)
  , "Document" :: NullOrUndefined (SegmentDocument)
  }
derive instance newtypeSegment :: Newtype Segment _
derive instance repGenericSegment :: Generic Segment _
instance showSegment :: Show Segment where show = genericShow
instance decodeSegment :: Decode Segment where decode = genericDecode options
instance encodeSegment :: Encode Segment where encode = genericEncode options

-- | Constructs Segment from required parameters
newSegment :: Segment
newSegment  = Segment { "Document": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing) }

-- | Constructs Segment's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSegment' :: ( { "Id" :: NullOrUndefined (SegmentId) , "Document" :: NullOrUndefined (SegmentDocument) } -> {"Id" :: NullOrUndefined (SegmentId) , "Document" :: NullOrUndefined (SegmentDocument) } ) -> Segment
newSegment'  customize = (Segment <<< customize) { "Document": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing) }



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
  { "ReferenceId" :: NullOrUndefined (NullableInteger)
  , "Name" :: NullOrUndefined (String)
  , "Names" :: NullOrUndefined (ServiceNames)
  , "Root" :: NullOrUndefined (NullableBoolean)
  , "AccountId" :: NullOrUndefined (String)
  , "Type" :: NullOrUndefined (String)
  , "State" :: NullOrUndefined (String)
  , "StartTime" :: NullOrUndefined (Types.Timestamp)
  , "EndTime" :: NullOrUndefined (Types.Timestamp)
  , "Edges" :: NullOrUndefined (EdgeList)
  , "SummaryStatistics" :: NullOrUndefined (ServiceStatistics)
  , "DurationHistogram" :: NullOrUndefined (Histogram)
  , "ResponseTimeHistogram" :: NullOrUndefined (Histogram)
  }
derive instance newtypeService :: Newtype Service _
derive instance repGenericService :: Generic Service _
instance showService :: Show Service where show = genericShow
instance decodeService :: Decode Service where decode = genericDecode options
instance encodeService :: Encode Service where encode = genericEncode options

-- | Constructs Service from required parameters
newService :: Service
newService  = Service { "AccountId": (NullOrUndefined Nothing), "DurationHistogram": (NullOrUndefined Nothing), "Edges": (NullOrUndefined Nothing), "EndTime": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "Names": (NullOrUndefined Nothing), "ReferenceId": (NullOrUndefined Nothing), "ResponseTimeHistogram": (NullOrUndefined Nothing), "Root": (NullOrUndefined Nothing), "StartTime": (NullOrUndefined Nothing), "State": (NullOrUndefined Nothing), "SummaryStatistics": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }

-- | Constructs Service's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newService' :: ( { "ReferenceId" :: NullOrUndefined (NullableInteger) , "Name" :: NullOrUndefined (String) , "Names" :: NullOrUndefined (ServiceNames) , "Root" :: NullOrUndefined (NullableBoolean) , "AccountId" :: NullOrUndefined (String) , "Type" :: NullOrUndefined (String) , "State" :: NullOrUndefined (String) , "StartTime" :: NullOrUndefined (Types.Timestamp) , "EndTime" :: NullOrUndefined (Types.Timestamp) , "Edges" :: NullOrUndefined (EdgeList) , "SummaryStatistics" :: NullOrUndefined (ServiceStatistics) , "DurationHistogram" :: NullOrUndefined (Histogram) , "ResponseTimeHistogram" :: NullOrUndefined (Histogram) } -> {"ReferenceId" :: NullOrUndefined (NullableInteger) , "Name" :: NullOrUndefined (String) , "Names" :: NullOrUndefined (ServiceNames) , "Root" :: NullOrUndefined (NullableBoolean) , "AccountId" :: NullOrUndefined (String) , "Type" :: NullOrUndefined (String) , "State" :: NullOrUndefined (String) , "StartTime" :: NullOrUndefined (Types.Timestamp) , "EndTime" :: NullOrUndefined (Types.Timestamp) , "Edges" :: NullOrUndefined (EdgeList) , "SummaryStatistics" :: NullOrUndefined (ServiceStatistics) , "DurationHistogram" :: NullOrUndefined (Histogram) , "ResponseTimeHistogram" :: NullOrUndefined (Histogram) } ) -> Service
newService'  customize = (Service <<< customize) { "AccountId": (NullOrUndefined Nothing), "DurationHistogram": (NullOrUndefined Nothing), "Edges": (NullOrUndefined Nothing), "EndTime": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "Names": (NullOrUndefined Nothing), "ReferenceId": (NullOrUndefined Nothing), "ResponseTimeHistogram": (NullOrUndefined Nothing), "Root": (NullOrUndefined Nothing), "StartTime": (NullOrUndefined Nothing), "State": (NullOrUndefined Nothing), "SummaryStatistics": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }



-- | <p/>
newtype ServiceId = ServiceId 
  { "Name" :: NullOrUndefined (String)
  , "Names" :: NullOrUndefined (ServiceNames)
  , "AccountId" :: NullOrUndefined (String)
  , "Type" :: NullOrUndefined (String)
  }
derive instance newtypeServiceId :: Newtype ServiceId _
derive instance repGenericServiceId :: Generic ServiceId _
instance showServiceId :: Show ServiceId where show = genericShow
instance decodeServiceId :: Decode ServiceId where decode = genericDecode options
instance encodeServiceId :: Encode ServiceId where encode = genericEncode options

-- | Constructs ServiceId from required parameters
newServiceId :: ServiceId
newServiceId  = ServiceId { "AccountId": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "Names": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }

-- | Constructs ServiceId's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServiceId' :: ( { "Name" :: NullOrUndefined (String) , "Names" :: NullOrUndefined (ServiceNames) , "AccountId" :: NullOrUndefined (String) , "Type" :: NullOrUndefined (String) } -> {"Name" :: NullOrUndefined (String) , "Names" :: NullOrUndefined (ServiceNames) , "AccountId" :: NullOrUndefined (String) , "Type" :: NullOrUndefined (String) } ) -> ServiceId
newServiceId'  customize = (ServiceId <<< customize) { "AccountId": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "Names": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }



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
  { "OkCount" :: NullOrUndefined (NullableLong)
  , "ErrorStatistics" :: NullOrUndefined (ErrorStatistics)
  , "FaultStatistics" :: NullOrUndefined (FaultStatistics)
  , "TotalCount" :: NullOrUndefined (NullableLong)
  , "TotalResponseTime" :: NullOrUndefined (NullableDouble)
  }
derive instance newtypeServiceStatistics :: Newtype ServiceStatistics _
derive instance repGenericServiceStatistics :: Generic ServiceStatistics _
instance showServiceStatistics :: Show ServiceStatistics where show = genericShow
instance decodeServiceStatistics :: Decode ServiceStatistics where decode = genericDecode options
instance encodeServiceStatistics :: Encode ServiceStatistics where encode = genericEncode options

-- | Constructs ServiceStatistics from required parameters
newServiceStatistics :: ServiceStatistics
newServiceStatistics  = ServiceStatistics { "ErrorStatistics": (NullOrUndefined Nothing), "FaultStatistics": (NullOrUndefined Nothing), "OkCount": (NullOrUndefined Nothing), "TotalCount": (NullOrUndefined Nothing), "TotalResponseTime": (NullOrUndefined Nothing) }

-- | Constructs ServiceStatistics's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServiceStatistics' :: ( { "OkCount" :: NullOrUndefined (NullableLong) , "ErrorStatistics" :: NullOrUndefined (ErrorStatistics) , "FaultStatistics" :: NullOrUndefined (FaultStatistics) , "TotalCount" :: NullOrUndefined (NullableLong) , "TotalResponseTime" :: NullOrUndefined (NullableDouble) } -> {"OkCount" :: NullOrUndefined (NullableLong) , "ErrorStatistics" :: NullOrUndefined (ErrorStatistics) , "FaultStatistics" :: NullOrUndefined (FaultStatistics) , "TotalCount" :: NullOrUndefined (NullableLong) , "TotalResponseTime" :: NullOrUndefined (NullableDouble) } ) -> ServiceStatistics
newServiceStatistics'  customize = (ServiceStatistics <<< customize) { "ErrorStatistics": (NullOrUndefined Nothing), "FaultStatistics": (NullOrUndefined Nothing), "OkCount": (NullOrUndefined Nothing), "TotalCount": (NullOrUndefined Nothing), "TotalResponseTime": (NullOrUndefined Nothing) }



-- | <p/>
newtype TelemetryRecord = TelemetryRecord 
  { "Timestamp" :: (Types.Timestamp)
  , "SegmentsReceivedCount" :: NullOrUndefined (NullableInteger)
  , "SegmentsSentCount" :: NullOrUndefined (NullableInteger)
  , "SegmentsSpilloverCount" :: NullOrUndefined (NullableInteger)
  , "SegmentsRejectedCount" :: NullOrUndefined (NullableInteger)
  , "BackendConnectionErrors" :: NullOrUndefined (BackendConnectionErrors)
  }
derive instance newtypeTelemetryRecord :: Newtype TelemetryRecord _
derive instance repGenericTelemetryRecord :: Generic TelemetryRecord _
instance showTelemetryRecord :: Show TelemetryRecord where show = genericShow
instance decodeTelemetryRecord :: Decode TelemetryRecord where decode = genericDecode options
instance encodeTelemetryRecord :: Encode TelemetryRecord where encode = genericEncode options

-- | Constructs TelemetryRecord from required parameters
newTelemetryRecord :: Types.Timestamp -> TelemetryRecord
newTelemetryRecord _Timestamp = TelemetryRecord { "Timestamp": _Timestamp, "BackendConnectionErrors": (NullOrUndefined Nothing), "SegmentsReceivedCount": (NullOrUndefined Nothing), "SegmentsRejectedCount": (NullOrUndefined Nothing), "SegmentsSentCount": (NullOrUndefined Nothing), "SegmentsSpilloverCount": (NullOrUndefined Nothing) }

-- | Constructs TelemetryRecord's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTelemetryRecord' :: Types.Timestamp -> ( { "Timestamp" :: (Types.Timestamp) , "SegmentsReceivedCount" :: NullOrUndefined (NullableInteger) , "SegmentsSentCount" :: NullOrUndefined (NullableInteger) , "SegmentsSpilloverCount" :: NullOrUndefined (NullableInteger) , "SegmentsRejectedCount" :: NullOrUndefined (NullableInteger) , "BackendConnectionErrors" :: NullOrUndefined (BackendConnectionErrors) } -> {"Timestamp" :: (Types.Timestamp) , "SegmentsReceivedCount" :: NullOrUndefined (NullableInteger) , "SegmentsSentCount" :: NullOrUndefined (NullableInteger) , "SegmentsSpilloverCount" :: NullOrUndefined (NullableInteger) , "SegmentsRejectedCount" :: NullOrUndefined (NullableInteger) , "BackendConnectionErrors" :: NullOrUndefined (BackendConnectionErrors) } ) -> TelemetryRecord
newTelemetryRecord' _Timestamp customize = (TelemetryRecord <<< customize) { "Timestamp": _Timestamp, "BackendConnectionErrors": (NullOrUndefined Nothing), "SegmentsReceivedCount": (NullOrUndefined Nothing), "SegmentsRejectedCount": (NullOrUndefined Nothing), "SegmentsSentCount": (NullOrUndefined Nothing), "SegmentsSpilloverCount": (NullOrUndefined Nothing) }



newtype TelemetryRecordList = TelemetryRecordList (Array TelemetryRecord)
derive instance newtypeTelemetryRecordList :: Newtype TelemetryRecordList _
derive instance repGenericTelemetryRecordList :: Generic TelemetryRecordList _
instance showTelemetryRecordList :: Show TelemetryRecordList where show = genericShow
instance decodeTelemetryRecordList :: Decode TelemetryRecordList where decode = genericDecode options
instance encodeTelemetryRecordList :: Encode TelemetryRecordList where encode = genericEncode options



-- | <p>The request exceeds the maximum number of requests per second.</p>
newtype ThrottledException = ThrottledException 
  { "Message" :: NullOrUndefined (ErrorMessage)
  }
derive instance newtypeThrottledException :: Newtype ThrottledException _
derive instance repGenericThrottledException :: Generic ThrottledException _
instance showThrottledException :: Show ThrottledException where show = genericShow
instance decodeThrottledException :: Decode ThrottledException where decode = genericDecode options
instance encodeThrottledException :: Encode ThrottledException where encode = genericEncode options

-- | Constructs ThrottledException from required parameters
newThrottledException :: ThrottledException
newThrottledException  = ThrottledException { "Message": (NullOrUndefined Nothing) }

-- | Constructs ThrottledException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newThrottledException' :: ( { "Message" :: NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined (ErrorMessage) } ) -> ThrottledException
newThrottledException'  customize = (ThrottledException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>A collection of segment documents with matching trace IDs.</p>
newtype Trace = Trace 
  { "Id" :: NullOrUndefined (TraceId)
  , "Duration" :: NullOrUndefined (NullableDouble)
  , "Segments" :: NullOrUndefined (SegmentList)
  }
derive instance newtypeTrace :: Newtype Trace _
derive instance repGenericTrace :: Generic Trace _
instance showTrace :: Show Trace where show = genericShow
instance decodeTrace :: Decode Trace where decode = genericDecode options
instance encodeTrace :: Encode Trace where encode = genericEncode options

-- | Constructs Trace from required parameters
newTrace :: Trace
newTrace  = Trace { "Duration": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "Segments": (NullOrUndefined Nothing) }

-- | Constructs Trace's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTrace' :: ( { "Id" :: NullOrUndefined (TraceId) , "Duration" :: NullOrUndefined (NullableDouble) , "Segments" :: NullOrUndefined (SegmentList) } -> {"Id" :: NullOrUndefined (TraceId) , "Duration" :: NullOrUndefined (NullableDouble) , "Segments" :: NullOrUndefined (SegmentList) } ) -> Trace
newTrace'  customize = (Trace <<< customize) { "Duration": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "Segments": (NullOrUndefined Nothing) }



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
  { "Id" :: NullOrUndefined (TraceId)
  , "Duration" :: NullOrUndefined (NullableDouble)
  , "ResponseTime" :: NullOrUndefined (NullableDouble)
  , "HasFault" :: NullOrUndefined (NullableBoolean)
  , "HasError" :: NullOrUndefined (NullableBoolean)
  , "HasThrottle" :: NullOrUndefined (NullableBoolean)
  , "IsPartial" :: NullOrUndefined (NullableBoolean)
  , "Http" :: NullOrUndefined (Http)
  , "Annotations" :: NullOrUndefined (Annotations)
  , "Users" :: NullOrUndefined (TraceUsers)
  , "ServiceIds" :: NullOrUndefined (ServiceIds)
  }
derive instance newtypeTraceSummary :: Newtype TraceSummary _
derive instance repGenericTraceSummary :: Generic TraceSummary _
instance showTraceSummary :: Show TraceSummary where show = genericShow
instance decodeTraceSummary :: Decode TraceSummary where decode = genericDecode options
instance encodeTraceSummary :: Encode TraceSummary where encode = genericEncode options

-- | Constructs TraceSummary from required parameters
newTraceSummary :: TraceSummary
newTraceSummary  = TraceSummary { "Annotations": (NullOrUndefined Nothing), "Duration": (NullOrUndefined Nothing), "HasError": (NullOrUndefined Nothing), "HasFault": (NullOrUndefined Nothing), "HasThrottle": (NullOrUndefined Nothing), "Http": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "IsPartial": (NullOrUndefined Nothing), "ResponseTime": (NullOrUndefined Nothing), "ServiceIds": (NullOrUndefined Nothing), "Users": (NullOrUndefined Nothing) }

-- | Constructs TraceSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTraceSummary' :: ( { "Id" :: NullOrUndefined (TraceId) , "Duration" :: NullOrUndefined (NullableDouble) , "ResponseTime" :: NullOrUndefined (NullableDouble) , "HasFault" :: NullOrUndefined (NullableBoolean) , "HasError" :: NullOrUndefined (NullableBoolean) , "HasThrottle" :: NullOrUndefined (NullableBoolean) , "IsPartial" :: NullOrUndefined (NullableBoolean) , "Http" :: NullOrUndefined (Http) , "Annotations" :: NullOrUndefined (Annotations) , "Users" :: NullOrUndefined (TraceUsers) , "ServiceIds" :: NullOrUndefined (ServiceIds) } -> {"Id" :: NullOrUndefined (TraceId) , "Duration" :: NullOrUndefined (NullableDouble) , "ResponseTime" :: NullOrUndefined (NullableDouble) , "HasFault" :: NullOrUndefined (NullableBoolean) , "HasError" :: NullOrUndefined (NullableBoolean) , "HasThrottle" :: NullOrUndefined (NullableBoolean) , "IsPartial" :: NullOrUndefined (NullableBoolean) , "Http" :: NullOrUndefined (Http) , "Annotations" :: NullOrUndefined (Annotations) , "Users" :: NullOrUndefined (TraceUsers) , "ServiceIds" :: NullOrUndefined (ServiceIds) } ) -> TraceSummary
newTraceSummary'  customize = (TraceSummary <<< customize) { "Annotations": (NullOrUndefined Nothing), "Duration": (NullOrUndefined Nothing), "HasError": (NullOrUndefined Nothing), "HasFault": (NullOrUndefined Nothing), "HasThrottle": (NullOrUndefined Nothing), "Http": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "IsPartial": (NullOrUndefined Nothing), "ResponseTime": (NullOrUndefined Nothing), "ServiceIds": (NullOrUndefined Nothing), "Users": (NullOrUndefined Nothing) }



newtype TraceSummaryList = TraceSummaryList (Array TraceSummary)
derive instance newtypeTraceSummaryList :: Newtype TraceSummaryList _
derive instance repGenericTraceSummaryList :: Generic TraceSummaryList _
instance showTraceSummaryList :: Show TraceSummaryList where show = genericShow
instance decodeTraceSummaryList :: Decode TraceSummaryList where decode = genericDecode options
instance encodeTraceSummaryList :: Encode TraceSummaryList where encode = genericEncode options



-- | <p>Information about a user recorded in segment documents.</p>
newtype TraceUser = TraceUser 
  { "UserName" :: NullOrUndefined (String)
  , "ServiceIds" :: NullOrUndefined (ServiceIds)
  }
derive instance newtypeTraceUser :: Newtype TraceUser _
derive instance repGenericTraceUser :: Generic TraceUser _
instance showTraceUser :: Show TraceUser where show = genericShow
instance decodeTraceUser :: Decode TraceUser where decode = genericDecode options
instance encodeTraceUser :: Encode TraceUser where encode = genericEncode options

-- | Constructs TraceUser from required parameters
newTraceUser :: TraceUser
newTraceUser  = TraceUser { "ServiceIds": (NullOrUndefined Nothing), "UserName": (NullOrUndefined Nothing) }

-- | Constructs TraceUser's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTraceUser' :: ( { "UserName" :: NullOrUndefined (String) , "ServiceIds" :: NullOrUndefined (ServiceIds) } -> {"UserName" :: NullOrUndefined (String) , "ServiceIds" :: NullOrUndefined (ServiceIds) } ) -> TraceUser
newTraceUser'  customize = (TraceUser <<< customize) { "ServiceIds": (NullOrUndefined Nothing), "UserName": (NullOrUndefined Nothing) }



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
  { "Id" :: NullOrUndefined (String)
  , "ErrorCode" :: NullOrUndefined (String)
  , "Message" :: NullOrUndefined (String)
  }
derive instance newtypeUnprocessedTraceSegment :: Newtype UnprocessedTraceSegment _
derive instance repGenericUnprocessedTraceSegment :: Generic UnprocessedTraceSegment _
instance showUnprocessedTraceSegment :: Show UnprocessedTraceSegment where show = genericShow
instance decodeUnprocessedTraceSegment :: Decode UnprocessedTraceSegment where decode = genericDecode options
instance encodeUnprocessedTraceSegment :: Encode UnprocessedTraceSegment where encode = genericEncode options

-- | Constructs UnprocessedTraceSegment from required parameters
newUnprocessedTraceSegment :: UnprocessedTraceSegment
newUnprocessedTraceSegment  = UnprocessedTraceSegment { "ErrorCode": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing) }

-- | Constructs UnprocessedTraceSegment's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUnprocessedTraceSegment' :: ( { "Id" :: NullOrUndefined (String) , "ErrorCode" :: NullOrUndefined (String) , "Message" :: NullOrUndefined (String) } -> {"Id" :: NullOrUndefined (String) , "ErrorCode" :: NullOrUndefined (String) , "Message" :: NullOrUndefined (String) } ) -> UnprocessedTraceSegment
newUnprocessedTraceSegment'  customize = (UnprocessedTraceSegment <<< customize) { "ErrorCode": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing) }



newtype UnprocessedTraceSegmentList = UnprocessedTraceSegmentList (Array UnprocessedTraceSegment)
derive instance newtypeUnprocessedTraceSegmentList :: Newtype UnprocessedTraceSegmentList _
derive instance repGenericUnprocessedTraceSegmentList :: Generic UnprocessedTraceSegmentList _
instance showUnprocessedTraceSegmentList :: Show UnprocessedTraceSegmentList where show = genericShow
instance decodeUnprocessedTraceSegmentList :: Decode UnprocessedTraceSegmentList where decode = genericDecode options
instance encodeUnprocessedTraceSegmentList :: Encode UnprocessedTraceSegmentList where encode = genericEncode options



-- | <p>Information about a segment annotation.</p>
newtype ValueWithServiceIds = ValueWithServiceIds 
  { "AnnotationValue" :: NullOrUndefined (AnnotationValue)
  , "ServiceIds" :: NullOrUndefined (ServiceIds)
  }
derive instance newtypeValueWithServiceIds :: Newtype ValueWithServiceIds _
derive instance repGenericValueWithServiceIds :: Generic ValueWithServiceIds _
instance showValueWithServiceIds :: Show ValueWithServiceIds where show = genericShow
instance decodeValueWithServiceIds :: Decode ValueWithServiceIds where decode = genericDecode options
instance encodeValueWithServiceIds :: Encode ValueWithServiceIds where encode = genericEncode options

-- | Constructs ValueWithServiceIds from required parameters
newValueWithServiceIds :: ValueWithServiceIds
newValueWithServiceIds  = ValueWithServiceIds { "AnnotationValue": (NullOrUndefined Nothing), "ServiceIds": (NullOrUndefined Nothing) }

-- | Constructs ValueWithServiceIds's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newValueWithServiceIds' :: ( { "AnnotationValue" :: NullOrUndefined (AnnotationValue) , "ServiceIds" :: NullOrUndefined (ServiceIds) } -> {"AnnotationValue" :: NullOrUndefined (AnnotationValue) , "ServiceIds" :: NullOrUndefined (ServiceIds) } ) -> ValueWithServiceIds
newValueWithServiceIds'  customize = (ValueWithServiceIds <<< customize) { "AnnotationValue": (NullOrUndefined Nothing), "ServiceIds": (NullOrUndefined Nothing) }



newtype ValuesWithServiceIds = ValuesWithServiceIds (Array ValueWithServiceIds)
derive instance newtypeValuesWithServiceIds :: Newtype ValuesWithServiceIds _
derive instance repGenericValuesWithServiceIds :: Generic ValuesWithServiceIds _
instance showValuesWithServiceIds :: Show ValuesWithServiceIds where show = genericShow
instance decodeValuesWithServiceIds :: Decode ValuesWithServiceIds where decode = genericDecode options
instance encodeValuesWithServiceIds :: Encode ValuesWithServiceIds where encode = genericEncode options

