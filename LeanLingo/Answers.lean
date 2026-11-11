/-!
# LeanLingo answers

Answers and explanations for `LeanLingo/Exercises.lean`, keyed by question id.
Spoilers below.
-/

/-! # World 1: Expressions, Types & Functions -/

-- [w1-u1-l1-a]
--   D) #eval
--   #eval runs an expression and prints the result. #check shows the type without evaluating.
--   Book: “To ask Lean to evaluate an expression, write #eval before it in your editor, which will then report the result back.”

-- [w1-u1-l1-b]
--   61
--   Standard integer addition.

-- [w1-u1-l1-c]
--   D) Yes
--   Lean uses the conventional precedences, so * binds tighter than +.
--   Book: “Lean obeys the ordinary rules of precedence and associativity for arithmetic operators.”

-- [w1-u1-l2-a]
--   D) Separated by spaces
--   Lean uses juxtaposition: f x y, not f(x, y).
--   Book: “While both ordinary mathematical notation and the majority of programming languages use parentheses (e.g. f(x)) to apply a function to its arguments, Lean simply writes the function next to its arguments (e.g. f x).”

-- [w1-u1-l2-b]
--   "BC"
--   Append "B" and "C" → "BC".
--   Book: “because otherwise the second String.append would be interpreted as an argument to the first, rather than as a function being passed "oak " and "tree" as arguments.”

-- [w1-u1-l2-c]
--   "ABC"
--   Inner appends to "BC", then "A" prepended.
--   Book: “The value of the inner String.append call must be found first, after which it can be appended to "great ", yielding the final value "great oak tree".”

-- [w1-u1-l2-d]
--   A) So it is treated as a single argument to the outer call
--   Without parens, Lean would parse the tokens as separate arguments to the outer call.
--   Book: “The value of the inner String.append call must be found first, after which it can be appended to "great ", yielding the final value "great oak tree".”

-- [w1-u1-l3-a]
--   "AB"
--   Direct append.
--   Book: “because otherwise the second String.append would be interpreted as an argument to the first, rather than as a function being passed "oak " and "tree" as arguments.”

-- [w1-u1-l3-b]
--   "ABC"
--   Inner appends to "AB", then "C" appended.
--   Book: “The value of the inner String.append call must be found first, after which it can be appended to "great ", yielding the final value "great oak tree".”

-- [w1-u1-l3-c]
--   B) Yes — string append is associative
--   String concatenation is associative: (a++b)++c == a++(b++c).
--   Book: “because otherwise the second String.append would be interpreted as an argument to the first, rather than as a function being passed "oak " and "tree" as arguments.”

-- [w1-u1-l4-a]
--   C) Expression (it returns a value)
--   Every if/then/else has a value, just like a ternary expression in other languages.
--   Book: “Imperative languages often have two kinds of conditional: a conditional statement that determines which instructions to carry out based on a Boolean value, and a conditional expression that determines which of two expressions to evaluate based on a Boolean value.”

-- [w1-u1-l4-b]
--   true
--   3 equals 3, so == returns true.

-- [w1-u1-l4-c]
--   5
--   The condition is true, so the then-branch is returned.

-- [w1-u1-l5-a]
--   false
--   3 is not equal to 4.

-- [w1-u1-l5-b]
--   "not equal"
--   Condition is false, so else-branch is returned.

-- [w1-u1-l5-c]
--   C) Yes, it can return any type
--   Both branches must have the same type, but that type can be anything.
--   Book: “This message occurs because Lean functions that are applied to only some of their arguments return new functions that are waiting for the rest of the arguments.”

-- [w1-u2-l1-a]
--   C) Nat
--   Lean infers Nat unless context (e.g. an Int annotation) forces something else.
--   Book: “In Lean, Nat is the default type for non-negative integer literals.”

-- [w1-u2-l1-b]
--   0
--   Nat subtraction is truncated — it cannot go below 0.
--   Book: “Thus, subtraction on Nat returns zero when the answer would have otherwise been negative.”

-- [w1-u2-l1-c]
--   -1
--   The Int annotation enables signed arithmetic.

-- [w1-u2-l1-d]
--   A) Nat cannot represent negative numbers
--   Nat is the type of non-negative integers; subtraction saturates at 0.
--   Book: “In Lean, Nat is the default type for non-negative integer literals.”

-- [w1-u2-l2-a]
--   D) Reports the type without evaluating
--   #check is a type query; #eval runs the expression.
--   Book: “To check the type of an expression without evaluating it, use #check instead of #eval.”

-- [w1-u2-l2-b]
--   Int
--   The annotation pins the type to Int.
--   Book: “reports 1 - 2 : Int without actually performing the subtraction.”

-- [w1-u2-l2-c]
--   B) The second argument is a List String, not a String
--   String.append takes two Strings; you passed a list as the second argument.
--   Book: “because the first argument to String.append is expected to be a string, but a list of strings was provided instead.”

-- [w1-u3-l1-a]
--   A) def
--   def binds a name to a value or function.
--   Book: “Finally, defining the new name for Nat using abbrev instead of def allows overloading resolution to replace the defined name with its definition.”

-- [w1-u3-l1-b]
--   A) :=
--   = is reserved for propositional equality; := is the assignment operator.
--   Book: “In Lean, new names are defined using the colon-equal operator := rather than =.”

-- [w1-u3-l1-c]
--   sep
--   sep goes between s1 and s2: s1 ++ (sep ++ s2).

-- [w1-u3-l1-d]
--   "one, and another"
--   sep=", ", so result is "one" ++ ", " ++ "and another".
--   Book: “Another solution is to define an overloading for NaturalNumber that works equivalently to the one for Nat.”

-- [w1-u3-l2-a]
--   C) String → String → String → String
--   Functions in Lean are curried by default.
--   Book: “It is then possible to use Str as a definition's type instead of String:”

-- [w1-u3-l2-b]
--   B) You get back a function expecting the remaining arguments
--   This is called partial application or currying.
--   Book: “Using a function that returns a function to implement multiple-argument functions is called currying after the mathematician Haskell Curry.”

-- [w1-u3-l2-c]
--   String
--   One String argument was consumed, two remain, returning String.
--   Book: “This can be seen by providing one argument to a multiple-argument function: #check maximum 3 yields maximum 3 : Nat → Nat and #check spaceBetween "Hello " yields spaceBetween "Hello " : String → String.”

-- [w1-u3-l3-a]
--   h * w * d
--   Volume of a rectangular prism is the product of its dimensions.
--   Book: “Finally, defining the new name for Nat using abbrev instead of def allows overloading resolution to replace the defined name with its definition.”

-- [w1-u3-l3-b]
--   60
--   3 × 4 × 5 = 60.

-- [w1-u3-l3-c]
--   A) Nat → Nat → Nat → Nat
--   Three Nat parameters returning Nat, curried.
--   Book: “One way to work around this limitation is by providing the type Nat on the right-hand side of the definition, causing Nat's overloading rules to be used for 38:”

/-! # World 2: Dependent Type Theory -/

-- [w2-u1-l1-a]
--   A) Type
--   Type is the universe of "ordinary" types; Nat lives there.
--   Book: “Think of Type 0 as a universe of “small” or “ordinary” types.”

-- [w2-u1-l1-b]
--   A) Type 1
--   Universes form a hierarchy: Type : Type 1 : Type 2 ...
--   Book: “Lean is based on a version of dependent type theory known as the Calculus of Constructions, with a countable hierarchy of non-cumulative universes and inductive types.”

-- [w2-u1-l1-c]
--   B) Type 0
--   The unannotated Type is the base universe level.
--   Book: “Type 1 is then a larger universe of types, which contains Type 0 as an element, and Type 2 is an even larger universe of types, which contains Type 1 as an element.”

-- [w2-u1-l1-d]
--   1. Type
--   2. Type 1
--   3. Type 2
--   Each level contains the previous; Type = Type 0 is smallest of the listed.
--   Book: “Type 1 is then a larger universe of types, which contains Type 0 as an element, and Type 2 is an even larger universe of types, which contains Type 1 as an element.”

-- [w2-u1-l2-a]
--   Type,Type 0
--   Nat → Nat is itself a type, living in Type 0.
--   Book: “In the example above, def m : Nat := 1 defines a new constant m of type Nat whose value is 1.”

-- [w2-u1-l2-b]
--   Type,Type 0
--   Cartesian products of types in Type are themselves in Type.
--   Book: “One way in which Lean's dependent type theory extends simple type theory is that types themselves—entities like Nat and Bool—are first-class citizens, which is to say that they themselves are objects.”

-- [w2-u1-l2-c]
--   D) Cartesian product (pair type)
--   α × β is the type of pairs (a, b) where a : α and b : β.
--   Book: “For example, if a and b are types, a -> b denotes the type of functions from a to b, and a × b denotes the type of pairs consisting of an element of a paired with an element of b, also known as the Cartesian product.”

-- [w2-u2-l1-a]
--   A) fun (or λ)
--   fun (or the Greek λ) introduces a lambda.
--   Book: “Lean provides a fun (or λ) keyword to create a function from an expression as follows:”

-- [w2-u2-l1-b]
--   15
--   10 + 5 = 15.
--   Book: “The expression fun x : Nat => x denotes the identity function on Nat, the expression fun x : Nat => true denotes the constant function that always returns true, and fun x : Nat => g (f x) denotes the composition of f and g.”

-- [w2-u2-l1-c]
--   Nat
--   Returns x + 5 : Nat.
--   Book: “In type theory, this is generally more convenient than writing Nat.add as a function that takes a pair of natural numbers as input and returns a natural number as output.”

-- [w2-u2-l2-a]
--   C) Yes
--   They both produce a curried function of two arguments.
--   Book: “This means compose is a function that takes any two functions as input arguments, so long as those functions each take only one input.”

-- [w2-u2-l2-b]
--   Nat → Bool → Nat
--   Two parameters of types Nat and Bool, returning Nat.
--   Book: “You have already seen a nice example of this: the type List α depends on the argument α, and this dependence is what distinguishes List Nat and List Bool.”

-- [w2-u3-l1-a]
--   A) A local definition scoped to the enclosing expression
--   let bindings are visible only inside the expression that introduces them.
--   Book: “The expression let a := t1; t2 is definitionally equal to the result of replacing every occurrence of a in t2 by t1.”

-- [w2-u3-l1-b]
--   A) No — let bindings are local
--   Once the scope of the let ends, x is no longer in context.
--   Book: “Lean also allows you to introduce “local” definitions using the let keyword.”

-- [w2-u3-l2-a]
--   C) Declares a name and type that Lean auto-includes in definitions that use it
--   It saves you from repeating common parameters in every def.
--   Book: “The variable command instructs Lean to insert the declared variables as bound variables in definitions that refer to them by name.”

-- [w2-u3-l2-b]
--   C) No
--   Lean only auto-includes a variable when the body actually references it.
--   Book: “The variable command instructs Lean to insert the declared variables as bound variables in definitions that refer to them by name.”

-- [w2-u3-l3-a]
--   B) The argument is implicit — Lean infers it automatically
--   Curly braces are for implicit args; square brackets [] are for instance args.
--   Book: “When a function takes an argument that can generally be inferred from context, Lean allows you to specify that this argument should, by default, be left implicit.”

-- [w2-u3-l3-b]
--   @
--   #NAME?
--   Book: “Sometimes, however, we may find ourselves in a situation where we have declared an argument to a function to be implicit, but now want to provide the argument explicitly.”

-- [w2-u3-l3-c]
--   D) Nat
--   5 has default type Nat, so α is inferred to be Nat.
--   Book: “The type Nat can be inferred in this example:”

/-! # World 3: Structures, Datatypes & Patterns -/

-- [w3-u1-l1-a]
--   A) structure
--   structure declares a record with named fields and a single constructor.
--   Book: “Because structures exist to “bundle up” a collection of data, naming it and treating it as a single unit, it is also important to be able to extract the individual fields of a structure.”

