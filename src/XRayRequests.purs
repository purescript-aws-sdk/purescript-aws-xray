
module AWS.XRay.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.XRay as XRay
import AWS.XRay.Types as XRayTypes


-- | <p>Retrieves a list of traces specified by ID. Each trace is a collection of segment documents that originates from a single request. Use <code>GetTraceSummaries</code> to get a list of trace IDs.</p>
batchGetTraces :: forall eff. XRay.Service -> XRayTypes.BatchGetTracesRequest -> Aff (exception :: EXCEPTION | eff) XRayTypes.BatchGetTracesResult
batchGetTraces (XRay.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "batchGetTraces"


-- | <p>Retrieves a document that describes services that process incoming requests, and downstream services that they call as a result. Root services process incoming requests and make calls to downstream services. Root services are applications that use the AWS X-Ray SDK. Downstream services can be other applications, AWS resources, HTTP web APIs, or SQL databases.</p>
getServiceGraph :: forall eff. XRay.Service -> XRayTypes.GetServiceGraphRequest -> Aff (exception :: EXCEPTION | eff) XRayTypes.GetServiceGraphResult
getServiceGraph (XRay.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getServiceGraph"


-- | <p>Retrieves a service graph for one or more specific trace IDs.</p>
getTraceGraph :: forall eff. XRay.Service -> XRayTypes.GetTraceGraphRequest -> Aff (exception :: EXCEPTION | eff) XRayTypes.GetTraceGraphResult
getTraceGraph (XRay.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getTraceGraph"


-- | <p>Retrieves IDs and metadata for traces available for a specified time frame using an optional filter. To get the full traces, pass the trace IDs to <code>BatchGetTraces</code>.</p> <p>A filter expression can target traced requests that hit specific service nodes or edges, have errors, or come from a known user. For example, the following filter expression targets traces that pass through <code>api.example.com</code>:</p> <p> <code>service("api.example.com")</code> </p> <p>This filter expression finds traces that have an annotation named <code>account</code> with the value <code>12345</code>:</p> <p> <code>annotation.account = "12345"</code> </p> <p>For a full list of indexed fields and keywords that you can use in filter expressions, see <a href="http://docs.aws.amazon.com/xray/latest/devguide/xray-console-filters.html">Using Filter Expressions</a> in the <i>AWS X-Ray Developer Guide</i>.</p>
getTraceSummaries :: forall eff. XRay.Service -> XRayTypes.GetTraceSummariesRequest -> Aff (exception :: EXCEPTION | eff) XRayTypes.GetTraceSummariesResult
getTraceSummaries (XRay.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getTraceSummaries"


-- | <p>Used by the AWS X-Ray daemon to upload telemetry.</p>
putTelemetryRecords :: forall eff. XRay.Service -> XRayTypes.PutTelemetryRecordsRequest -> Aff (exception :: EXCEPTION | eff) XRayTypes.PutTelemetryRecordsResult
putTelemetryRecords (XRay.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "putTelemetryRecords"


-- | <p>Uploads segment documents to AWS X-Ray. The X-Ray SDK generates segment documents and sends them to the X-Ray daemon, which uploads them in batches. A segment document can be a completed segment, an in-progress segment, or an array of subsegments.</p> <p>Segments must include the following fields. For the full segment document schema, see <a href="http://docs.aws.amazon.com/xray/latest/devguide/xray-api-segmentdocuments.html">AWS X-Ray Segment Documents</a> in the <i>AWS X-Ray Developer Guide</i>.</p> <p class="title"> <b>Required Segment Document Fields</b> </p> <ul> <li> <p> <code>name</code> - The name of the service that handled the request.</p> </li> <li> <p> <code>id</code> - A 64-bit identifier for the segment, unique among segments in the same trace, in 16 hexadecimal digits.</p> </li> <li> <p> <code>trace_id</code> - A unique identifier that connects all segments and subsegments originating from a single client request.</p> </li> <li> <p> <code>start_time</code> - Time the segment or subsegment was created, in floating point seconds in epoch time, accurate to milliseconds. For example, <code>1480615200.010</code> or <code>1.480615200010E9</code>.</p> </li> <li> <p> <code>end_time</code> - Time the segment or subsegment was closed. For example, <code>1480615200.090</code> or <code>1.480615200090E9</code>. Specify either an <code>end_time</code> or <code>in_progress</code>.</p> </li> <li> <p> <code>in_progress</code> - Set to <code>true</code> instead of specifying an <code>end_time</code> to record that a segment has been started, but is not complete. Send an in progress segment when your application receives a request that will take a long time to serve, to trace the fact that the request was received. When the response is sent, send the complete segment to overwrite the in-progress segment.</p> </li> </ul> <p>A <code>trace_id</code> consists of three numbers separated by hyphens. For example, 1-58406520-a006649127e371903a2de979. This includes:</p> <p class="title"> <b>Trace ID Format</b> </p> <ul> <li> <p>The version number, i.e. <code>1</code>.</p> </li> <li> <p>The time of the original request, in Unix epoch time, in 8 hexadecimal digits. For example, 10:00AM December 2nd, 2016 PST in epoch time is <code>1480615200</code> seconds, or <code>58406520</code> in hexadecimal.</p> </li> <li> <p>A 96-bit identifier for the trace, globally unique, in 24 hexadecimal digits.</p> </li> </ul>
putTraceSegments :: forall eff. XRay.Service -> XRayTypes.PutTraceSegmentsRequest -> Aff (exception :: EXCEPTION | eff) XRayTypes.PutTraceSegmentsResult
putTraceSegments (XRay.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "putTraceSegments"
