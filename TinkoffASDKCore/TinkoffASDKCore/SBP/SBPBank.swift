//
//
//  SBPBank.swift
//
//  Copyright (c) 2021 Tinkoff Bank
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//   http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//


import Foundation

public struct SBPBank: Decodable {
    public let name: String
    public let logoURL: URL?
    public let schema: String
    
    enum CodingKeys: String, CodingKey {
        case name = "bankName"
        case logoURL
        case schema
    }
    
    public init(name: String,
                logoURL: URL?,
                schema: String) {
        self.name = name
        self.logoURL = logoURL
        self.schema = schema
    }
}