-- [w3-u1-l1-b]
--   Float
--   All three dimensions are Floats.
--   Book: “A Cartesian point is a structure with two Float fields, called x and y.”

-- [w3-u1-l1-c]
--   A) RectangularPrism.mk plus accessors for each field
--   Lean generates a single constructor (.mk) and one accessor per field.
--   Book: “A three-dimensional point datatype may share the fields x and y, and be instantiated with the same field names:”

-- [w3-u1-l2-a]
--   D) Point
--   A segment is two points.
--   Book: “A Cartesian point is a structure with two Float fields, called x and y.”

-- [w3-u1-l2-b]
--   Point
--   Both endpoints are Points.
--   Book: “The resulting point is based on the x and y fields of both p1 and p2:”

-- [w3-u1-l2-c]
--   D) Float.sqrt of the sum of squared differences
--   Euclidean distance = √((x₂-x₁)² + (y₂-y₁)²).
--   Book: “Similarly, the distance between two points, which is the square root of the sum of the squares of the differences in their x and y components, can be written:”

-- [w3-u1-l2-d]
--   B) The horizontal distance between endpoints
--   It is the Δx component of the Euclidean distance.
--   Book: “Similarly, the distance between two points, which is the square root of the sum of the squares of the differences in their x and y components, can be written:”

-- [w3-u1-l3-a]
--   A) Hamster.name and Hamster.fluffy
--   Lean auto-generates one accessor per field, namespaced by the type.
--   Book: “In addition to the constructor, an accessor function is defined for each field of a structure.”

-- [w3-u1-l3-b]
--   Hamster
--   .mk takes the field values in declaration order and returns a Hamster.
--   Book: “In functional programming communities, what is almost always meant by this kind of statement is that a fresh Point is allocated with the x field pointing to the new value, and all other fields pointing to the original values from the input.”

-- [w3-u2-l1-a]
--   A) inductive
--   inductive types can have 0, 1, or many constructors.
--   Book: “Many of the built-in types are actually inductive datatypes in the standard library.”

-- [w3-u2-l1-b]
--   A) 2: true and false
--   Bool is the canonical two-constructor inductive.
--   Book: “Here, there are two constructors, true and false, and neither takes any arguments.”

-- [w3-u2-l1-c]
--   B) Inductive types can have multiple constructors; structures have exactly one
--   A structure is just a single-constructor inductive with named fields.
--   Book: “Unlike structures, inductive datatypes may have multiple constructors.”

-- [w3-u2-l2-a]
--   true
--   Zero is, well, zero.
--   Book: “An example of a function that uses pattern matching is isZero, which is a function that returns true when its argument is Nat.zero, or false otherwise.”

-- [w3-u2-l2-b]
--   false
--   5 is Nat.succ (Nat.succ (Nat.succ (Nat.succ (Nat.succ Nat.zero)))) — not zero.
--   Book: “If n was constructed by Nat.succ, then the second branch is taken, and the result is false.”

-- [w3-u2-l2-c]
--   false
--   Any successor of any nat is non-zero.
--   Book: “An example of a function that uses pattern matching is isZero, which is a function that returns true when its argument is Nat.zero, or false otherwise.”

-- [w3-u2-l3-a]
--   C) The recursive call is always on a structurally smaller argument
--   Structural recursion guarantees termination because each call reduces the constructor depth.
--   Book: “This pattern is called structural recursion.”

-- [w3-u2-l3-b]
--   true
--   Zero is even.
--   Book: “An example of a function that uses pattern matching is isZero, which is a function that returns true when its argument is Nat.zero, or false otherwise.”

-- [w3-u2-l3-c]
--   false
--   3 is odd.

-- [w3-u2-l3-d]
--   C) The recursive call uses n instead of k, so it does not get structurally smaller
--   Structural recursion requires the argument to shrink — recursing on n would loop forever.
--   Book: “An example of a function that uses pattern matching is isZero, which is a function that returns true when its argument is Nat.zero, or false otherwise.”

-- [w3-u2-l4-a]
--   1. plus 3 (Nat.succ (Nat.succ Nat.zero))
--   2. Nat.succ (plus 3 (Nat.succ Nat.zero))
--   3. Nat.succ (Nat.succ (plus 3 Nat.zero))
--   4. Nat.succ (Nat.succ 3)
--   Each succ peels off one layer of k until we hit the base case.
--   Book: “Using this definition, {anchorEvalStep four 1}`4` is represented as {anchorEvalStep four 0}`Nat.succ (Nat.succ (Nat.succ (Nat.succ Nat.zero)))`.”

-- [w3-u2-l4-b]
--   k'
--   Multiply by k' = k - 1, then add n.
--   Book: “Using this definition, {anchorEvalStep four 1}`4` is represented as {anchorEvalStep four 0}`Nat.succ (Nat.succ (Nat.succ (Nat.succ Nat.zero)))`.”

-- [w3-u3-l1-a]
--   D) A list whose elements are natural numbers
--   List is polymorphic over its element type.
--   Book: “The definition of length is both polymorphic (because it takes the list entry type as an argument) and recursive (because it refers to itself).”

-- [w3-u3-l1-b]
--   α
--   Both coordinates have the same generic type α.
--   Book: “For the same reason, both the product type and its constructor have special syntax.”

-- [w3-u3-l2-a]
--   B) some (wraps a value) and none
--   Option encodes "maybe a value" — none for absence, some a for presence.
--   Book: “Option has two constructors, called some and none, that respectively represent the non-null and null versions of the underlying type.”

-- [w3-u3-l2-b]
--   none
--   Empty list has no head.
--   Book: “Following this pattern, List.head requires the caller to provide mathematical evidence that the list is not empty, List.head? returns an Option, List.head! crashes the program when passed an empty list, and List.headD takes a default value to return in case the list is empty.”

-- [w3-u3-l2-c]
--   some 1
--   .head? returns Option, wrapping the first element.
--   Book: “Following this pattern, List.head requires the caller to provide mathematical evidence that the list is not empty, List.head? returns an Option, List.head! crashes the program when passed an empty list, and List.headD takes a default value to return in case the list is empty.”

-- [w3-u3-l3-a]
--   B) A placeholder for the argument in a short lambda
--   (· + 1) is shorthand for fun x => x + 1.
--   Book: “This style of anonymous function expression is often referred to as a lambda expression, because the typical notation used in mathematical descriptions of programming languages uses the Greek letter λ (lambda) where Lean has the keyword fun.”

-- [w3-u3-l3-b]
--   8
--   (· + 5) is fun x => x + 5, applied to 3.
--   Book: “The command #eval (fun x => x + x) 5 results in:”

/-! # World 4: Propositions and Proofs -/

-- [w4-u1-l1-a]
--   B) Prop
--   Prop is the universe of propositions, lives in Sort 0.
--   Book: “In fact, the type Prop is syntactic sugar for Sort 0, the very bottom of the type hierarchy described in the last chapter.”

-- [w4-u1-l1-b]
--   A) A value (term) whose type is p
--   Curry-Howard: propositions are types, proofs are inhabitants of those types.
--   Book: “The fact that the rules for implication in a proof system for natural deduction correspond exactly to the rules governing abstraction and application for functions is an instance of the {deftech}Curry-Howard isomorphism, sometimes known as the {deftech}propositions-as-types paradigm.”

-- [w4-u1-l1-c]
--   A) Prop is Sort 0, Type is Sort 1
--   Both Prop and Type are special cases of Sort; Prop is the universe of propositions.
--   Book: “In fact, the type Prop is syntactic sugar for Sort 0, the very bottom of the type hierarchy described in the last chapter.”

-- [w4-u1-l2-a]
--   D) Implication: if p then q
--   Implication in Lean IS the function arrow — the same → as for types.
--   Book: “The similarity between ∧ and × is another instance of the {tech}[Curry-Howard isomorphism], but in contrast to implication and the function space constructor, ∧ and × are treated separately in Lean.”

-- [w4-u1-l2-b]
--   function
--   Curry-Howard: implication is the function type.
--   Book: “The similarity between ∧ and × is another instance of the {tech}[Curry-Howard isomorphism], but in contrast to implication and the function space constructor, ∧ and × are treated separately in Lean.”

-- [w4-u1-l2-c]
--   hq
--   The goal is q, and hq is exactly a proof of q.
--   Book: “Notice that the lambda abstractions hp : p and hq : q can be viewed as temporary assumptions in the proof of t1.”

-- [w4-u2-l1-a]
--   A) Proofs of both p and q
--   A proof of And is a pair of proofs.
--   Book: “In normal circumstances, it is never necessary to unfold the “definition” of a theorem; by {tech}[proof irrelevance], any two proofs of that theorem are definitionally equal.”

-- [w4-u2-l1-b]
--   hp
--   And.intro takes the left proof, then the right proof.
--   Book: “Notice that the lambda abstractions hp : p and hq : q can be viewed as temporary assumptions in the proof of t1.”

-- [w4-u2-l1-c]
--   D) The proof of p and the proof of q, respectively
--   They are the two projections out of a conjunction.
--   Book: “In the exposition below, we will slip back and forth between these two ways of talking, at times saying that an expression “constructs” or “produces” or “returns” a proof of a proposition, and at other times simply saying that it “is” such a proof.”

-- [w4-u2-l2-a]
--   1. receive h : p ∧ q
--   2. extract hp and hq
--   3. return And.intro hq hp
--   You receive the hypothesis, decompose it, then re-assemble in the opposite order.
--   Book: “The difference is that given hp : p and hq : q, And.intro hp hq has type p ∧ q : Prop, while given a : α and b : β, Prod.mk a b has type α × β : Type.”

-- [w4-u2-l2-b]
--   left
--   Swap left/right when building the flipped pair.
--   Book: “They are commonly known as the left and right and-elimination rules.”

-- [w4-u3-l1-a]
--   A) A proof of p OR a proof of q (either one suffices)
--   Disjunction needs only one side.
--   Book: “One strategy for proving assertions about objects defined in the language of dependent type theory is to layer an assertion language and a proof language on top of the definition language.”

-- [w4-u3-l1-b]
--   B) A proof of p ∨ q from hp : p
--   "inl" = "introduce left".
--   Book: “Notice that the lambda abstractions hp : p and hq : q can be viewed as temporary assumptions in the proof of t1.”

-- [w4-u3-l1-c]
--   inr
--   "inr" = "introduce right".

-- [w4-u3-l2-a]
--   A) Or.elim — provide handlers for both cases
--   You must handle each disjunct because you do not know which holds.
--   Book: “It is needed in the following example because, from a constructive standpoint, knowing that p and q are not both true does not necessarily tell you which one is false:”

-- [w4-u3-l2-b]
--   D) And.left works on ∧, not ∨ — you need Or.elim to case-split
--   Disjunctions are not pairs; you cannot project out of them.

-- [w4-u4-l1-a]
--   D) p → False
--   A negation is a function that turns a proof of p into a proof of False.
--   Book: “Negation, ¬p, is actually defined to be p → False, so we obtain ¬p by deriving a contradiction from p.”

-- [w4-u4-l1-b]
--   false
--   Definitionally ¬p ≡ p → False.
--   Book: “Double-negation elimination allows one to prove any proposition, p, by assuming ¬p and deriving False, because that amounts to proving ¬¬p.”

-- [w4-u4-l2-a]
--   B) True.intro
--   True has a single constructor with no arguments; trivial is also accepted.
--   Book: “Incidentally, just as False has only an elimination rule, True has only an introduction rule, True.intro : True.”

-- [w4-u4-l2-b]
--   B) No — False has zero constructors
--   That is the whole point of False — it has no inhabitants.
--   Book: “To each proposition p we associate a type that is empty if p is false and has a single element, say *, if p is true.”

