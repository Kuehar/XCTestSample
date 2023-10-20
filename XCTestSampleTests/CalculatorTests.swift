//
//  CalculatorTests.swift
//  XCTestSampleTests
//
//  Created by kuehar on 2023/10/20.
//


import XCTest
@testable import XCTestSample

class CalculatorTests:XCTestCase{
    
    var calculator:Calculator!
    
    // 各テストメソッドごとの前処理
    override func setUp(){
        super.setUp()
        self.calculator = Calculator()
    }
    
    // 各テストメソッドごとの後処理
    override func tearDown() {
        super.tearDown()
    }
    
    /// テスト用のメソッド
    /// テストする時のメソッド名の先頭にtestをつける必要がある
    /// `add`という名称のメソッドのテストのため`testAdd`になる
    func testAdd(){
        // テストが成功するケース
        XCTAssertEqual(calculator.add(1,2),3)
        
        // テストが失敗するケース
        // testAdd(): XCTAssertEqual failed: ("3") is not equal to ("4")
        // XCTAssertEqual(calculator.add(1,2),4)
    }
    
    func testSubtract(){
        // テストが成功するケース
        XCTAssertEqual(calculator.subtract(3,1),2)
        
        // テストが失敗するケース
        // testSubtract(): XCTAssertEqual failed: ("4") is not equal to ("2")
        // XCTAssertEqual(calculator.subtract(3,-1),2)
    }
    
    
    func testMultiple(){
        // テストが成功するケース
        XCTAssertEqual(calculator.multiple(2,3),6)
        
        // テストが失敗するケース
        // testMultiple(): XCTAssertEqual failed: ("6") is not equal to ("-6")
        // XCTAssertEqual(calculator.multiple(-2,-3),-6)
    }
    
    func testDivide(){
        // テストが成功するケース
        XCTAssertEqual(calculator.divide(6,2),3)
        
        // テストが失敗するケース
        // testDivision(): XCTAssertEqual failed: ("2") is not equal to ("3")
        // XCTAssertEqual(calculator.divide(6,3),3)
    }
    
}
