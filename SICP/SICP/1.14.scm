"Draw the tree illustrating the process generated by the count-change procedure of Section 1.2.2 in making change for 11 cents. 
What are the orders of growth of the space and number of steps used by this process as the amount to be changed increases?"

(count-change 11)
 │
 │
(cc 11 5)│
 │       └►(cc -39 5)
 │
(cc 11 4)│
 │       └►(cc -14 4)
 │
(cc 11 3)│ 
 │       └►(cc 1 3)│
 │          │      └►(cc -9 3)
 │          │
 │         (cc 1 2)│
 │          │      └►(cc -4 2)
 │          │
 │         (cc 1 1)│
 │          │      └►(cc 0 1)
 │          │
 │         (cc 0 1)
 │
(cc 11 2)│
 │       └►(cc 6 2)│
 │          │      └──────────►(cc 1 2)│
 │          │                   │      └►(cc -4 2)
 │         (cc 6 1)│            │
 │          │      └►(cc 6 0)  (cc 1 1)│
 │          │                   │      └►(cc 0 1)
 │         (cc 5 1)│            │
 │          │      └►(cc 5 0)  (cc 1 0)
 │          │
 │         (cc 4 1)│
 │          │      └►(cc 4 0)
 │          │
 │         (cc 3 1)│
 │          │      └►(cc 3 0)
 │          │
 │         (cc 2 1)│
 │          │      └►(cc 2 0)
 │          │
 │         (cc 1 1)│
 │          │      └►(cc 1 0)
 │          │
 │         (cc 0 1)
 │
(cc 11 1)│
 │       └►(cc 10 1)│
 │          │       └►(cc 10 0)
(cc 11 0)   │
           (cc 9 1)│
            │      └►(cc 9 0)
            │
           (cc 8 1)│
            │      └►(cc 8 0)
            │
           (cc 7 1)│
            │      └►(cc 7 0)
            │ 
           (cc 6 1)│
            │      └►(cc 6 0)
            │
           (cc 5 1)│
            │      └►(cc 5 0)
            │
           (cc 4 1)│
            │      └►(cc 4 0)
            │
           (cc 3 1)│
            │      └►(cc 3 0)
            │
           (cc 2 1)│
            │      └►(cc 2 0)
            │
           (cc 1 1)│
            │      └►(cc 1 0)
            │
           (cc 0 1)

"The order of growth of the steps and space is O(n^5) because every increase in the number of coins requires a new branch."