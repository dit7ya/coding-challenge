searchNodes=[{"doc":"The Coolfold module provides the foldl and foldr functions.","ref":"Coolfold.html","title":"Coolfold","type":"module"},{"doc":"The foldl function takes a list of type A , an accumulator of type B (&quot;starting value&quot;), and a function f: (A,B) -&gt; B and returns a value of type B by folding from the left . This is a tail recursive implementation of left fold which works for very big list inputs without stack overflow. Examples iex&gt; Coolfold . foldl ( [ 1 , 2 , 3 , 4 ] , 0 , fn x , y -&gt; x + y end ) 10 iex&gt; Coolfold . foldl ( [ 1 , 2 , 3 , 4 ] , 0 , fn x , y -&gt; x - y end ) 2","ref":"Coolfold.html#foldl/3","title":"Coolfold.foldl/3","type":"function"},{"doc":"The foldr function is like the foldl function but folds from the right instead. The results are different for non-associative functions. This implementation is not tail recursive and can cause stack overflows for very big input lists. Examples iex&gt; Coolfold . foldr ( [ 1 , 2 , 3 , 4 ] , 0 , fn x , y -&gt; x + y end ) 10 iex&gt; Coolfold . foldr ( [ 1 , 2 , 3 , 4 ] , 0 , fn x , y -&gt; x - y end ) - 2","ref":"Coolfold.html#foldr/3","title":"Coolfold.foldr/3","type":"function"}]