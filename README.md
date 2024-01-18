# Compilation-System-Principle

Implemented a compiler that can translate SysY language (a subset of c language) to target ARM assembly code.It includes two preparatory tasks and one additional task, with the compiler body located in the `./final` folder.

- lab1: Prework 1, Understand your compiler&LLVM IR programming, the code is LLVM IR
- lab2: Prework 2, Define your compiler, assembly programming&be familiar with auxiliary tools, Code is ARM assembly
- OT1: Implementation of lexical analyzer construction algorithm. Implemented accepting a regular expression, converting it to NFA, minimizing DFA, outputting the final DFA, and being able to accept a string to determine whether the string is accepted by the regular expression.

The compiler body located in the `./final` folder.It can translate SysY language (a subset of c language) to target ARM assembly code, the specific implementation is as follows:

- Implement basic data flow and control flow translation
- Realize the recognition, storage and calculation of floating point numbers
- Realize the recognition, storage and calculation of arrays
- The algorithm and optimization of linear scan register allocation and graph coloring register allocation are realized

For the test sample (from `[CSCC Compilation competition](https://compiler.educg.net/#/)`), the passing conditions are as follows:

- 1-1: All AC
- 1-2: All AC
- 2-1: All AC
- 2-2: All AC
- 2-3: All AC
- 2-4: All AC
- 2-5: Two not AC
- 2-6: Two not AC

For more details, please visit [CSCC Compilation competition](https://compiler.educg.net/#/)

### Completed in December 2023, in course Compilation-System-Principle, at Nankai University
