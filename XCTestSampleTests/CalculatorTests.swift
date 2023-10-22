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
    
    // 機能テスト - 割り切れるケース
    func testDivisionWithDivisibleNumbers() {
        do {
            XCTAssertEqual(try calculator.divide(10, 2), 5, "Division of 10 by 2 failed")
        } catch {
            XCTFail("Unexpected error: \(error)")
        }
    }
    
    // 機能テスト - 割り切れないケース
    func testDivisionWithNonDivisibleNumbers() {
        do {
            XCTAssertEqual(try calculator.divide(10, 3), 3, "Division of 10 by 3 failed")
        } catch {
            XCTFail("Unexpected error: \(error)")
        }
    }
    
    // 限界値テスト
    func testDivisionWithBoundaryValues() {
        do {
            XCTAssertEqual(try calculator.divide(Int.max, 2), 4_611_686_018_427_387_903, "Division of Int.max by 2 failed")
            XCTAssertEqual(try calculator.divide(Int.max - 1, 2), 4_611_686_018_427_387_903, "Division of (Int.max - 1) by 2 failed")
            XCTAssertEqual(try calculator.divide(Int.min, 2), -4_611_686_018_427_387_904, "Division of Int.min by 2 failed")
            XCTAssertEqual(try calculator.divide(Int.min + 1, 2), -4_611_686_018_427_387_903, "Division of (Int.min + 1) by 2 failed")
        } catch {
            XCTFail("Unexpected error: \(error)")
        }
    }
    
    // 異常系テスト - 0除算
    func testDivisionByZero() {
        XCTAssertThrowsError(try calculator.divide(5, 0)) { error in
            XCTAssertTrue(error is CalculatorError, "Division by zero did not throw CalculatorError")
        }
    }
    
    
}
