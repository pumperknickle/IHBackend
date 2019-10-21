import Foundation
import IHDataSchema
import Vapor

protocol IHService {
	associatedtype CapturedRequestType: CapturedRequest
	associatedtype EndpointType: Endpoint
	associatedtype RecordedResponseType: RecordedResponse
	associatedtype ScannerRequestType: ScannerRequest
}