-- [w4-u4-l2-c]
--   C) Proves anything from a proof of False (ex falso quodlibet)
--   From a contradiction, any conclusion follows.
--   Book: “The connective False has a single elimination rule, False.elim, which expresses the fact that anything follows from a contradiction.”

-- [w4-u5-l1-a]
--   A) (p → q) ∧ (q → p)
--   Iff is a pair of implications.

-- [w4-u5-l1-b]
--   A) The forward proof and the backward proof
--   First the mp direction (p → q), then mpr (q → p).
--   Book: “We can use the anonymous constructor notation to construct a proof of p ↔ q from proofs of the forward and backward directions, and we can also use . notation with mp and mpr.”

-- [w4-u5-l2-a]
--   C) A proof of p ∨ ¬p (law of excluded middle)
--   EM is the classical axiom unavailable constructively.
--   Book: “Ordinary classical logic adds to this the law of the excluded middle, p ∨ ¬p.”

-- [w4-u5-l2-b]
--   A) Available via Classical.em; `open Classical` gives unqualified access
--   You can use Classical.em anywhere, but opening Classical lets you write just `em`.
--   Book: “The classical axioms also give you access to additional patterns of proof that can be justified by appeal to em.”

-- [w4-u5-l2-c]
--   C) Constructive requires explicit witness; classical allows proof by contradiction
--   Constructive proofs must compute the answer; classical ones may just rule out the alternative.
--   Book: “We will see later that there are situations in constructive logic where principles like excluded middle and double-negation elimination are permissible, and Lean supports the use of classical reasoning in such contexts without relying on excluded middle.”

/-! # World 5: Hello, World! -/

-- [w5-u1-l1-a]
--   A) IO Unit
--   main performs side effects and returns nothing meaningful.
--   Book: “The function pure creates an IO action that has no side effects, but returns pure's argument, which in this case is the constructor for Unit.”

-- [w5-u1-l1-b]
--   B) The function may perform side effects
--   IO wraps a value with the possibility of effects (read, write, etc.).
--   Book: “The other useful way to think about side effects in Lean is by considering IO actions to be functions that take the entire world as an argument and return a value paired with a new world.”

-- [w5-u1-l1-c]
--   Unit
--   IO.println returns IO Unit.
--   Book: “Because this action doesn't read any interesting information from the environment in the process of emitting the string, IO.println has type String → IO Unit.”

-- [w5-u1-l2-a]
--   C) do
--   do introduces a block where actions can be sequenced with newlines or semicolons.
--   Book: “IO actions that are built with a do block are executed by executing the statements in order.”

-- [w5-u1-l2-b]
--   B) Extracts the result from an IO action
--   `let x ← action` runs action and binds its result to x.
--   Book: “Using an arrow means that the value of the expression is an IO action that should be executed, with the result of the action saved in the local variable.”

-- [w5-u1-l2-c]
--   input
--   After ← extracts the value into `input`, you print it.
--   Book: “The next step is to execute this IO action, resulting in a value that represents the standard input stream, which has type IO.FS.Stream.”

-- [w5-u2-l1-a]
--   D) lake
--   Lake is to Lean what Cargo is to Rust.
--   Book: “The standard Lean build tool is called Lake (short for “Lean Make”).”

-- [w5-u2-l1-b]
--   C) lakefile.lean
--   The lakefile is itself written in Lean.
--   Book: “A lakefile.toml describes a package, which is a coherent collection of Lean code for distribution, analogous to an npm or nuget package or a Rust crate.”

-- [w5-u2-l1-c]
--   C) lake init
--   lake init scaffolds a new project in the current directory.
--   Book: “To create a project in an already-existing directory, run lake init instead of lake new.”

-- [w5-u3-l1-a]
--   B) A stream for reading/writing data
--   It abstracts over files, stdin/stdout, pipes, etc.
--   Book: “The Lean standard library provides a number of basic IO actions that represent effects such as reading from and writing to files and interacting with standard input and standard output.”

-- [w5-u3-l1-b]
--   C) Both are IO.FS.Stream; the source is selected based on CLI arguments
--   The same loop body works for either kind of stream.
--   Book: “Second, the file handle is given the same interface as a POSIX stream using IO.FS.Stream.ofHandle, which fills each field of the Stream structure with the corresponding IO action that works on file handles.”

-- [w5-u3-l2-a]
--   B) A state parameter threaded through recursion
--   Pure languages avoid mutation by passing state along explicitly.
--   Book: “Because the compiled code does not need to retain any state, the Lean compiler can compile the recursive call to a jump.”

-- [w5-u3-l2-b]
--   accumulator,state
--   Also called a state parameter.
--   Book: “Because the compiled code does not need to retain any state, the Lean compiler can compile the recursive call to a jump.”

/-! # World 6: Quantifiers and Equality -/

-- [w6-u1-l1-a]
--   C) A dependent function type: for every x of type α, a proof of P x
--   ∀ is just Π — a dependent function whose return type depends on the input.
--   Book: “Notice that an existential proposition is very similar to a sigma type, as described in dependent types section.”

-- [w6-u1-l1-b]
--   function
--   Universal quantification = function in Curry-Howard.

-- [w6-u1-l1-c]
--   rfl
--   Reflexivity proves x = x for any specific x.

-- [w6-u2-l1-a]
--   D) A witness x and a proof that P x holds
--   You must EXHIBIT the element AND prove the predicate holds of it.
--   Book: “The introduction rule is straightforward: to prove ∃ x : α, p x, it suffices to provide a suitable term t and a proof of p t.”

-- [w6-u2-l1-b]
--   5 > 3
--   The witness is 5; you must prove the predicate holds of 5.
--   Book: “Note that Exists.intro has implicit arguments: Lean has to infer the predicate p : α → Prop in the conclusion ∃ x, p x.”

-- [w6-u2-l2-a]
--   A) A proof of ∃ x, P x and a function that takes a witness + proof and produces the goal
--   You unpack the existential into (w, hpw) and use them to prove your goal.
--   Book: “When the goal can be inferred, we can also ask Lean instead to fill in the proof by writing by assumption:”

-- [w6-u3-l1-a]
--   B) That a term equals itself (a = a)
--   rfl is the canonical proof of reflexivity.
--   Book: “The introduction rule is straightforward: to prove ∃ x : α, p x, it suffices to provide a suitable term t and a proof of p t.”

-- [w6-u3-l1-b]
--   @rfl Nat 5 : 5 = 5
--   The explicit type ascription shows the equality being proven.
--   Book: “The properties above are stated for the natural numbers (type Nat).”

-- [w6-u3-l1-c]
--   rfl
--   1 + 1 reduces definitionally to 2.

-- [w6-u3-l2-a]
--   A) Replaces one side of an equality in the goal with the other
--   rw [h] uses h to rewrite occurrences of the LHS into the RHS.
--   Book: “Essentially, the rw tactic uses a given equality (which can be a hypothesis, a theorem name, or a complex term) to “rewrite” the goal.”

-- [w6-u3-l2-b]
--   C) Replaces a with b
--   Default direction is left-to-right.
--   Book: “Here the left arrow before Nat.add_assoc tells rewrite to use the identity in the opposite direction.”

-- [w6-u3-l2-c]
--   A) Replaces b with a (rewrite in reverse)
--   The ← arrow flips the rewrite direction.
--   Book: “Here the left arrow before Nat.add_assoc tells rewrite to use the identity in the opposite direction.”

-- [w6-u3-l3-a]
--   C) Chain a sequence of equalities/relations step by step
--   calc replaces nested rfl/transitivity with a readable chain.
--   Book: “A calculational proof is just a chain of intermediate results that are meant to be composed by basic principles such as the transitivity of equality.”

-- [w6-u3-l3-b]
--   1. _ = b := h1
--   2. _ = c := h2
--   3. _ = d := h3
--   Each step rewrites the previous RHS to the next term.
--   Book: “That is, given h1 : a = b and h2 : p a, we can construct a proof for p b using substitution: Eq.subst h1 h2.”

/-! # World 7: Tactics -/

-- [w7-u1-l1-a]
--   B) by
--   by switches from term-mode to tactic-mode.
--   Book: “It simply declares the type of the goal that is about to be solved, while remaining in tactic mode.”

-- [w7-u1-l1-b]
--   C) The proposition you need to prove, displayed by Lean
--   Lean shows the current goal(s) and hypotheses in the InfoView.
--   Book: “The contradiction tactic searches for a contradiction among the hypotheses of the current goal:”

-- [w7-u1-l1-c]
--   A) Term-mode constructs the proof directly; tactic mode transforms the goal step by step
--   Both are equivalent — tactics just elaborate to terms behind the scenes.
--   Book: “We will describe proofs that consist of sequences of tactics as “tactic-style” proofs, to contrast with the ways of writing proof terms we have seen so far, which we will call “term-style” proofs.”

-- [w7-u1-l2-a]
--   C) Moves the antecedent of an implication into the context as h
--   For a goal p → q, intro h gives you h : p and changes the goal to q.
--   Book: “The assumption tactic looks through the assumptions in context of the current goal, and if there is one matching the conclusion, it applies it.”

-- [w7-u1-l2-b]
--   C) Closes the goal by providing an exact proof term
--   The goal must match the type of hp exactly.
--   Book: “The first goal is met with the command exact hp.”

-- [w7-u1-l2-c]
--   hp; hq
--   Introduce the hypothesis, then provide the proof of q (named hq in this lesson).
--   Book: “In this example, there is only one goal after the cases tactic is applied, with h  :  p ∧ q replaced by a pair of assumptions, hp  :  p and hq  :  q:”

-- [w7-u2-l1-a]
--   B) Changes the goal to p
--   apply backward-chains: reduce the goal to the antecedent.
--   Book: “The exact command is just a variant of apply which signals that the expression given should fill the goal exactly.”

-- [w7-u2-l1-b]
--   B) And.intro requires two arguments: a proof of p and a proof of q
--   apply leaves one subgoal per remaining argument of the applied function.
--   Book: “In the example above, the command apply And.intro yields two subgoals:”

-- [w7-u2-l2-a]
--   A) Splits into two subgoals: prove left side and right side
--   It applies the unique constructor (And.intro) and leaves its arguments as subgoals.
--   Book: “In the example above, the command apply And.intro yields two subgoals:”

-- [w7-u2-l2-b]
--   hp; hq
--   After constructor you have two goals; close each with its proof.
--   Book: “In this example, there is only one goal after the cases tactic is applied, with h  :  p ∧ q replaced by a pair of assumptions, hp  :  p and hq  :  q:”

-- [w7-u2-l3-a]
--   B) Searches the context for a hypothesis that exactly matches the goal
--   It is a small bit of automation that saves you from typing exact.
--   Book: “The exact command is just a variant of apply which signals that the expression given should fill the goal exactly.”

-- [w7-u3-l1-a]
--   C) Finds an occurrence of h's LHS in the goal and replaces it with the RHS
--   rw is essentially Eq.subst on the goal.
--   Book: “In the example above, the first use of rw replaces k with 0 in the goal f k = 0.”

-- [w7-u3-l1-b]
--   h
--   rw [h] turns x + 1 = 6 into 5 + 1 = 6, which is closed by rfl.
--   Book: “Whereas rw is designed as a surgical tool for manipulating a goal, the simplifier offers a more powerful form of automation.”

-- [w7-u3-l2-a]
--   A) Applies a set of simplification lemmas repeatedly to simplify or close the goal
--   It's Lean's main rewriting workhorse.
--   Book: “Moreover, Lean flags an error if the selected goal is not fully solved at the end of the case block.”

-- [w7-u3-l2-b]
--   B) Yes, if simplification reduces it to True or rfl
--   When simp reaches True or both sides become identical, the goal is closed.
--   Book: “In the second example, simp reduces the goal to p (x * y), at which point the assumption h finishes it off.”

-- [w7-u3-l2-c]
--   B) Adds h to the set of lemmas simp uses
--   Useful when you want simp to also rewrite using a local hypothesis.
--   Book: “A number of identities in Lean's library have been tagged with the [simp] attribute, and the simp tactic uses them to iteratively rewrite subterms in an expression.”

