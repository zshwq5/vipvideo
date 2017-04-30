这是一个实验项目，需要的自用，没啥技术含量.
编译的方法：
以潘多拉的sdk为例
1 : cd PandoraBox-SDK-ralink-mt7620_gcc-4.8-linaro_uClibc-1.0.x.Linux-x86_64
2 : git clone https://github.com/2812015651/vipvideo.git package/vipvideo
3 : make menuconfig,在Neywork-Freevip-vipvideo选中就行
4 : make package/vipvideo/compile V=s(或者V=99)
5 : 耐心等待编译成功，然后就可以体验了
