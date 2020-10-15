//
//  TaskResult.swift
//  Swedbank
//
//  Created by Kassem Itani on 10/6/20.
//

import Foundation

enum TaskResult<T> {
    case success(T)
    case failure(Error)
}