-- [w7-u3-l3-a]
--   C) Equalities in commutative (semi)rings — polynomial identities
--   ring normalizes both sides as polynomials and checks they match.
--   Book: “The next two examples instead apply associativity to move the parenthesis to the right on both sides, and then switch b and c.”

-- [w7-u3-l3-b]
--   Yes
--   Polynomial identity — handled directly.

-- [w7-u3-l4-a]
--   B) Linear arithmetic over Nat and Int
--   omega is the Presburger arithmetic decision procedure.

-- [w7-u3-l4-b]
--   Yes
--   Trivial linear inequality.

-- [w7-u4-l1-a]
--   D) Two subgoals: the base case and the inductive step with hypothesis ih
--   One subgoal per constructor; the recursive constructor brings an IH into scope.
--   Book: “It is useful to use indentation to structure proof: every time a tactic leaves more than one subgoal, we separate the remaining subgoals by enclosing them in blocks and indenting.”

-- [w7-u4-l1-b]
--   D) The induction hypothesis — the theorem holds for k
--   You assume the theorem for the smaller value to prove it for k+1.
--   Book: “You can prove the theorem above in that way:”

-- [w7-u4-l1-c]
--   1. state theorem
--   2. by induction n
--   3. prove base case
--   4. prove inductive step
--   You state, enter induction, then close each case.
--   Book: “After case left =>, the proof state is:”

-- [w7-u4-l2-a]
--   rfl
--   0 + 0 reduces to 0 definitionally.
--   Book: “The rfl tactic solves goals that are reflexive relations applied to definitionally equal arguments.”

-- [w7-u4-l2-b]
--   C) rw using a Nat lemma plus the induction hypothesis
--   You rewrite succ k + 0 to succ (k + 0), then apply ih.
--   Book: “In the following example, we use this basic form to rewrite the goal using a hypothesis.”

-- [w7-u5-l1-a]
--   term
--   Per Curry-Howard, proofs are just values whose type is the proposition.
--   Book: “This is because a proposition in Lean is a kind of type that classifies evidence of its truth.”

-- [w7-u5-l1-b]
--   C) Sort 0
--   Prop = Sort 0; Type = Sort 1; Type 1 = Sort 2; etc.
--   Book: “Just as Type describes types such as Nat, String, and List (Nat × String × (Int → Float)) that represent data structures and functions, Prop describes propositions.”

-- [w7-u5-l2-a]
--   D) To guarantee the index is within bounds at compile time
--   Lean uses a proposition `i < arr.size` to make out-of-bounds impossible.
--   Book: “Out-of-bounds errors are a common class of bugs, and Lean uses its dual nature as a programming language and a theorem prover to rule out as many as possible.”

-- [w7-u5-l2-b]
--   D) i < arr.size
--   The bounds proof relates the index to the array length.
--   Book: “For instance, an array lookup requires a proof that the index is in bounds, and a tactic can typically construct that proof without the user needing to worry about it.”

-- [w7-u5-l2-c]
--   D) The program can never crash from out-of-bounds access
--   A typechecked program is guaranteed safe at compile time.
--   Book: “There is also a version that crashes the program when the index is out of bounds, rather than returning an Option:”

/-! # World 8: Type Classes -/

-- [w8-u1-l1-a]
--   A) The type itself makes invalid states unrepresentable
--   There is literally no Pos value representing zero — no runtime check needed.
--   Book: “For Pos, the OfNat instance should work for any Nat other than Nat.zero.”

-- [w8-u1-l1-b]
--   Pos
--   succ takes another Pos and gives one more.
--   Book: “The function posToString takes a Bool that determines whether to parenthesize uses of Pos.succ, which should be true in the initial call to the function and false in all recursive calls.”

-- [w8-u1-l1-c]
--   B) No OfNat instance for Pos — numeric literals are not automatically available
--   You must implement OfNat to use numeric literals at a custom type.
--   Book: “There are three type classes that are used to overload numeric literals: Zero, One, and OfNat.”

-- [w8-u1-l2-a]
--   D) class
--   class is a structure plus instance-resolution machinery.
--   Book: “One way to overload addition is to define a type class named Plus, with an addition method named plus.”

-- [w8-u1-l2-b]
--   α
--   plus is homogeneous — same input and output type.
--   Book: “One way to overload addition is to define a type class named Plus, with an addition method named plus.”

-- [w8-u1-l2-c]
--   D) instance
--   instance declares a single implementation that Lean can resolve.
--   Book: “These errors mean that Lean was unable to find an instance for a given type class.”

-- [w8-u1-l2-d]
--   Nat.add
--   Nat already has addition — reuse it.
--   Book: “Defining an addition function for Pos and an instance of Plus Pos allows plus to be used to add both Pos and Nat values:”

-- [w8-u1-l3-a]
--   A) Add
--   Add provides the + operator.
--   Book: “While an understanding of the full generality of HAdd relies on features that are discussed in {ref "out-params"}[another section in this chapter], there is a simpler type class called Add that does not allow the types of the arguments to be mixed.”

-- [w8-u1-l3-b]
--   C) A recursive function defined by pattern matching on Pos constructors
--   Add Pos is implemented by induction on the right operand.
--   Book: “Defining an addition function for Pos and an instance of Plus Pos allows plus to be used to add both Pos and Nat values:”

-- [w8-u1-l3-c]
--   Yes
--   Both operands are Pos and the + operator resolves to your Add instance.
--   Book: “Defining an addition function for Pos and an instance of Plus Pos allows plus to be used to add both Pos and Nat values:”

-- [w8-u2-l1-a]
--   B) Instance-implicit: Lean searches for a matching type class instance
--   [] arguments are resolved by instance search, not unification.
--   Book: “The primary difference is that a structure's accessors take the structure value as an explicit parameter, while the type class methods take the instance value as an instance implicit to be found automatically by Lean.”

-- [w8-u2-l1-b]
--   D) Instance search: consults the table of registered instances
--   Lean tries each candidate instance using unification.
--   Book: “At a call site, Lean is responsible for finding an instance value to pass for each instance implicit argument.”

-- [w8-u2-l1-c]
--   B) {} uses unification; [] uses instance search
--   Implicit arguments are inferred from context; instance args are resolved via the instance database.
--   Book: “The most important difference between ordinary implicit arguments and instance implicits is the strategy that Lean uses to find an argument value.”

-- [w8-u2-l2-a]
--   C) Finds Add Nat first, then uses it to build Add (PPoint Nat)
--   Instance search is recursive — it builds compound instances from simpler ones.
--   Book: “An instance of Add (PPoint Nat) contains a reference to the instance of Add Nat that was found.”

-- [w8-u2-l2-b]
--   p2.y
--   Pointwise addition: add the y-coordinates too.
--   Book: “Addition of points should add the underlying x and y fields.”

-- [w8-u2-l3-a]
--   D) OfNat
--   OfNat α n produces a value of α from the literal n.
--   Book: “In the case of OfNat.ofNat, however, the particular Nat literal to be decoded does not appear as part of any other parameter's type.”

-- [w8-u2-l3-b]
--   C) Add handles + but not numeric literals — need OfNat
--   Numeric literals are resolved via OfNat, not Add.
--   Book: “A function that sums all entries in a list needs two instances: Add allows the entries to be added, and an OfNat instance for 0 provides a sensible value to return for the empty list:”

-- [w8-u2-l3-c]
--   C) Recursion on n converting to Pos constructors
--   You build the Pos value succ-by-succ from n.
--   Book: “Just as the OfNat instance for Pos took a natural number n as an automatic implicit argument, instances may also take instance implicit arguments themselves.”

-- [w8-u3-l1-a]
--   D) Repr (or ToString for IO.println)
--   #eval prints using Repr; IO.println uses ToString.
--   Book: “As this message indicates, == is overloaded using a type class.”

-- [w8-u3-l1-b]
--   D) ToString gives a human-readable string; Repr gives a Lean-expression-style representation
--   Repr should round-trip; ToString just needs to be readable.

-- [w8-u3-l1-c]
--   C) Its numeric string representation (e.g. "7")
--   You typically render Pos as the equivalent Nat.
--   Book: “LT and LE instances for Pos can use the existing instances for Nat:”

-- [w8-u3-l2-a]
--   D) BEq
--   BEq.beq is what == desugars to.
--   Book: “Testing equality of two values typically uses the BEq class, which is short for “Boolean equality”.”

-- [w8-u3-l2-b]
--   A) Auto-generates a BEq instance
--   Lean derives a sensible default automatically.
--   Book: “Lean includes a feature called instance deriving that allows the compiler to automatically construct well-behaved instances of many type classes.”

-- [w8-u3-l3-a]
--   C) Use a Pos wherever a Nat is expected, automatically
--   Lean inserts the coercion during elaboration.
--   Book: “LT and LE instances for Pos can use the existing instances for Nat:”

-- [w8-u3-l3-b]
--   B) It converts a Pos value into the corresponding Nat
--   Coe.coe is the actual conversion function.
--   Book: “LT and LE instances for Pos can use the existing instances for Nat:”

-- [w8-u3-l3-c]
--   A) Automatically — Lean inserts them during elaboration
--   You rarely call Coe.coe directly.
--   Book: “Lean includes a feature called instance deriving that allows the compiler to automatically construct well-behaved instances of many type classes.”

-- [w8-u4-l1-a]
--   C) GetElem
--   GetElem hooks the [] indexing syntax.
--   Book: “Indexing notation for a collection type can be overloaded by defining an instance of the GetElem type class.”

-- [w8-u4-l1-b]
--   C) Collection type, index type, element type, and a validity proposition
--   The Prop parameter encodes "this index is valid for this collection".
--   Book: “Because both the collection type and the index type are input parameters to the GetElem type class, new types can be used to index into existing collections.”

-- [w8-u4-l1-c]
--   B) To enforce at compile time that the index is valid
--   The proposition rules out out-of-bounds indexing at the type level.
--   Book: “This fact can be used to write a lookup function that requires evidence that the index is valid, and thus need not return Option, by delegating to the version for lists that checks the evidence at compile time:”

-- [w8-u4-l2-a]
--   D) A parameter Lean determines from the other arguments (not used for instance search)
--   outParam tells instance search to ignore that parameter and just pick whatever fits.
--   Book: “Because the third type parameter for HPlus was unknown, Lean couldn't carry out type class instance search, but instance search is the only way that Lean could determine the expression's type.”

-- [w8-u4-l2-b]
--   B) HAdd allows different input/output types; Add is homogeneous
--   HAdd α β γ supports α + β = γ with three possibly-different types.
--   Book: “The HAdd class takes three type parameters: the two argument types and the return type.”

-- [w8-u4-l2-c]
--   γ
--   γ is the result type — the output parameter.
--   Book: “With this output parameter, type class instance search is able to select an instance without knowing γ in advance.”

/-! # World 9: Interacting with Lean -/

-- [w9-u1-l1-a]
--   B) Opens a namespace; subsequent definitions are prefixed with Foo.
--   Names defined inside are accessed as Foo.bar from outside.
--   Book: “In Lean, identifiers are given by hierarchical names like Foo.Bar.baz.”

-- [w9-u1-l1-b]
--   C) Makes names in Foo accessible without the prefix
--   After `open Foo`, you can write bar instead of Foo.bar.
--   Book: “In Lean, identifiers are given by hierarchical names like Foo.Bar.baz.”

-- [w9-u1-l1-c]
--   B) Yes
--   You can keep adding to the same namespace from multiple files.
--   Book: “The definitions and theorems in Lean's standard library are spread across multiple files.”

-- [w9-u1-l2-a]
--   C) Groups declarations; variable declarations are scoped to it
--   Sections control variable inclusion and scope of `open` / `variable`.

