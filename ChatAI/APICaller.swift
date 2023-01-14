//
//  APICaller.swift
//  ChatAI
//
//  Created by Vishnu vardhan on 14/12/22.
//

import OpenAISwift
import Foundation


final class APICaller {
    static let shared = APICaller()
    
    @frozen enum Constants{
        static let key = "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"
    }
    
    private var client : OpenAISwift?
    private init(){}
    
    public func setup(){
        self.client = OpenAISwift(authToken: Constants.key)
    }
    
    public func getResponce(input: String,
                            Completion: @escaping (Result<String, Error>) -> Void){
        client?.sendCompletion(with: input, completionHandler: {result in
            switch result{
                
            case .success(let model):
                let output = model.choices.first?.text ?? ""
                Completion(.success(output))
            case .failure(let error):
                Completion(.failure(error))
            }
            
        })
        
    }
}
