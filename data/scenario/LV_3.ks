[_tb_system_call storage=system/_LV_3.ks]

*LV_3

[tb_eval  exp="f.var_1=Math.floor(Math.random()*(10-0+1)+0)"  name="var_1"  cmd="="  op="r"  val="0"  val_2="10"  ]
[call  storage="img.ks"  target="*var_1"  ]
[call  storage="img.ks"  target="*operator_1"  ]
[tb_eval  exp="f.var_2=Math.floor(Math.random()*(10-0+1)+0)"  name="var_2"  cmd="="  op="r"  val="0"  val_2="10"  ]
[call  storage="img.ks"  target="*var_2"  ]
[call  storage="img.ks"  target="*operator_2"  ]
[tb_eval  exp="f.var_3=Math.floor(Math.random()*(10-0+1)+0)"  name="var_3"  cmd="="  op="r"  val="0"  val_2="10"  ]
[call  storage="img.ks"  target="*var_3"  ]
[tb_image_show  time="10"  storage="default/num_img/_-removebg-preview.png"  width="666"  height="375"  x="147"  name="img_9"  ]
[cm  ]
[tb_eval  exp="f.real_ans=f.var_1"  name="real_ans"  cmd="="  op="h"  val="var_1"  val_2="undefined"  ]
[call  storage="LV_3.ks"  target="*operator_var2"  ]
[call  storage="LV_3.ks"  target="*operator_var3"  ]
[tb_start_tyrano_code]
answer = [emb exp = "f.real_ans"]
[_tb_end_tyrano_code]

*operator_var2

[jump  storage="LV_3.ks"  target="*-_var_2"  cond="f.operator>'0.5'"  ]
[jump  storage="LV_3.ks"  target="*+_var2"  cond="f.operator<'0.5'"  ]
[return  ]
*+_var2

[tb_eval  exp="f.real_ans+=f.var_2"  name="real_ans"  cmd="+="  op="h"  val="var_2"  val_2="undefined"  ]
[return  ]
*-_var_2

[tb_eval  exp="f.real_ans-=f.var_2"  name="real_ans"  cmd="-="  op="h"  val="var_2"  val_2="undefined"  ]
[return  ]
*operator_var3

[jump  storage="LV_3.ks"  target="*+_var3"  cond="f.operator_1<'0.5'"  ]
[jump  storage="LV_3.ks"  target="*-_var3"  cond="f.operator_1>'0.5'"  ]
[return  ]
*+_var3

[tb_eval  exp="f.real_ans+=f.var_3"  name="real_ans"  cmd="+="  op="h"  val="var_3"  val_2="undefined"  ]
[return  ]
*-_var3

[tb_eval  exp="f.real_ans-=f.var_3"  name="real_ans"  cmd="-="  op="h"  val="var_3"  val_2="undefined"  ]
[return  ]
