(define (batch-autoscale pattern percent)
  (let* ((filelist (cadr (file-glob pattern 1))))
    (while (not (null? filelist))
      (let* ((filename (car filelist))
             (image (car (gimp-file-load RUN-NONINTERACTIVE filename filename)))
             (drawable (car (gimp-image-get-active-layer image)))
             (cur-width  (car (gimp-image-width image)))
             (cur-height (car (gimp-image-height image)))
             (new-width (* cur-width percent))
             (new-height (* cur-height percent)))

        ; Image -> Scale Image...
        (gimp-image-scale image new-width new-height)

        (gimp-file-save RUN-NONINTERACTIVE image drawable filename filename)
        (gimp-image-delete image))
    (set! filelist (cdr filelist)))))

