import Cocoa

var greeting = "Hello, playground"

func bai1() {
    var sum = 0
    var i = 0
    let n = 20
    while(i <= n){
        sum = sum + i
        i = i + 1
        print("tong thu :",i,sum)
    }
    print("tong la:",sum)
}
//bai1()
func bai2(){
    var sum = 0
    var i = 1
    let n = 20
    while(i <= n){
        sum = sum + i * i
        i += 1
        print("tong thu :",i,sum)
    }
    print("tong la:",sum)
}
//bai2()
func bai3(){
    var i = 1
    let n = 10
    var sum : Float
    sum = 0
    while(i < n){
        sum = sum + 1.0 / Float(i)
        i += 1
    }
    print("tong la:",sum)
}
//bai3()
func bai4(){
    var i = 1
    let n = 10
    var sum : Float
    sum = 0
    while(i < n){
        sum = sum + 1.0 / Float(i * 2)
        i += 1
    }
    print("tong la:",sum)
}
//bai4()
func bai5(){
    let n = 10
    var sum : Float
    var i = 1
    sum = 0
    while(i < n){
        sum = sum + 1.0 / Float((i * 2) + 1)
        i += 1
    }
    print("tong la:",sum)
}
bai5()
