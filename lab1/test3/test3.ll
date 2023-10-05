@myglo1 = global i32 11

@global_constant = constant i32 0

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

define i32 @main() #0 {
    %1 = alloca i32, align 4
    store i32 0, i32* %1, align 4
    %2 = alloca i32, align 4
    %3 = alloca i32, align 4
    %4 = alloca i32, align 4
    store i32 2, i32* %2, align 4
    store i32 5, i32* %3, align 4

    %5 = load i32, i32* %2, align 4
    %6 = load i32, i32* %3, align 4



    %7 = icmp sle i32 %5, %6
    br i1 %7, label %8, label %9

8:
    store i32 1, i32* %4, align 4
    br label %10

9:
    store i32 2, i32* %4, align 4
    br label %10

10:
    %11 = add i32 %5, %6 ;将2号寄存器和三号寄存器加起来放到11号寄存器
    %12 = sub i32 %6, %5 ;将3号寄存器减去2号寄存器的值然后存到12号寄存器
    %13 = icmp ne i32 %5, 0  ; 将'%5'转换为'i1'类型
    %14 = icmp ne i32 %6, 0  ; 将'%6'转换为'i1'类型
    %15 = and i1 %13, %14
    %16 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8],[3 x i8]* @.str, i64 0, i64 0), i32* %1)
    %17 = load i32, i32* %1, align 4
    %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %17);输出读入的数据
    %19 = load i32, i32* %4, align 4
    %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %19) ;输出if语句的结果
    %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %11) ;输出add语句的结果
    %22 = zext i1 %15 to i32
    %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %22) ;输出and语句的结果
    ret i32 0
}

declare dso_local i32 @__isoc99_scanf(i8*, ...) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