-- [w9-u1-l2-b]
--   A) Auto-included in definitions that use them, as implicit args
--   They are pulled into any def that references them.
--   Book: “In the previous section, we have shown how implicit arguments make functions more convenient to use.”

-- [w9-u1-l2-c]
--   A) No
--   Section variables disappear when the section ends.
--   Book: “You saw in {ref "variables-and-sections"}[Variables and Sections] that the section command makes it possible not only to group together elements of a theory that go together, but also to declare variables that are inserted as arguments to theorems and definitions, as necessary.”

-- [w9-u1-l3-a]
--   D) Makes all declarations from that module available
--   import loads a module so its names can be used.
--   Book: “Remember that #check is often used in conjunction with the @ operator, which makes all of the arguments to a theorem or definition explicit.”

-- [w9-u1-l3-b]
--   A) import loads a module; open makes names from a namespace accessible unqualified
--   You import to gain access; you open to skip namespace prefixes.
--   Book: “Names like Prod.rec are protected, which means that one has to use the full name even when the Prod namespace is open.”

-- [w9-u2-l1-a]
--   A) Adds it to the set of lemmas simp uses automatically
--   Tagged simp lemmas are tried by the simp tactic on every call.
--   Book: “The following example defines the prefix relation on lists, proves that this relation is reflexive, and assigns the [simp] attribute to that theorem.”

-- [w9-u2-l1-b]
--   B) When the lemma could cause simp to loop or make goals harder
--   Bad simp lemmas can cause non-termination or expand goals unhelpfully.

-- [w9-u2-l1-c]
--   rfl
--   Definitionally true for Nat.

-- [w9-u2-l2-a]
--   D) notation (or infixl / infixr / prefix)
--   There are several flavors; notation is the most general.
--   Book: “It turns out that all commands from the first code block are in fact command macros translating to the more general notation command.”

-- [w9-u2-l2-b]
--   b
--   The notation rewrites a ≈ b to MyEquiv a b.

-- [w9-u2-l2-c]
--   C) A priority/precedence number (e.g. :65)
--   Precedences control parsing — higher binds tighter.
--   Book: “The precedence is a natural number describing how “tightly” an operator binds to its arguments, encoding the order of operations.”

-- [w9-u3-l1-a]
--   C) An explicit coercion
--   ↑x forces Lean to insert the appropriate coercion.
--   Book: “Ellipses are also useful when explicit arguments can be automatically inferred by Lean, and we want to avoid a sequence of _s.”

-- [w9-u3-l1-b]
--   A) Coe coerces values; CoeSort coerces types (to Type or Sort)
--   CoeSort lets a structure be used as a type, e.g. for bundled algebra.
--   Book: “These are used for type classes, as explained in the chapter on {ref "type-classes"}[type classes].”

-- [w9-u3-l2-a]
--   C) Auto-binds α as an implicit type argument
--   A convenience that turns free identifiers in signatures into implicit binders.
--   Book: “In {ref "implicit-arguments"}[Implicit Arguments], we saw that if Lean displays the type of a term t as {x : α} → β x, then the curly brackets indicate that x has been marked as an implicit argument to t.”

-- [w9-u3-l2-b]
--   C) Lean can also auto-bind universe variables
--   Free universe identifiers in signatures get auto-bound just like type identifiers.
--   Book: “Lean 4 supports a new feature called auto bound implicit arguments.”

-- [w9-u3-l3-a]
--   B) {α} makes the parameter implicit in the resulting function
--   Lambda parameter binders mirror def signatures.
--   Book: “You may also provide the value for an implicit parameter when Lean failed to infer it.”

-- [w9-u3-l3-b]
--   D) Disables implicit argument inference, requiring all arguments to be given
--   @ exposes all implicits, both type-implicit {} and instance-implicit [].
--   Book: “In {ref "implicit-arguments"}[Implicit Arguments], we saw that if Lean displays the type of a term t as {x : α} → β x, then the curly brackets indicate that x has been marked as an implicit argument to t.”

/-! # World 10: Monads -/

-- [w10-u1-l1-a]
--   A) pure and bind
--   pure injects a value; bind sequences computations.
--   Book: “Secondly, pure should be a right identity of bind, so bind v pure is the same as v.”

-- [w10-u1-l1-b]
--   A) Wraps a plain value into the monadic context
--   pure has type α → m α.
--   Book: “It allows pure code to be used with monadic APIs:”

-- [w10-u1-l1-c]
--   D) Chains a monadic value with a function that produces a new monadic value
--   bind has type m α → (α → m β) → m β.
--   Book: “As described in {ref "numbering-tree-nodes"}[this chapter's introduction], State σ α represents programs that make use of a mutable variable of type σ and return a value of type α.”

-- [w10-u1-l1-d]
--   β
--   The function arg returns m β; bind also returns m β.
--   Book: “saveIfEven is a function that logs even numbers but returns its argument unchanged:”

-- [w10-u1-l2-a]
--   some 6
--   bind on some applies the function to the wrapped value.
--   Book: “Finally, bind should be associative, so bind (bind v f) g is the same as bind v (fun x => bind (f x) g).”

-- [w10-u1-l2-b]
--   none
--   bind on none short-circuits without calling the function.
--   Book: “Finally, bind should be associative, so bind (bind v f) g is the same as bind v (fun x => bind (f x) g).”

-- [w10-u1-l2-c]
--   B) Short-circuits: returns none without calling the function
--   This is what makes Option useful for chained fallible operations.
--   Book: “The Monad instances for Option and Except ε can be created by adapting the definitions of their respective andThen operations:”

-- [w10-u2-l1-a]
--   C) Except.ok and Except.error
--   .ok wraps a success value of type α; .error wraps a failure of type ε.
--   Book: “Looking up an out-of-bounds value yields an Except.error:”

-- [w10-u2-l1-b]
--   C) Short-circuits: propagates the error without calling the function
--   Like Option, but carrying a payload describing the failure.
--   Book: “This code, like the none-propagating Option code, the {anchorName exceptNames (show := error)}`Except.error`-propagating Except code, and the log-accumulating WithLog code, commingles two concerns: propagating the value of the counter, and actually traversing the tree to find the result.”

-- [w10-u2-l1-c]
--   Except.ok "big"
--   5 > 3, so the inner branch returns .ok "big".
--   Book: “As an example, firstThirdFifthSeventh was defined separately for Option α and Except String α return types.”

-- [w10-u2-l2-a]
--   D) Errors propagate automatically — no nested match required
--   Without bind you would write deeply nested matches at every step.
--   Book: “Chaining null-checks like this is much more convenient than writing and maintaining deeply nested ifs.”

-- [w10-u2-l2-b]
--   B) Deep nesting / "pyramid of doom" — hard to read and maintain
--   Every level adds another match, indentation, and Some/None plumbing.
--   Book: “If the first argument is not none, then the function is applied to the contents of the some constructor.”

-- [w10-u2-l2-c]
--   error; ok
--   Use .error on failure, .ok on success.
--   Book: “Looking up an out-of-bounds value yields an Except.error:”

-- [w10-u3-l1-a]
--   A) e1.bind (fun x => e2)
--   do is just sugar for chained binds.

-- [w10-u3-l1-b]
--   pure
--   pure wraps the plain x+1 back into the monad.

-- [w10-u3-l1-c]
--   A) Yes
--   do works for any type implementing Monad.
--   Book: “This is the very same do-notation that is used to write programs in IO, and IO is also a monad.”

-- [w10-u3-l2-a]
--   A) Wraps the value in pure and terminates the block
--   In a do, return is just `pure` plus early exit if used with control flow.

-- [w10-u3-l2-b]
--   C) Exits early with pure x if cond is true; otherwise continues
--   Early-return desugaring keeps the imperative feel.

-- [w10-u4-l1-a]
--   A) It has pure and bind implementations satisfying the monad laws
--   IO is "just another monad" — the same do notation works.
--   Book: “The Monad instance for EST ε σ requires pure and bind.”

-- [w10-u4-l1-b]
--   side effects
--   IO wraps a value with the possibility of effects.
--   Book: “In this case, pure is an IO action that does not request any effects from the RTS, and bind instructs the RTS to first carry out one potentially-effectful operation and then invoke the rest of the program with the resulting value.”

-- [w10-u4-l1-c]
--   D) No — that would bypass the IO boundary; Lean does not allow it
--   Once a value is in IO, you can only chain it with other IO actions.
--   Book: “EIO ε α represents IO actions that will either terminate with an error of type ε or succeed with a value of type α.”

/-! # World 11: Inductive Types -/

-- [w11-u1-l1-a]
--   A) inductive Bool where | false | true
--   Two constructors, no parameters.
--   Book: “where a is a sequence of data type parameters, b is the sequence of arguments to the constructors, and p[a, b] are the indices, which determine which element of the inductive family the construction inhabits.”

-- [w11-u1-l1-b]
--   C) A function for elimination/pattern matching, named TypeName.rec
--   The recursor is the type-theoretic primitive that match desugars to.
--   Book: “When using Lean's logic, the match expression is compiled using the recursor Weekday.rec generated when you declare the inductive type.”

-- [w11-u1-l1-c]
--   rec
--   Lean uses the suffix .rec by convention.
--   Book: “When using Lean's logic, the match expression is compiled using the recursor Weekday.rec generated when you declare the inductive type.”

-- [w11-u1-l2-a]
--   B) A type parameter — the list is polymorphic over element type
--   α is fixed for the whole list (no indexing).
--   Book: “A list of elements of type α is either the empty list, nil, or an element h : α followed by a list t : List α.”

-- [w11-u1-l2-b]
--   B) A parameter is fixed across all constructors; an index can vary
--   Indices appear after the colon and can differ per constructor.
--   Book: “where a is a sequence of data type parameters, b is the sequence of arguments to the constructors, and p[a, b] are the indices, which determine which element of the inductive family the construction inhabits.”

-- [w11-u1-l2-c]
--   α β
--   The constructor returns the parametric type applied to its parameters.
--   Book: “Notice that the product type depends on parameters α β : Type which are arguments to the constructors as well as Prod.”

-- [w11-u1-l3-a]
--   A) One constructor: And.intro : p → q → And p q
--   And is a "pair" of proofs.
--   Book: “Inductively defined types can live in any type universe, including the bottom-most one, Prop.”

-- [w11-u1-l3-b]
--   D) Two constructors: Or.inl : p → Or p q and Or.inr : q → Or p q
--   A disjoint union of proofs.
--   Book: “In contrast, the sum type has two constructors, inl and inr (for “insert left” and “insert right”), each of which takes one (explicit) argument.”

-- [w11-u1-l3-c]
--   D) One constructor taking a witness and a proof
--   Exists.intro w hpw : Exists P, where hpw : P w.
--   Book: “If no Repr exists, #eval attempts to derive one on the spot.”

-- [w11-u1-l3-d]
--   D) An inductive type with zero constructors
--   No way to construct it, hence nothing inhabits it.
--   Book: “It is remarkable that it is possible to construct a substantial edifice of mathematics based on nothing more than the type universes, dependent arrow types, and inductive types; everything else follows from those.”

-- [w11-u2-l1-a]
--   B) A base case value, a step function, and the Nat to recurse on
--   Nat.rec is the eliminator for the inductive Nat.
--   Book: “The Nat.recOn is similar to Nat.rec but the major premise occurs before the minor premises.”

-- [w11-u2-l1-b]
--   6
--   Start at 0, add 2 three times → 6.
--   Book: “We start with zero : Nat; it takes no arguments, so we have it from the start.”

-- [w11-u2-l1-c]
--   B) They are the same thing — the recursor IS the induction principle
--   Curry-Howard: recursion on Nat is induction on Nat.
--   Book: “Notice that, once again, when Nat.recOn is used in the context of a proof, it is really the induction principle in disguise.”

-- [w11-u2-l2-a]
--   A) Yes
--   match is sugar; it elaborates to recursor applications.
--   Book: “Using the recursor or match with h₁ : a = b, we may assume a and b are the same, in which case, p b and p a are the same.”

