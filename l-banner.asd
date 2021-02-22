#|
  This file is a part of L-BANNER package.
  URL: http://github.com/appblue/l-banner
  Copyright (c) 2021 Krzysztof Kielak <krzysztof.kielak@gmail.com>

  L-BANNER is freely distributable under the MIT License.
|#

#|
  Generate an ASCII banner using C64 fonts

  Author: Krzysztof Kielak (krzysztof.kielak@gmail.com)
|#

(defsystem "l-banner"
  :version "0.1.0"
  :author "Krzysztof Kielak"
  :license "MIT"
  :depends-on ()
  :components ((:module "src"
                :components
                ((:file "main" :depends-on ("utils" "chars" "canvas"))
		 (:file "chars" :depends-on ("utils"))
		 (:file "canvas")
		 (:file "utils"))))
  :description ""
  :in-order-to ((test-op (test-op "l-banner/tests"))))

(defsystem "l-banner/tests"
  :author ""
  :license ""
  :depends-on ("l-banner"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main" ))))
  :description "Test system for l-banner"
  :perform (test-op (op c) (symbol-call :rove :run c)))
