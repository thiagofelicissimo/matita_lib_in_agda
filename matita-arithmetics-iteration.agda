
open import Agda.Primitive

import matita-basics-relations
import matita-basics-logic
import matita-arithmetics-nat

iter : (l4-v : Level) -> (H-v : Set l4-v) -> (X---v : (X---v : H-v) -> H-v) -> (X--1-v : matita-arithmetics-nat.nat) -> (X--2-v : H-v) -> H-v
iter l5-v H-v X---v matita-arithmetics-nat.O a-v = a-v
iter l5-v H-v X---v (matita-arithmetics-nat.S m-v) a-v = X---v (iter l5-v H-v X---v m-v a-v)

{-
postulate iter-body : (l4-v : Level) -> (H-v : Set l4-v) -> (X---v : (X---v : H-v) -> H-v) -> (X--1-v : matita-arithmetics-nat.nat) -> (X--2-v : H-v) -> H-v

-- postulate rewrite-rule-510 : (l2-v : Level) -> (H-v : Set l2-v) -> (X---v : (X---v : H-v) -> H-v) -> (X--1-v : matita-arithmetics-nat.nat) -> iter l2-v H-v X---v X--1-v ≡ matita-arithmetics-nat.filter-nat l2-v (λ (X--1-v : matita-arithmetics-nat.nat) -> (X--2-v : H-v) -> H-v) (iter-body l2-v H-v X---v) X--1-v


-- postulate rewrite-rule-511 : (l5-v : Level) -> (H-v : Set l5-v) -> (X---v : (X---v : H-v) -> H-v) -> (X--1-v : matita-arithmetics-nat.nat) -> iter-body l5-v H-v X---v X--1-v ≡ λ (a-v : H-v) -> matita-arithmetics-nat.match-nat l5-v (λ (X--2-v : matita-arithmetics-nat.nat) -> H-v) a-v (λ (m-v : matita-arithmetics-nat.nat) -> X---v (iter l5-v H-v X---v m-v a-v)) X--1-v
-}

le-iter : (g-v : (X---v : matita-arithmetics-nat.nat) -> matita-arithmetics-nat.nat) -> (a-v : matita-arithmetics-nat.nat) -> (X---v : (x-v : matita-arithmetics-nat.nat) -> matita-arithmetics-nat.le x-v (g-v x-v)) -> (i-v : matita-arithmetics-nat.nat) -> matita-arithmetics-nat.le a-v (iter lzero matita-arithmetics-nat.nat g-v i-v a-v)
le-iter = λ (g-v : (X---v : matita-arithmetics-nat.nat) -> matita-arithmetics-nat.nat) -> λ (a-v : matita-arithmetics-nat.nat) -> λ (leg-v : (x-v : matita-arithmetics-nat.nat) -> matita-arithmetics-nat.le x-v (g-v x-v)) -> λ (i-v : matita-arithmetics-nat.nat) -> matita-arithmetics-nat.nat-ind lzero (λ (X-x-365-v : matita-arithmetics-nat.nat) -> matita-arithmetics-nat.le a-v (iter lzero matita-arithmetics-nat.nat g-v X-x-365-v a-v)) (matita-arithmetics-nat.le-n a-v) (λ (n-v : matita-arithmetics-nat.nat) -> λ (Hind-v : matita-arithmetics-nat.le a-v (iter lzero matita-arithmetics-nat.nat g-v n-v a-v)) -> matita-arithmetics-nat.transitive-le a-v (iter lzero matita-arithmetics-nat.nat g-v n-v a-v) (iter lzero matita-arithmetics-nat.nat g-v (matita-arithmetics-nat.S n-v) a-v) Hind-v (leg-v (iter lzero matita-arithmetics-nat.nat g-v n-v a-v))) i-v

