(require 'cljs.build.api)

(cljs.build.api/build "src"
  {:main 'hello.core
   :optimizations :none
   :output-to "main.js"
   :output-dir "out"
   :target :nodejs})
