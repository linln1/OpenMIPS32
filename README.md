# OpenMIPS32
Havard Structure &amp; GCC compiler &amp; Level 5 Processer pipeline; Double Bus Line
## OpenMIPS32_teaching
![Image text](https://raw.githubusercontent.com/linln1/OpenMIPS32/master/CPU_teaching.png)
## Level 5 Processer Pipeline
![Image text](https://raw.githubusercontent.com/linln1/OpenMIPS32/master/streamlevel.png)
## Data flow when the CPU is finish
![Image text](https://raw.githubusercontent.com/linln1/OpenMIPS32/master/dataflow.png)

## 数据相关WAR/RAW/WAW 只考虑RAW
  (1)相邻指令间存在数据相关
  (2)相隔1条指令之间存在数据相关
  (3)相隔2条指令之间存在数据相关
解决方案：
  (1)插入暂停周期
  (2)编译器调度
  (3)数据前推
# First Instruction
## ORI
![Image text](https://raw.githubusercontent.com/linln1/OpenMIPS32/master/ORI_Instruction.png)