-- [w11-u2-l2-b]
--   A) In meta-programming, or for pedagogical clarity about the induction principle
--   Most everyday code uses match; recursors show up in tactics and the kernel.
--   Book: “For compiled code, match is compiled as in other functional programming languages.”

-- [w11-u3-l1-a]
--   A) A list whose length n is encoded in the type — length is statically known
--   Indexed families let the type carry data the elaborator can reason about.
--   Book: “Try also defining the function length : {α : Type u} → List α → Nat that returns the length of a list, and prove that it behaves as expected (for example, length (append as bs) = length as + length bs).”

-- [w11-u3-l1-b]
--   0; n
--   nil has length 0; cons increases the length by 1.
--   Book: “The list of subtrees is represented by the type TreeList α, which is defined to be either the empty list, nil, or the cons of a tree and an element of TreeList α.”

-- [w11-u3-l1-c]
--   A) Because n changes between constructors (0 for nil, n+1 for cons)
--   Anything that varies per constructor must be an index.
--   Book: “The list of subtrees is represented by the type TreeList α, which is defined to be either the empty list, nil, or the cons of a tree and an element of TreeList α.”

-- [w11-u3-l2-a]
--   A) inductive Eq {α} (a : α) : α → Prop where | refl : Eq a a
--   The single constructor refl reflects that a equals itself.
--   Book: “We have already seen singleton elimination at play in applications of Eq.rec, the eliminator for the inductively defined equality type.”

-- [w11-u3-l2-b]
--   A) The only way to prove equality is that something equals itself
--   All other equalities are derived from refl plus substitution.
--   Book: “Roughly speaking, what characterizes inductive types in Prop is that one can only eliminate to other types in Prop.”

-- [w11-u3-l2-c]
--   a
--   refl proves Eq a a — same a on both sides.
--   Book: “Notably, however, there is only one constructor, refl, which is an element of Eq a a.”

/-! # World 12: Functors, Applicatives & Monads -/

-- [w12-u1-l1-a]
--   D) Monster includes all fields from MythicalCreature plus its own
--   Inheritance is by composition — the parent fields are merged in.
--   Book: “It takes a Monster as an argument, along with the two fields that Helper introduces on top of MythicalCreature.”

-- [w12-u1-l1-b]
--   B) No — it is composition
--   No identity preserved across an upcast; a parent field is generated.
--   Book: “An upcast operator causes a value from a derived class to be treated as an instance of the parent class, but the value retains its identity and structure.”

-- [w12-u1-l1-c]
--   D) Monster.toMythicalCreature
--   A convenience projection to the embedded parent.
--   Book: “In addition to defining functions to extract the value of each new field, a function Monster.toMythicalCreature is defined with type Monster → MythicalCreature.”

-- [w12-u1-l2-a]
--   B) First parent is stored directly; additional parents' unique fields are copied
--   Lean flattens fields, taking the first parent as the primary embedding.
--   Book: “In Lean, the answer is that the first specified path to the grandparent structure is taken, and the additional parent structures' fields are copied rather than having the new structure include both parents directly.”

-- [w12-u1-l2-b]
--   Helper
--   Multiple parents are listed comma-separated after extends.
--   Book: “A monstrous assistant is a monster that is also a helper:”

-- [w12-u2-l1-a]
--   B) Applies a function to the value(s) inside a functor, preserving the structure
--   It is the lifting operation that defines Functor.
--   Book: “Having the function under the type f allows the Applicative instance to control how the function is applied, while Functor.map unconditionally applies a function.”

-- [w12-u2-l1-b]
--   β
--   The result is f β — same shape, new element type.
--   Book: “Having the function under the type f allows the Applicative instance to control how the function is applied, while Functor.map unconditionally applies a function.”

-- [w12-u2-l1-c]
--   some 6
--   Apply +1 to 5 inside some.

-- [w12-u2-l1-d]
--   none
--   map on none = none.
--   Book: “Understand the default implementations of map, seq, seqLeft, and seqRight in Monad by working through examples such as Option and {anchorName ApplicativeExcept (module:=Examples.FunctorApplicativeMonad)}`Except`.”

-- [w12-u2-l2-a]
--   C) map id = id (mapping the identity function changes nothing)
--   A lawful Functor preserves the identity.
--   Book: “Having the function under the type f allows the Applicative instance to control how the function is applied, while Functor.map unconditionally applies a function.”

-- [w12-u2-l2-b]
--   C) map (f ∘ g) = map f ∘ map g
--   Mapping a composition equals composing the maps.
--   Book: “Having the function under the type f allows the Applicative instance to control how the function is applied, while Functor.map unconditionally applies a function.”

-- [w12-u2-l3-a]
--   xs
--   Recurse on the tail.
--   Book: “Having the function under the type f allows the Applicative instance to control how the function is applied, while Functor.map unconditionally applies a function.”

-- [w12-u3-l1-a]
--   C) pure and seq (aka <*>)
--   Plus the laws relating them.
--   Book: “An applicative functor is a functor that has two additional operations available: pure and seq. pure is the same operator used in Monad, because Monad in fact inherits from Applicative. seq is much like map: it allows a function to be used in order to transform the contents of a datatype.”

-- [w12-u3-l1-b]
--   D) Lifts a plain value into the applicative context
--   Same as in Monad — Applicative also has pure.
--   Book: “An applicative functor is a functor that has two additional operations available: pure and seq. pure is the same operator used in Monad, because Monad in fact inherits from Applicative. seq is much like map: it allows a function to be used in order to transform the contents of a datatype.”

-- [w12-u3-l1-c]
--   A) Applies a wrapped function to a wrapped value
--   It is the "function-in-a-context" application.
--   Book: “Having the function under the type f allows the Applicative instance to control how the function is applied, while Functor.map unconditionally applies a function.”

-- [w12-u3-l1-d]
--   β
--   Result is the function applied to the value, in the same context.
--   Book: “Applying this function to only one argument produces a function that always returns the same value, which is useful when an API demands a function but a program doesn't need to compute different results for different arguments.”

-- [w12-u3-l2-a]
--   A) Yes — Monad extends Applicative
--   In Lean, Monad inherits from Applicative.
--   Book: “Once again, checking that the Monad contract implies the Applicative contract will allow this to be used as a default definition for seq if Monad extends Applicative.”

-- [w12-u3-l2-b]
--   C) No — Applicative is strictly weaker
--   Some Applicatives (like Validate) are deliberately not monads.
--   Book: “An applicative functor is a functor that has two additional operations available: pure and seq. pure is the same operator used in Monad, because Monad in fact inherits from Applicative. seq is much like map: it allows a function to be used in order to transform the contents of a datatype.”

-- [w12-u3-l2-c]
--   C) Choose the next computation based on the result of the previous one
--   Monadic bind makes sequencing depend on values; Applicative is "static".
--   Book: “The rest of this section consists of an argument that this implementation of seq based on bind in fact satisfies the Applicative contract.”

-- [w12-u3-l3-a]
--   C) It accumulates all errors rather than short-circuiting on the first
--   Monadic bind would short-circuit; Validate keeps going to collect more.
--   Book: “The Applicative instance for Validate has an important difference from the instance for Except: while the instance for Except terminates at the first error encountered, the instance for Validate is careful to accumulate all errors from both the function and the argument branches:”

-- [w12-u3-l3-b]
--   C) Validate reports ALL validation failures at once; Except stops at the first
--   Better UX for form validation.
--   Book: “The Applicative instance for Validate has an important difference from the instance for Except: while the instance for Except terminates at the first error encountered, the instance for Validate is careful to accumulate all errors from both the function and the argument branches:”

-- [w12-u4-l1-a]
--   C) failure (identity for choice) and <|> (binary choice operator)
--   Alternative captures "try, otherwise fall back".
--   Book: “The Alternative class describes applicative functors that have additional operators for failure and recovery:”

-- [w12-u4-l1-b]
--   A) A computation that produces no result / fails
--   The neutral element for <|>.

-- [w12-u4-l1-c]
--   B) Tries the left computation; if it fails, tries the right one
--   Choice operator — first-success wins.
--   Book: “Additionally, having Prop as Sort 0 allows one more universe operator to become useful.”

-- [w12-u4-l2-a]
--   B) So List, Option, etc. work at any universe level, not just Type 0
--   Universe polymorphism keeps abstractions reusable across the hierarchy.
--   Book: “Rather than copy-pasting the datatype to create versions in Type, Type 1, Type 2, and so on, a feature called universe polymorphism can be used to write a single definition that can be instantiated in any of these universes.”

-- [w12-u4-l2-b]
--   u
--   α and β live at universe u, matching f.
--   Book: “A universe is a type that classifies other types.”

/-! # World 13: Induction & Recursion -/

-- [w13-u1-l1-a]
--   B) Yes — proofs are programs
--   Curry-Howard: proofs are programs, match works the same way.
--   Book: “The following proof of zero_add works this way:”

-- [w13-u1-l1-b]
--   hq hp
--   Swap left and right when reconstructing.
--   Book: “In this section, we will deal with structural recursion, in which the arguments to foo occurring on the right-hand side of the => are subterms of the patterns on the left-hand side.”

-- [w13-u1-l1-c]
--   A) Because propositions ARE inductive types — same elimination rules
--   Prop is just another universe; And, Or, Exists are inductive types.
--   Book: “Pattern matching works with any inductive type, such as products and option types:”

-- [w13-u1-l2-a]
--   C) Pattern matching where the type of the result depends on which constructor was matched
--   The motive (return type) can refer to the scrutinee.
--   Book: “Sometimes an argument in a dependent matching pattern is not essential to the definition, but nonetheless has to be included to specialize the type of the expression appropriately.”

-- [w13-u1-l2-b]
--   A) The index n+1 constrains which constructors are possible (must be cons)
--   Indexed inductives rule out unreachable cases.
--   Book: “We have seen that the casesOn recursor can be used to define functions and prove theorems by cases, according to the constructors involved in an inductively defined type.”

-- [w13-u2-l1-a]
--   rfl
--   Base case: 0 + 0 reduces to 0.
--   Book: “In the nil case, m is instantiated to 0, and Nat.noConfusion makes use of the fact that 0 = n + 1 cannot occur.”

-- [w13-u2-l1-b]
--   A) If a = b, then congrArg f gives f a = f b
--   Applies a function to both sides of an equality.
--   Book: “In both cases, Lean generates the auxiliary function fibFast.loop.”

-- [w13-u2-l1-c]
--   D) k is structurally smaller than Nat.succ k
--   Each recursion peels off a succ, so termination is structural.
--   Book: “Every natural number is either zero or succ x, and so you can define a function from the natural numbers to an arbitrary type by specifying a value in each of those cases:”

-- [w13-u2-l2-a]
--   C) rfl (or simp) — both sides reduce to ys.length
--   [] ++ ys = ys and [].length = 0, so 0 + ys.length = ys.length.

-- [w13-u2-l2-b]
--   A) The empty list []
--   List has nil ([]) and cons; nil is the base.
--   Book: “For another example, suppose we use a nested inductive type to define a set of terms inductively, so that a term is either a constant (with a name given by a string), or the result of applying a constant to a list of constants.”

-- [w13-u3-l1-a]
--   D) The recursive call div (n - k) k is not on a structurally smaller constructor arg
--   n - k is not a structural sub-term of n, so termination is not obvious.
--   Book: “You have to remember that the second argument to div.F, the recipe for the recursion, is a function that is supposed to return the divide by y function for all values x₁ smaller than x.”

-- [w13-u3-l1-b]
--   A) Recursion justified by a measure that strictly decreases on every call
--   A general termination scheme for cases structural recursion does not cover.
--   Book: “When structural recursion cannot be used, we can prove termination using well-founded recursion.”

