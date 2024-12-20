(* Isabelle script *)
theory pluto = Main :
lemma "(A --> ((A --> B) --> ((A --> C) --> ((B --> (C --> D)) --> D))))" 
proof (rule impI)
(*show*) have "(A --> ((A --> B) --> ((A --> C) --> ((B --> (C --> D)) --> D))))" proof - {
assume a: "A"
assume ab: "(A --> B)"
assume ac: "(A --> C)"
assume bcd: "(B --> (C --> D))"
(*show*) have "D" proof - {
from a have a2: "A" apply - by ((drule mp)?,assumption)+
from ab have b: "B" using a2 apply - by ((drule mp)?,assumption)+
from ac have c: "C" using a2 apply - by ((drule mp)?,assumption)+
from bcd show ?thesis using b c apply - by ((drule mp)?,assumption)+
} qed
} thus ?thesis apply - apply (rule impI)+ by ((drule mp)?,assumption)+ qed
thus ?thesis . qed
end
