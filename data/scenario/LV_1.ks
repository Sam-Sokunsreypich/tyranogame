[_tb_system_call storage=system/_LV_1.ks]

*LV_1

[tb_eval  exp="f.var_1=Math.floor(Math.random()*(10-0+1)+0)"  name="var_1"  cmd="="  op="r"  val="0"  val_2="10"  ]
[call  storage="img.ks"  target="*var_1"  ]
[tb_image_show  time="10"  storage="default/num_img/+-removebg-preview.png"  width="666"  height="375"  y="-10"  x="-181"  name="img_3"  ]
[tb_eval  exp="f.var_2=Math.floor(Math.random()*(10-0+1)+0)"  name="var_2"  cmd="="  op="r"  val="0"  val_2="10"  ]
[call  storage="img.ks"  target="*var_2"  ]
[tb_image_show  time="10"  storage="default/num_img/_-removebg-preview.png"  width="666"  height="375"  x="7"  y="-4"  name="img_6"  ]
[tb_eval  exp="f.real_ans=f.var_1"  name="real_ans"  cmd="="  op="h"  val="var_1"  val_2="undefined"  ]
[tb_eval  exp="f.real_ans+=f.var_2"  name="real_ans"  cmd="+="  op="h"  val="var_2"  val_2="undefined"  ]
[tb_start_tyrano_code]
[emb exp = "f.var_1"] + [emb exp = "f.var_2"] =[emb exp = "f.real_ans"]
[_tb_end_tyrano_code]

[jump  storage="LV_2.ks"  target="*LV_2"  cond="f.input_ans==f.real_ans"  ]
[return  ]
