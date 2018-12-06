# zhengma
多学一个输入法，可以活动活动大脑。


## 配置备忘
这些配置都是参考其它输入法配置试验出来的按键，并非从微软文档得出，
并不能保证正确。
如有不验，还望告知一声。

`ImeMode=1`
切换至本输入法时，是否启用输入法
1 中文（仅针对中文输入法而言）
0 英文

`CandidateList.dontShowNextKeySequence=0`
在候选字词后显示编码
1 不提示
0 提示

`FontFaceName=等线`
`FontSize=11`
候选框字体（应该是未进行转换即按空格之前之前）

```
[Keystroke.Candidate]
VK_RETURN,     0  = CANCEL_TEXTSTORE_AND_INPUT
VK_OEM_PLUS,   0  = MOVE_PAGE_DOWN
VK_OEM_MINUS,  0  = MOVE_PAGE_UP
VK_INSERT,     0  = MOVE_PAGE_UP
VK_DELETE,     0  = MOVE_PAGE_DOWN
```
转换前候选框的按键

```
[Keystroke.Candidate.Symbol]
VK_INSERT,     0  = MOVE_PAGE_UP
VK_DELETE,     0  = MOVE_PAGE_DOWN
```
这个是啥？


```
[Keystroke.Candidate.Wildcard]
VK_INSERT,     0  = MOVE_PAGE_UP
VK_DELETE,     0  = MOVE_PAGE_DOWN
```
按空格前候选框的按键

`MakePhraseFromText=1`
从 [text] 段匹配词组进行联想，这个功能你喜欢吗？
1 联想
0 不联想

`KeyDefineImeMode=VK_SHIFT, TF_MOD_ON_KEYUP_SHIFT_ONLY`
用 Shift 切换中英文，中英文混合输入时可能会引起麻烦。可能参考下面的配置，
将它修改成<Ctrl-逗号>，这个凭个人喜好。
`KeyDefineImeMode=VK_OEM_COMMA, TF_MOD_CONTROL`

`KeyDefineDoubleSingleByte=VK_SPACE, TF_MOD_SHIFT`
切换全角/半角的快捷键。


