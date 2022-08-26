import Cocoa
import Foundation

var greeting = "Hello, playground"

//Bài 1: Tính S(n) = 1 + 2 + 3 + … + n
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
//Bài 2: Tính S(n) = 1^2 + 2^2 + … + n^2
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
//Bài 3: Tính S(n) = 1 + ½ + 1/3 + … + 1/n
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
//Bài 4: Tính S(n) = ½ + ¼ + … + 1/2n
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
//Bài 5: Tính S(n) = 1 + 1/3 + 1/5 + … + 1/(2n + 1)
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
//bai5()
//Bài 6: Tính S(n) = 1/1×2 + 1/2×3 +…+ 1/n x (n + 1)
func bai6(){
    let n = 10
    var sum : Float
    var i = 1
    sum = 0
    while(i < n){
        sum = sum + 1.0 / Float(i * ( i + 1))
        i += 1
    }
    print("tong la:",sum)
}
bai6()
//Bài 7: Tính S(n) = ½ + 2/3 + ¾ + …. + n / n + 1
func bai7(){
    let n = 5
    var sum : Float
    var i = 1
    sum = 0.0
    while(i < n){
        sum = sum + Float(i) / (Float(i + 1))
        i += 1
    }
    print("tong la:",sum)
}
bai7()
//Bài 8: Tính S(n) = ½ + ¾ + 5/6 + … + 2n + 1/ 2n + 2
func bai8(){
        let n = 10
        var sum : Float
        var i = 1
        sum = 0
        while(i < n){
            sum = sum + Float((2*i)+1) / Float((2*i)+2)
            i += 1
        }
        print("tong la:",sum)
}
bai8()
//Bài 9: Tính T(n) = 1 x 2 x 3…x N
func bai9(){
    var P = 1
    var i = 1
    let n = 4
    while(i <= n)
       {
           P = P * i
           i = i + 1
       }
    print("tich la:", P )
}
//bai9()
//Bài 10: Tính T(x, n) = x^n
func bai10(){
    
}
//bai10()
//Bài 11: Tính S(n) = 1 + 1.2 + 1.2.3 + … + 1.2.3….N
func bai11(){
    var S = 0 , P = 1 , i = 1
    let n = 6
    while(i <= n)
       {
           P = P * i
           S = S + P
           i = i + 1
       }
    print("tong la:", S )
}
//bai11()
//Bài 12: Tính S(n) = x + x^2 + x^3 + … + x^n
func bai12(){
    var T = 1 , S = 0 , i = 1
    let n = 5 , x = 5
    while(i <= n)
       {
           T = T * x
           S = S + T
           i = i + 1
       }
       print("Tong la ",S)
}
//bai12()
//Bài 13: Tính S(n) = x^2 + x^4 + … + x^2n
func bai13(){
    var T = 1 , S = 0 , i = 1
    let n = 5 , x = 5
    while(i <= n)
       {
           T = Int(pow(Double(x),Double(2 * i)))
           S = S + T
           i = i + 1
       }
       print("Tong la ",S)
}
//bai13()
//Bài 14: Tính S(n) = x + x^3 + x^5 + … + x^2n + 1
func bai14(){
    var T = 1 , S = 0 , i = 1
    let n = 5 , x = 5
    while(i < n)
       {
           T = Int(pow(Double(x),Double(2 * i + 1)))
           S = S + T
           i = i + 1
       }
       print("Tong la ",S)
}
//bai14()
//Bài 15: Tính S(n) = 1 + 1/1 + 2 + 1/ 1 + 2 + 3 + ….. + 1/ 1 + 2 + 3 + …. + N
func bai15(){
    var T : Float = 1 , S : Float = 0 , i = 1
    let n = 6
    while(i <    n)
       {
            T = T + Float(i)
            print(T)
            S = S + 1.0 / T
            i = i + 1
       }
    print("Tong la ",S)
}
//bai15()
//Bài 16: Tính S(n) = x + x^2/1 + 2 + x^3/1 + 2 + 3 + … + x^n/1 + 2 + 3 + …. + N
func bai16(){
    var S = 0 , T = 1 ,M = 0 , i = 1
    let n = 6 , x = 6
    while(i < n)
        {
            T = T * x
            M = M + i
            S = S + T/M
            i = i + 1
        }
    print("Tong la ",S)
}
bai16()
//Tính S(n) = x + x^2/2! + x^3/3! + … + x^n/N!
//func bai17(){
//    var S = 0 , T = 1 ,M = 0 , i = 1
//    let n = 10 , x = 9
//    while(i < n)
//        {
//            T = T * x
//            M = M * i
//            S = S + T/M
//            i = i + 1
//        }
//    print("Tong la ",S)
//}
//bai17()

//Bài 20: Liệt kê tất cả các “ước số” của số nguyên dương n
func bai20(){
//    var output : CInt = 0
//    getInput(&output)
//    println(output)
    let input = readLine()
    var i = 0
    while i < input {
        
    }
    
}
bai20()
