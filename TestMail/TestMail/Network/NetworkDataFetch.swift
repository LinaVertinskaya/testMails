//
//  NetworkDataFetch.swift
//  TestMail
//
//  Created by Лина Вертинская on 10.07.22.
//

import Foundation

class NetworkDataFetch {
    static let shared = NetworkDataFetch()
    private init() {}

    func fetchMail(verifiableMail: String, responce: @escaping (MailResponceModel?, Error?) -> Void) {
        NetworkRequest.shared.requestData(verifiableMail: verifiableMail) { result in
            switch result {
            case .success(let data):
                do {
                    let mail = try JSONDecoder().decode(MailResponceModel.self,
                                                        from: data)
                    responce(mail, nil)
                } catch let jsonError {
                    print("Failed to decode JSON", jsonError)
                }
            case .failure(let error):
                print("Error received requesting data: \(error.localizedDescription)")
                responce(nil, error)
            }
        }
    }
}
