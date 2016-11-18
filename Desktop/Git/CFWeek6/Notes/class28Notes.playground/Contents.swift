
import UIKit


                        ////// CLASS 28 \\\\\\\
                       //////  11/17/16  \\\\\\




/*
#NOTES:
 
 ** Composite Objects **
    --> a way to extend the def of a class to other objects
 - defining a subclass inherits all the instance variables and methods of the parent class
 
 ** Preprocessor **
    --> provides tools that enable you to import different systems
 - processes statements before analysis of the objective-c program takes place
 - #
 - #define TRUE 1
    -- TRUE will be replaced with the value of 1...forevvvvvuuurrrrr
 - can evaluate statements, take in parameters
 - #import is a way for the processor to look for a specified file in the program
 - @import allows modules to be preprocessed quickly
 
 ** Polymorphism, Dynamic Typing, Dynamic Binding **
 
    * Polymorphism *
        - enables programs to be developed so that objects from diff classes can define methods that share the same name
        - system always carries info about the class to which an object belongs
    * Dynamic Typing *
    --> "types being dynamic"
        - defers the determination of the class that an object belongs to until Runtime
        - id can be used for storing obejct that belong to any class
        - don't get into the habit of using this generic class data type
            -- use static typing
                -> define a variable to be an object from a particular class
        - isKindOfClass(check class inheritance chain), isMemberOfClass(class object--exact type), respondsToSelector(responds to specific method), isSubclassOfClass
            -- used for checking specific scenarios(considered best practice to do so)
            -- only really neeeded when using id(can think of as a "layer of safety"
    * Dynamic Binding *
        - Dynamic binding deferts the determination of the actual method to invoke on an object until program execution time
        - determining the object type from the object at runtime
        - once type is known, can find the apprpriate method located in that type's dispatch table
 
 ** Retain Cycles **
 --> when 2 objects have strong refs to each other
    - weak ref is a "non-owning" relationship(does not 'retain' the object)
    - parents objects should have strong refs to their children(children have weak to the parents)
    - weak self & blocks
        --when referring to self inside a block(or closure) is best to create a weak ref of self before the block and use that ref instead of self -> __weak typeof(self)weakSelf = self;(outside/before the block/closure)
                                                       -> __string typeof(self)strongSelf = weakSelf;(inside block/closure)
                -> the above is all don to avoid
 
 
 ** Multiple Storyboards **
 - sometimes for large projects is beneficial to break up into smaller storyboards(like one for each tab bar)
 * workflow *
    - add new storyboard file
    - give storyboard a name that describes what it features or area of app it encompasses
    - in code...transition to a VC in another storyboard
        -- UIStoryboard's storyboardWithName:bundle:(gets ref to a storyboard)
    - instantiate initial VC
 
 ** KVO & KVC(Key Value Coding) **
 
 * NSKeyValueCoding *
 -> protocol that defines mechanisms for indirectly accessing object properties
    -- Object properties can be accessed in a consistent manner
 
 * KVO *
 -> protocol, considered informal, meaning you won't see it advertised in the docs when objects conform, because NSObject is assumed to conform to it
    - properties can be observed indirectly by their key
    - one object can observe the property of another object
    - closely related with kvc
    - is available in swift(have to make sure objects inherit from NSObject)
 
*/