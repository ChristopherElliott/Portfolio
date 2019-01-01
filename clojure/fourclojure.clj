


(fn ranger [start end]
   (if (< start end)
     (cons start (ranger (inc start) end))
     ()))

(fn list-replicate [list]
  (mapcat (partial repeat 2) list))

(fn isUpper [x] 
  (apply str (filter #(Character/isUpperCase %) x)))

(fn maxxer
   ([x] x)
   ([x y] 
    (if (< x y)
      y
      x))
   ([x y & more]
    (if (first more)
      (if (< x y)
        (maxxer y (first more))
        (maxxer x (first more)))
      (maxxer x y) )))


(fn fibber [x]
    (case x
      1 '(1)
      2 '(1 1)
      (concat (fibber (dec x)) [(+ (last (fibber (dec x))) 
                                   (last (fibber (- x 2))))])))


(fn [x] 
   (= (reverse x) (reverse (reverse x))))
