(ns hello.core
  (:require [cljs.nodejs :as nodejs]))

(nodejs/enable-util-print!)

(println "The current dirname is: " js/__dirname)

(js/process.exit 0)
