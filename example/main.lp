import "os"
import "json"
import "module1/show_name"

fn main() {

// 变量类型推导
   var v = "this is a value"
   let h = 2
   const g = "常量"

// 流程控制
   for i = 0; i < 100; i++ {
		print("for循环")
   }
   
   for {
        i += 1
        print("for无线循环")
        if(i >= 10){
            break
        }
    }

// 函数调用
    say_hi(v,h)
    // 函数链式调用
        init_value(h) |> second_f

// json解析/反解
    let str = `{"name":"jx"}`
    let result = json.parse(str)
    result = json.stringify(result)

// 错误处理
    try{
        os.readFile('./a.txt')
    }catch{
        print("error!")
    }
}

// 函数定义
fn say_hi(a:string,b:int32) int32 {
    print("{},{}",a,b)
    
}
fn init_value(a:int32) int32{
    return a
}
fn second_f(temp:int32) int32 {
    return temp
}

