# kanji_kana

[mpaligner](https://ja.osdn.net/projects/mpaligner/)を使って北極三號の読み-単語のアラインメントを推定した結果に基づき作成された漢字と読みのリストです。

## alignment.txtのデータフォーマット

```
漢字<Tab>読み<Tab>漢字の文字長<Tab>読みの文字長
```

## How to reproduce 

```
$ cd /path/to/mpaligner_0.97
$ cat /path/to/np108/np108_gg.txt | ./script/separate_for_char.pl utf8 \
source/joint_chars.utf8.txt > source/np108_gg.utf8.char_unit
$ ./mpaligner -i source/np108_gg.utf8.char_unit
$ ruby get_yomi.rb source/np108_gg.utf8.char_unit.align | LC_ALL=C sort \
-k3,3nr -k4,4nr -k1,1 -k2,2 -u > np108_gg_alignment.txt
```
