(require 'cljs.build.api)

(cljs.build.api/build "src"
  {:main 'hello.core
   :output-to "main.js"
   :output-dir "/home/carlos/Playground/node-abs/out"
   :target :nodejs})
