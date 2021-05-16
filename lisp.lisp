(format t "Number of iterations: ")

;; read stdin
(defvar *iterations* (read))
(defvar *temp*)
(defvar *sum_total*)

(defun main (*iterations*)
    ;; random seed
    (setf *random-state* (make-random-state t))
    (setq *sum_total* 0)

    (setq *print-case* :downcase)
    (loop for i from 1 to *iterations*
        do 
            (setq *temp* 0)

            ;; (format t "Hi ~d " *temp*)
            ;; (format t "He ~f ~%" (+ *temp* (/ (random 1000) 1000)))
            
            (loop while (< *temp* 1)
                do 
                    (setq *temp* (+ *temp* (/ (random 1000) 1000)))
                    (setq *sum_total* (+ *sum_total* 1))
            )
    )

    (format t "e = ~f ~%" (/ (float *sum_total*) *iterations*))
)

(main *iterations*)
