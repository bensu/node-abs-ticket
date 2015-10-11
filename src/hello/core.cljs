(ns hello.core
  (:require [cljs.nodejs :as nodejs]))

(nodejs/enable-util-print!)

(set! *main-cli-fn*
  (fn [& args]
    (apply println args)))
