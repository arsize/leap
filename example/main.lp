fn main() {
    v = "this is a value"
    h = 2
    sayHi(v,h)

    for i = 0; i < 100; i++ {
		print(i)
	}
}

fn sayHi(a:string,b:int32) int32 {
    print("{},{}",a,b)
}
