@.str = private constant [15 x i8] c"hello, world!\0A\00", align 1 ; [#uses=1]

define linkonce_odr i32* @main() align 2 {
  %199 = trunc i8 1 to i1                        ; [#uses=1]
  br i1 %199, label %555, label %569

; <label>:555                                     ; preds = %353
  br label %569
                                                  ; No predecessors!
  br label %569

; <label>:569                                     ; preds = %555
  %333 = call i32 @printf(i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0)) ; [#uses=0]
  ret i32 0
}

declare i32 @printf(i8*)