-- [w13-u3-l1-c]
--   A) The decreasing measure (expression that gets smaller each recursive call)
--   It is the well-founded measure Lean uses for the termination proof.
--   Book: “We need a well-founded relation and a proof that each recursive application is decreasing with respect to this relation.”

-- [w13-u3-l2-a]
--   n
--   n strictly decreases on each call (since k > 0 in the recursive branch).
--   Book: “We need a well-founded relation and a proof that each recursive application is decreasing with respect to this relation.”

-- [w13-u3-l2-b]
--   A) That the termination measure strictly decreases on each recursive call
--   It discharges the well-foundedness obligations.
--   Book: “Note that decreasingby is not replacement for terminationby, they complement each other. terminationby is used to specify a well-founded relation, and decreasingby for providing our own tactic for showing recursive applications are decreasing.”

-- [w13-u3-l2-c]
--   D) omega
--   omega handles the linear-arithmetic decreases that come up most often.

-- [w13-u4-l1-a]
--   C) mutual ... end
--   A mutual block groups co-defined functions.
--   Book: “We have seen that the casesOn recursor can be used to define functions and prove theorems by cases, according to the constructors involved in an inductively defined type.”

-- [w13-u4-l1-b]
--   n; n
--   Each calls the other on the predecessor n.
--   Book: “Note that decreasingby is not replacement for terminationby, they complement each other. terminationby is used to specify a well-founded relation, and decreasingby for providing our own tactic for showing recursive applications are decreasing.”

-- [w13-u4-l1-c]
--   D) The combined measure must decrease across all calls in the mutual block
--   A single well-founded measure justifies the entire mutual recursion.
--   Book: “To define that function, Lean uses a suitable well-founded measure.”

-- [w13-u4-l2-a]
--   D) An inductive type that appears inside another type constructor in its own definition
--   The recursive occurrence is wrapped in another type former like List.
--   Book: “For another example, suppose we use a nested inductive type to define a set of terms inductively, so that a term is either a constant (with a name given by a string), or the result of applying a constant to a list of constants.”

-- [w13-u4-l2-b]
--   B) The recursion goes through List, so the compiler must generate auxiliary recursion principles
--   Nested recursion is internally compiled to mutual induction.
--   Book: “Note that, our proof uses mutual recursion (aka induction).”

/-! # World 14: Structures & Records -/

-- [w14-u1-l1-a]
--   A) structure
--   `structure` declares a record with named fields. Lean generates a constructor `mk` and projections.
--   Book: “structure Point (α : Type u) where mk :: (x : α) (y : α)”

-- [w14-u1-l1-b]
--   α
--   Both coordinates have the same type α.
--   Book: “structure Point (α : Type u) where mk :: (x : α) (y : α)”

-- [w14-u1-l1-c]
--   D) Point.mk
--   Lean uses `mk` as the default anonymous-constructor name when none is given.
--   Book: “If no constructor name is provided, then a constructor is named mk by default.”

-- [w14-u1-l2-a]
--   3
--   The anonymous constructor `{ x := 3, y := 4 }` builds a Point with x = 3.
--   Book: “Lean provides an anonymous-constructor notation { x := …, y := … } for structures.”

-- [w14-u1-l2-b]
--   B) { x := 1, y := 2 }
--   Curly braces with `:=` introduce field values in any order.
--   Book: “{ x := 10, y := 20 : Point Nat }”

-- [w14-u1-l2-c]
--   A) Anonymous constructor needs an explicit type annotation here
--   Without a target type Lean can't tell which structure you mean. Write `({ ... } : Point)`.
--   Book: “The expected type of the anonymous constructor must be known.”

-- [w14-u2-l1-a]
--   p.x
--   Dot notation: `p.x` desugars to `Point.x p`.
--   Book: “Given p : Point Nat, the notation p.x is shorthand for Point.x p.”

-- [w14-u2-l1-b]
--   7
--   `p.y` is sugar for `Point.y p`, which returns the y field.
--   Book: “Lean automatically generates the projection function Point.x.”

-- [w14-u2-l1-c]
--   B) Point.foo p args
--   Dot notation looks up `foo` in the namespace of `p`'s type and passes `p` as the first explicit arg of matching type.
--   Book: “Lean detects that the expected type of the first explicit argument is Point.”

-- [w14-u2-l2-a]
--   9
--   `{ p with y := 9 }` copies p and overrides y to 9.
--   Book: “{ p with y := 3 } copies the value p, overriding the y field.”

-- [w14-u2-l2-b]
--   with
--   The `with` keyword inherits remaining fields from p.
--   Book: “{ p with y := 3 } copies the value p, overriding the y field.”

-- [w14-u2-l2-c]
--   D) p is unchanged; a new record is returned
--   Lean is pure; `with` creates a new immutable record.
--   Book: “Functional records produce a new value with the overridden fields.”

-- [w14-u3-l1-a]
--   extends
--   `extends` declares that ColorPoint inherits Point's fields.
--   Book: “structure ColorPoint (α : Type u) extends Point α where c : Color”

-- [w14-u3-l1-b]
--   B) cp.x — inherited from Point
--   Fields of parent structures are reachable via dot notation directly.
--   Book: “Parent structure fields are accessible in child records.”

-- [w14-u3-l1-c]
--   1
--   CP inherits Point.x; dot notation works through the extension.
--   Book: “Add fields to existing structures via extends.”

-- [w14-u3-l2-a]
--   A) Multiple inheritance: `extends A, B`
--   Lean supports multiple inheritance by listing parents after `extends`, separated by commas.
--   Book: “Supports multiple inheritance.”

-- [w14-u3-l2-b]
--   Blue
--   Multiple inheritance lists parents comma-separated after `extends`.
--   Book: “extends Red, Green, Blue”

/-! # World 15: Type Classes Deep Dive -/

-- [w15-u1-l1-a]
--   B) class
--   `class` introduces a type class; `instance` registers an implementation.
--   Book: “class Inhabited (α : Type u) where default : α”

-- [w15-u1-l1-b]
--   instance
--   `instance` registers the implementation so type-class inference can find it.
--   Book: “instance : Inhabited Bool := ⟨ true ⟩”

-- [w15-u1-l1-c]
--   B) Instance-implicit: Lean synthesizes the dictionary
--   Square brackets mark instance arguments; type-class inference finds them automatically.
--   Book: “Square brackets [TypeClass α] indicate instance-implicit arguments synthesized automatically.”

-- [w15-u1-l2-a]
--   A) Type-class inference searches registered instances
--   The elaborator runs an instance-search procedure over the registered instance database.
--   Book: “Type class inference will synthesize the instance by searching a database of registered instances.”

-- [w15-u1-l2-b]
--   default
--   Both fields use `default` — instance search recursively provides the right one.
--   Book: “instance [Inhabited α] [Inhabited β] : Inhabited (α × β)”

-- [w15-u1-l2-c]
--   B) Explicitly triggers instance synthesis at the current goal type
--   `inferInstance` asks the elaborator to fill in an instance argument of the expected type.
--   Book: “inferInstance explicitly triggers synthesis.”

-- [w15-u2-l1-a]
--   0
--   The standard `Inhabited Nat` instance has default `0`.
--   Book: “class Inhabited (α : Type u) where default : α”

-- [w15-u2-l1-b]
--   A) A canonical inhabitant `default : α`
--   Inhabited witnesses non-emptiness computationally via a chosen default element.
--   Book: “class Inhabited (α : Type u) where default : α”

-- [w15-u2-l1-c]
--   D) Empty has no constructors — you cannot exhibit a default
--   Empty is uninhabited, so there is no value to plug in.
--   Book: “Inhabited requires a witness of α.”

-- [w15-u2-l2-a]
--   D) We can compute either a proof of p or a proof of ¬p
--   Decidable lets `if p then ... else ...` and `decide` run on a proposition.
--   Book: “class inductive Decidable (p : Prop) enables computational proof of propositions.”

-- [w15-u2-l2-b]
--   decide
--   `decide` finishes any goal whose underlying proposition is Decidable and true by reduction.
--   Book: “the decide tactic for decidable goals.”

-- [w15-u2-l2-c]
--   "yes"
--   `<` on Nat is Decidable, so the if-expression can be evaluated.
--   Book: “supporting if-then-else and the decide tactic for decidable goals.”

-- [w15-u3-l1-a]
--   B) Marks the parameter as inferred from later parameters, not from input
--   Output params let heterogeneous operations like HMul work — the result type is determined by α and β.
--   Book: “class HMul α β (γ : outParam (Type w))”

-- [w15-u3-l1-b]
--   outParam
--   γ is an output parameter — inferred from α, β.
--   Book: “class HMul α β (γ : outParam (Type w))”

-- [w15-u3-l2-a]
--   B) @[default_instance]
--   Default instances are picked when input parameters of the class are still unknown.
--   Book: “Mark instances with @[default_instance] to resolve pending synthesis problems.”

-- [w15-u3-l2-b]
--   C) local: scoped to a section/namespace and disabled when it closes. scoped: only active inside the namespace, or via `open scoped`.
--   `scoped` is reusable per-opener; `local` is bounded by the enclosing section.
--   Book: “scoped instance activates only when the namespace is opened or with open scoped.”

/-! # World 16: The Conversion Tactic -/

-- [w16-u1-l1-a]
--   D) To target a specific subterm where `rw` would rewrite the wrong occurrence
--   conv lets you navigate into the goal and rewrite a chosen subterm.
--   Book: “Direct rw [Nat.mul_comm] on a * (b * c) = a * (c * b) rewrites the outermost multiplication; conv precisely targets the inner b * c term.”

-- [w16-u1-l1-b]
--   =>
--   The block syntax is `conv => <steps>`.
--   Book: “conv => lhs”

-- [w16-u1-l1-c]
--   A) Focuses on the right-hand side of the relation in focus
--   `lhs`/`rhs` are conv navigation primitives.
--   Book: “Use lhs and rhs to navigate to either side of a relation.”

-- [w16-u1-l2-a]
--   C) Enters the 2nd nondependent explicit argument of the head function
--   `arg i` zooms into the i-th explicit argument.
--   Book: “arg i enters the i-th nondependent explicit argument.”

-- [w16-u1-l2-b]
--   congr
--   `congr` splits into one focused subgoal per argument.
--   Book: “congr creates targets for each nondependent explicit argument of the current head function.”

-- [w16-u1-l2-c]
--   1. conv => lhs
--   2. arg 2
--   3. rw [Nat.mul_comm]
--   Enter conv, focus the LHS, dive into the 2nd argument of `*`, then rewrite.
--   Book: “conv precisely targets the inner b * c term.”

-- [w16-u2-l1-a]
--   D) Rewrites only at the position currently in focus
--   conv localizes the rewrite to the focused subterm.
--   Book: “rewriting at specific positions where normal tactics fail.”

-- [w16-u2-l1-b]
--   B) Pattern-matches the subterm `b * c` and focuses there
--   `conv in pat` skips manual navigation by jumping straight to a matching subterm.
--   Book: “conv in b * c => uses pattern matching to directly locate subterms.”

-- [w16-u2-l1-c]
--   x
--   `intro x` enters the body of a binder so you can rewrite under it.
--   Book: “intro x allows navigation inside function abstractions.”

-- [w16-u2-l2-a]
--   B) conv at h => ...
--   `at h` directs the conv block at a hypothesis instead of the goal.
--   Book: “conv at h applies conversion mode to rewrite hypothesis h.”

-- [w16-u2-l2-b]
--   tactic
--   `tactic => ...` escapes conv to run any tactic on the focused subgoal.
--   Book: “tactic => <sequence> temporarily returns to regular tactic mode.”

/-! # World 17: Axioms & Computation -/

-- [w17-u1-l1-a]
--   D) If two propositions are logically equivalent, they are equal
--   `propext : (a ↔ b) → a = b` collapses logical equivalence into propositional equality.
--   Book: “axiom propext {a b : Prop} : (a ↔ b) → a = b”

