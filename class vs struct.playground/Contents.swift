//https://www.youtube.com/watch?v=eW2Rp4F91VQ not full done yet
//struct  value type
// class are reference type



//class Student  {
//    var name : String?
//}


struct Student {
    var name : String?
}

var student1 = Student()
student1.name = "a"

var student2 = student1
student2.name = "c"

print(student1.name)
print(student2.name)

//for class
//        Optional("c")
//        Optional("c")

//for struct
//Optional("a")
//Optional("c")



// deinit is present in class
// deinit is not present in struct


// for structure we dont need to make a initiliser for non option , it will be made for us
// for calss we have to explicitly write initilisers

// struct dont support inheritance (but can be done through protocols)
// class have inhertance

//struct stored in stack // fast access
    // classes are stored in heap