iter-iter : (l42-v : Level) -> (A-v : Set l42-v) -> (g-v : (X---v : A-v) -> A-v) -> (a-v : A-v) -> (b-v : matita-arithmetics-nat.nat) -> (c-v : matita-arithmetics-nat.nat) -> matita-basics-logic.eq l42-v A-v (iter l42-v A-v g-v c-v (iter l42-v A-v g-v b-v a-v)) (iter l42-v A-v g-v (matita-arithmetics-nat.plus b-v c-v) a-v)
iter-iter = λ (l42-v : Level) -> λ (A-v : Set l42-v) -> λ (g-v : (X---v : A-v) -> A-v) -> λ (a-v : A-v) -> λ (b-v : matita-arithmetics-nat.nat) -> λ (c-v : matita-arithmetics-nat.nat) -> matita-arithmetics-nat.nat-ind l42-v (λ (X-x-365-v : matita-arithmetics-nat.nat) -> matita-basics-logic.eq l42-v A-v (iter l42-v A-v g-v X-x-365-v (iter l42-v A-v g-v b-v a-v)) (iter l42-v A-v g-v (matita-arithmetics-nat.plus b-v X-x-365-v) a-v)) (matita-basics-logic.eq-ind lzero l42-v matita-arithmetics-nat.nat b-v (λ (x-1-v : matita-arithmetics-nat.nat) -> λ (X-x-2-v : matita-basics-logic.eq lzero matita-arithmetics-nat.nat b-v x-1-v) -> matita-basics-logic.eq l42-v A-v (iter l42-v A-v g-v matita-arithmetics-nat.O (iter l42-v A-v g-v b-v a-v)) (iter l42-v A-v g-v x-1-v a-v)) (matita-basics-logic.refl l42-v A-v (iter l42-v A-v g-v b-v a-v)) (matita-arithmetics-nat.plus b-v matita-arithmetics-nat.O) (matita-arithmetics-nat.plus-n-O b-v)) (λ (m-v : matita-arithmetics-nat.nat) -> λ (Hind-v : matita-basics-logic.eq l42-v A-v (iter l42-v A-v g-v m-v (iter l42-v A-v g-v b-v a-v)) (iter l42-v A-v g-v (matita-arithmetics-nat.plus b-v m-v) a-v)) -> matita-basics-logic.eq-ind lzero l42-v matita-arithmetics-nat.nat (matita-arithmetics-nat.S (matita-arithmetics-nat.plus b-v m-v)) (λ (x-1-v : matita-arithmetics-nat.nat) -> λ (X-x-2-v : matita-basics-logic.eq lzero matita-arithmetics-nat.nat (matita-arithmetics-nat.S (matita-arithmetics-nat.plus b-v m-v)) x-1-v) -> matita-basics-logic.eq l42-v A-v (iter l42-v A-v g-v (matita-arithmetics-nat.S m-v) (iter l42-v A-v g-v b-v a-v)) (iter l42-v A-v g-v x-1-v a-v)) (matita-basics-logic.eq-f l42-v l42-v A-v A-v g-v (iter l42-v A-v g-v m-v (iter l42-v A-v g-v b-v a-v)) (iter l42-v A-v g-v (matita-arithmetics-nat.plus b-v m-v) a-v) Hind-v) (matita-arithmetics-nat.plus b-v (matita-arithmetics-nat.S m-v)) (matita-arithmetics-nat.plus-n-Sm b-v m-v)) c-v

