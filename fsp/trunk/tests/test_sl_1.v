(* Coq script *) 
Require Import Classical. 
Implicit Arguments classic [P]. 
Parameter A B : Prop. 
Theorem t1 : (((A /\ ~B) -> ~(~B -> ~A)) /\  (~(~B -> ~A) -> (A /\ ~B))). 
Proof (conj (fun (ab:(A /\ ~B)) => (fun (H2:(~B -> ~A)) => (let H1:~A := (H2 (fun (H2:B) => (let b:B := H2 in (match ab with (conj x1 b2) => (let a:A := x1 in (let x1:B := b in (match (b2 x1) with end))) end)))) in (match (H1 (match classic with or_introl x1 => (let x2:A := x1 in x2) | or_intror x1 => (let a:~A := x1 in (match ab with (conj x2 b) => (let x2:A := x2 in (match (a x2) with end)) end)) end)) with end)))) (fun (mt:~(~B -> ~A)) => (conj (match classic with or_introl x1 => (let x2:A := x1 in x2) | or_intror x1 => (let a:~A := x1 in (let H1:~(~B -> ~A) := mt in (match (H1 (fun (nb:~B) => (fun (H2:A) => (let x2:A := H2 in (match (a x2) with end))))) with end))) end) (fun x1 => (let b:B := x1 in (let H1:~(~B -> ~A) := mt in (match (H1 (fun (nb:~B) => (let H1:~B := nb in (match (H1 b) with end)))) with end))))))). 
