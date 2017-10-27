//
//  TestSpecsTests.m
//  TestSpecsTests
//
//  Created by anton-matosov on 10/26/2017.
//  Copyright (c) 2017 anton-matosov. All rights reserved.
//

// https://github.com/Specta/Specta

@import Specta;
@import Expecta;
@import CoreTelephony;
@import Accelerate; 

SpecBegin(InitialSpecs)

describe(@"these will fail", ^{

    it(@"can do maths", ^{
        expect(1).to.equal(2);
    });

    it(@"can read", ^{
        expect(@"number").to.equal(@"string");
    });
    
    it(@"will wait for 10 seconds and fail", ^{
        waitUntil(^(DoneCallback done) {
        
        });
    });
});

describe(@"these will pass", ^{
    
    it(@"can do maths", ^{
        expect(1).beLessThan(23);
    });
    
    it(@"can read", ^{
        expect(@"team").toNot.contain(@"I");
    });
    
    it(@"will wait and succeed", ^{
        waitUntil(^(DoneCallback done) {
            done();
        });
    });
});

SpecEnd

