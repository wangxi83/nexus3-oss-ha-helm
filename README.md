
采用主备同步的nexus3

同步方案采用的是rsync

主备只考虑至多2个StatefulSet-POD，也就是replica=2。这样，POD-0是主、POD-1是备。

- 启动以后，POD-1会设置权限为只读
- 启动后，POD-1会周期监听POD-0，根据监听情况，设置自己的POD标签，Service会通过标签选择器选择status=UP的POD

