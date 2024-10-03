fn main(){
    let mut iterations = std::u64::MAX; 

    for argument in std::env::args(){
        println!("{argument}");
        let result = argument.parse::<u64>(); 

        match result{
            Ok(_v) => {
                iterations = result.unwrap();
            },
            Err(_e) => (), 
        }

    }

    println!("fizzing buzz to {iterations} :3");

    let mut fizzbuzz = String::new();
    
    for number in 0..iterations{
        fizzbuzz.clear();

        if number % 3 == 0{
            fizzbuzz.push_str("fizz");
        }
        if number % 5 == 0{
            fizzbuzz.push_str("buzz");
        }

        if fizzbuzz != ""{
            println!("{fizzbuzz}");
        }
        else{
            println!("{number}");
        }
    }
}