-- [w17-u1-l1-b]
--   =
--   propext converts ↔ to =.
--   Book: “axiom propext {a b : Prop} : (a ↔ b) → a = b”

-- [w17-u1-l1-c]
--   D) Closed terms may stop reducing in the kernel
--   Using propext blocks definitional reduction; #eval can still run via the VM.
--   Book: “Using funext or propext prevents kernel reduction.”

-- [w17-u1-l2-a]
--   D) If two functions agree pointwise they are equal
--   Function extensionality: `(∀ x, f x = g x) → f = g`.
--   Book: “funext {f g : (x : α) → β x} (h : ∀ x, f x = g x) : f = g”

-- [w17-u1-l2-b]
--   =
--   Pointwise equality implies function equality.
--   Book: “funext (h : ∀ x, f x = g x) : f = g”

-- [w17-u1-l2-c]
--   A) Quotients
--   Quotient types let you derive function extensionality.
--   Book: “quotient construction (implying function extensionality)”

-- [w17-u2-l1-a]
--   em
--   `Classical.em : ∀ p, p ∨ ¬p`.
--   Book: “the law of excluded middle p ∨ ¬p”

-- [w17-u2-l1-b]
--   B) From `¬¬p` derives `p`
--   Classical double-negation elimination.
--   Book: “Classical reasoning … the law of excluded middle p ∨ ¬p”

-- [w17-u2-l1-c]
--   A) It is compatible with code compilation as long as you don't compute data from it
--   Classical lemmas in proofs are erased; only `Choice`-style data extraction is noncomputable.
--   Book: “remains compatible with code compilation when not manufacturing data.”

-- [w17-u2-l2-a]
--   B) Produce a data value from an existential proof
--   `Classical.choice` extracts a witness from `Nonempty α`; it is noncomputable.
--   Book: “Magically produces data from existential propositions; marked noncomputable.”

-- [w17-u2-l2-b]
--   noncomputable
--   Choice has no computational content, so the def cannot be compiled.
--   Book: “marked noncomputable since it lacks computational interpretation”

-- [w17-u3-l1-a]
--   D) The quotient of a type by a relation r
--   Quotient types collapse r-related elements into a single class.
--   Book: “Quot r creates quotient types from relations.”

-- [w17-u3-l1-b]
--   a
--   The lift's defining computation peels off `Quot.mk r`.
--   Book: “Quot.lift f h (Quot.mk r a) = f a”

-- [w17-u3-l1-c]
--   A) That f respects r — equal-inputs-by-r produce equal outputs
--   You must supply h : ∀ a b, r a b → f a = f b for the lift to be well-defined.
--   Book: “Quot.lift enables functions respecting the relation to lift to the quotient.”

/-! # World 18: Monad Transformers -/

-- [w18-u1-l1-a]
--   B) Mutable read/write access to a value of type σ
--   StateT threads a state of type σ through every step of m.
--   Book: “State transformers encode mutable state where a function parameter and a return value have the same type.”

-- [w18-u1-l1-b]
--   σ
--   A stateful computation returns the new state alongside its result.
--   Book: “StateT σ m α := σ → m (α × σ)”

-- [w18-u1-l1-c]
--   B) get and set (plus modify)
--   MonadState gives `get : m σ` and `set : σ → m PUnit` (and `modify`).
--   Book: “monad type classes (MonadState, MonadExcept)”

-- [w18-u1-l2-a]
--   A) The ability to throw and catch errors of type ε
--   ExceptT wraps m with `Except ε α` so steps can short-circuit on errors.
--   Book: “Return types similar to Except with constructors for success and failure cases.”

-- [w18-u1-l2-b]
--   Except
--   ExceptT m wraps m's return value in the Except sum type.
--   Book: “ExceptT ε m α := m (Except ε α)”

-- [w18-u1-l2-c]
--   C) MonadExcept
--   `MonadExcept ε m` provides `throw` and `tryCatch`.
--   Book: “monad type classes (MonadState, MonadExcept)”

-- [w18-u2-l1-a]
--   C) Read-only access to a configuration of type ρ
--   ReaderT threads an immutable environment ρ through every step.
--   Book: “covers combining IO/Reader effects”

-- [w18-u2-l1-b]
--   α
--   A Reader computation just consumes ρ and returns α inside m.
--   Book: “ReaderT ρ m α := ρ → m α”

-- [w18-u2-l1-c]
--   A) read
--   `MonadReader.read : m ρ` (also exposed as `read`/`readThe`).
--   Book: “covers combining IO/Reader effects”

-- [w18-u2-l2-a]
--   D) Run an m-action inside the bigger monad n automatically
--   MonadLift inserts the smaller effect into a wrapping transformer stack.
--   Book: “Code reuse pattern: combines multiple effects into single monadic structure.”

-- [w18-u2-l2-b]
--   monadLift
--   `monadLift` is the lifting function exposed by the class.
--   Book: “class MonadLift (m n : Type u → Type v) where monadLift : {α : Type u} → m α → n α”

-- [w18-u2-l2-c]
--   A) Inner effects 'survive' an outer error or rollback; the order changes whether state is preserved on throw
--   Whether you lose state on error depends on which transformer is outermost.
--   Book: “transformer ordering”

-- [w18-u3-l1-a]
--   A) modify (· + 1)
--   `modify f` updates the state by applying f.
--   Book: “monad type classes (MonadState, MonadExcept)”

-- [w18-u3-l1-b]
--   get
--   `get : m σ` reads the state in MonadState.
--   Book: “monad type classes (MonadState, MonadExcept)”

-- [w18-u3-l2-a]
--   C) tryCatch action handler
--   `tryCatch : m α → (ε → m α) → m α` runs the handler on a thrown ε.
--   Book: “monad type classes (MonadState, MonadExcept)”

-- [w18-u3-l2-b]
--   throw
--   `throw : ε → m α` raises the error.
--   Book: “MonadExcept”

/-! # World 19: Programming with Dependent Types -/

-- [w19-u1-l1-a]
--   C) A type that depends on a non-type value
--   Dependent types contain non-type expressions — programs can compute types and types can contain programs.
--   Book: “types that contain non-type expressions”

-- [w19-u1-l1-b]
--   C) An indexed family — type depends on the length n
--   Vector is parameterized by element type and indexed by length (Nat).
--   Book: “Indexed Families enabling type families parameterized by runtime values”

-- [w19-u1-l1-c]
--   String
--   Return type depends on the runtime Bool — classic dependent return type.
--   Book: “natOrStringThree demonstrates return type depending on Bool argument value”

-- [w19-u1-l2-a]
--   D) Natural numbers strictly less than n
--   Fin n is the type of `i : Nat` paired with a proof `i < n`.
--   Book: “Fin Type … provides bounded natural numbers for safe indexing”

-- [w19-u1-l2-b]
--   <
--   Fin packages an index with proof it is below n.
--   Book: “bounded natural numbers for safe indexing”

-- [w19-u1-l2-c]
--   2
--   The Fin packages val = 2 with proof 2 < 5.
--   Book: “bounded natural numbers for safe indexing”

-- [w19-u2-l1-a]
--   A) It refines the index n based on the constructor matched
--   Dependent pattern matching specializes the index: nil → 0, cons → succ k.
--   Book: “Dependent Pattern Matching … extracting value-dependent information”

-- [w19-u2-l1-b]
--   B) The return type may vary per branch — you must sometimes give an explicit motive
--   Hard cases require an explicit `(motive := …)` in `@Eq.rec` or `match`.
--   Book: “Dependent Pattern Matching … extracting value-dependent information”

-- [w19-u2-l1-c]
--   0
--   Empty vector has length 0; the match refines n = 0 in that branch.
--   Book: “extracting value-dependent information”

-- [w19-u2-l2-a]
--   C) A pair of a value with a proof of a predicate about that value
--   `{x : α // p x}` — a value α plus proof `p x`.
--   Book: “Subtype Constraints: Subtypes contain propositions that refer to particular values”

-- [w19-u2-l2-b]
--   //
--   The double-slash separates value type from the predicate.
--   Book: “{x : α // p x}”

-- [w19-u3-l1-a]
--   A) A type living at universe level u — used for universe-polymorphic code
--   Universe levels are needed to avoid Russell-style paradoxes; `u` is a variable level.
--   Book: “Universe Levels … managing Type u polymorphism in dependent contexts”

-- [w19-u3-l1-b]
--   A) To avoid Type : Type, which is inconsistent
--   An untyped 'Type of all types' is paradoxical (Girard); levels stratify the hierarchy.
--   Book: “structuring types across universe levels”

-- [w19-u3-l1-c]
--   α
--   id returns its input unchanged, polymorphic over any universe.
--   Book: “managing Type u polymorphism in dependent contexts”

/-! # World 20: Proving & Performance -/

-- [w20-u1-l1-a]
--   B) It is the very last operation in the function — nothing happens with its result
--   Tail calls can be compiled to a jump instead of a stack-growing call.
--   Book: “Tail Recursion: Programs should be optimized for efficient execution.”

-- [w20-u1-l1-b]
--   D) After `sum xs` returns, we still need to add x — the call is not in tail position
--   Convert to an accumulator: `go acc xs` with `sum xs = go 0 xs`.
--   Book: “Accumulator-Passing Style: A technique for converting recursive functions into tail-recursive forms.”

-- [w20-u1-l1-c]
--   D) They let the compiler turn the call into a loop, avoiding stack overflow on big inputs
--   TCO converts the call into a jump; the stack frame is reused.
--   Book: “tail-recursive forms that compile to loops.”

-- [w20-u1-l2-a]
--   A) def go (acc : Nat) : List Nat → Nat | [] => acc | x :: xs => go (acc + x) xs
--   The recursive call is now in tail position; the running total lives in acc.
--   Book: “Accumulator-Passing Style: A technique for converting recursive functions into tail-recursive forms.”

-- [w20-u1-l2-b]
--   reverse
--   Building with `cons` on an accumulator reverses the list — use foldl-style with care.
--   Book: “Two programs always compute the same answers, even if they do so with different algorithms.”

-- [w20-u2-l1-a]
--   termination_by
--   termination_by tells Lean the well-founded measure.
--   Book: “Lean requires termination proofs for non-structural recursive patterns using termination_by and decreasing_by.”

-- [w20-u2-l1-b]
--   C) When recursion is not on a structurally smaller argument
--   Structural recursion is checked automatically; well-founded recursion needs help.
--   Book: “Lean requires termination proofs for non-structural recursive patterns.”

-- [w20-u2-l1-c]
--   A) decreasing_by
--   `decreasing_by` runs a tactic to discharge the decrease obligation.
--   Book: “termination_by and decreasing_by”

-- [w20-u2-l2-a]
--   C) Random access in O(1) and in-place updates when the runtime ref count allows
--   When the array's reference count is 1, Lean updates it in place (functional but fast).
--   Book: “Arrays as the most important data structures for efficient programming in Lean.”

-- [w20-u2-l2-b]
--   B) Locally mutable references that escape with a pure result
--   `ST s α` is like IO but the mutation is scoped — `runST` returns a pure α.
--   Book: “The ST monad and IO references enable safe mutation within functional constraints.”

-- [w20-u2-l2-c]
--   ByteArray
--   ByteArray is a specialized contiguous byte buffer.
--   Book: “ByteArray: A specialized runtime type for performance-critical byte manipulation.”

-- [w20-u3-l1-a]
--   D) Lean can elide the runtime bounds check, with no overhead
--   Proof-carrying indexing means the unsafe primitive is sound to call.
--   Book: “Proofs allow elision of run-time bounds checks and introduce no runtime performance overhead.”

-- [w20-u3-l1-b]
--   D) You can ship the fast version and reason about it using a simpler reference version
--   Proving `fast = slow` lets you keep both — runtime speed plus a tractable spec for proofs.
--   Book: “Two programs always compute the same answers, even if they do so with different algorithms.”