monotonic-iter : (g-v : (X---v : matita-arithmetics-nat.nat) -> matita-arithmetics-nat.nat) -> (a-v : matita-arithmetics-nat.nat) -> (b-v : matita-arithmetics-nat.nat) -> (i-v : matita-arithmetics-nat.nat) -> (X---v : matita-basics-relations.monotonic lzero lzero matita-arithmetics-nat.nat matita-arithmetics-nat.le g-v) -> (X--1-v : matita-arithmetics-nat.le a-v b-v) -> matita-arithmetics-nat.le (iter lzero matita-arithmetics-nat.nat g-v i-v a-v) (iter lzero matita-arithmetics-nat.nat g-v i-v b-v)
monotonic-iter = λ (g-v : (X---v : matita-arithmetics-nat.nat) -> matita-arithmetics-nat.nat) -> λ (a-v : matita-arithmetics-nat.nat) -> λ (b-v : matita-arithmetics-nat.nat) -> λ (i-v : matita-arithmetics-nat.nat) -> λ (Hmono-v : matita-basics-relations.monotonic lzero lzero matita-arithmetics-nat.nat matita-arithmetics-nat.le g-v) -> λ (leab-v : matita-arithmetics-nat.le a-v b-v) -> matita-arithmetics-nat.nat-ind lzero (λ (X-x-365-v : matita-arithmetics-nat.nat) -> matita-arithmetics-nat.le (iter lzero matita-arithmetics-nat.nat g-v X-x-365-v a-v) (iter lzero matita-arithmetics-nat.nat g-v X-x-365-v b-v)) leab-v (λ (m-v : matita-arithmetics-nat.nat) -> λ (Hind-v : matita-arithmetics-nat.le (iter lzero matita-arithmetics-nat.nat g-v m-v a-v) (iter lzero matita-arithmetics-nat.nat g-v m-v b-v)) -> Hmono-v (iter lzero matita-arithmetics-nat.nat g-v m-v a-v) (iter lzero matita-arithmetics-nat.nat g-v m-v b-v) Hind-v) i-v

monotonic-iter2 : (g-v : (X---v : matita-arithmetics-nat.nat) -> matita-arithmetics-nat.nat) -> (a-v : matita-arithmetics-nat.nat) -> (i-v : matita-arithmetics-nat.nat) -> (j-v : matita-arithmetics-nat.nat) -> (X---v : (x-v : matita-arithmetics-nat.nat) -> matita-arithmetics-nat.le x-v (g-v x-v)) -> (X--1-v : matita-arithmetics-nat.le i-v j-v) -> matita-arithmetics-nat.le (iter lzero matita-arithmetics-nat.nat g-v i-v a-v) (iter lzero matita-arithmetics-nat.nat g-v j-v a-v)
monotonic-iter2 = λ (g-v : (X---v : matita-arithmetics-nat.nat) -> matita-arithmetics-nat.nat) -> λ (a-v : matita-arithmetics-nat.nat) -> λ (i-v : matita-arithmetics-nat.nat) -> λ (j-v : matita-arithmetics-nat.nat) -> λ (leg-v : (x-v : matita-arithmetics-nat.nat) -> matita-arithmetics-nat.le x-v (g-v x-v)) -> λ (leij-v : matita-arithmetics-nat.le i-v j-v) -> matita-arithmetics-nat.le-ind lzero i-v (λ (x-417-v : matita-arithmetics-nat.nat) -> λ (X-x-418-v : matita-arithmetics-nat.le i-v x-417-v) -> matita-arithmetics-nat.le (iter lzero matita-arithmetics-nat.nat g-v i-v a-v) (iter lzero matita-arithmetics-nat.nat g-v x-417-v a-v)) (matita-arithmetics-nat.le-n (iter lzero matita-arithmetics-nat.nat g-v i-v a-v)) (λ (m-v : matita-arithmetics-nat.nat) -> λ (leim-v : matita-arithmetics-nat.le i-v m-v) -> λ (Hind-v : matita-arithmetics-nat.le (iter lzero matita-arithmetics-nat.nat g-v i-v a-v) (iter lzero matita-arithmetics-nat.nat g-v m-v a-v)) -> matita-arithmetics-nat.transitive-le (iter lzero matita-arithmetics-nat.nat g-v i-v a-v) (iter lzero matita-arithmetics-nat.nat g-v m-v a-v) (g-v (iter lzero matita-arithmetics-nat.nat g-v m-v a-v)) Hind-v (leg-v (iter lzero matita-arithmetics-nat.nat g-v m-v a-v))) j-v leij-v
