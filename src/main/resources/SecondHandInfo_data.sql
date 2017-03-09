
#用户表的默认数据
insert into onlinemall_user(userid,username,userpass,useremail,userheadimg,userregtime,userstatus,usersex)
values('1','lmj','a','1437786232@qq.com','00001.jpg',now(),1,'男');
insert into onlinemall_user(userid,username,userpass,useremail,userheadimg,userregtime,userstatus,usersex)
values('2','wdh','a','1437786232@qq.com','00002.jpg',now(),1,'男');
insert into onlinemall_user(userid,username,userpass,useremail,userheadimg,userregtime,userstatus,usersex)
values('3','wbq','a','1437786232@qq.com','00001.jpg',now(),1,'男');
insert into onlinemall_user(userid,username,userpass,useremail,userheadimg,userregtime,userstatus,usersex)
values('4','zs','a','1437786232@qq.com','00002.jpg',now(),1,'男');

select count(*)  from onlinemall_user where username='65665' and userpass='24515';
#类别表的数据

insert into onlinemall_species(parentid,speciesname) values(0,'手机 平板');#1
insert into onlinemall_species(parentid,speciesname) values(0,'电脑 数码');#2
insert into onlinemall_species(parentid,speciesname) values(0,'数码 配件');#3
insert into onlinemall_species(parentid,speciesname) values(0,'运动 健身');#4
insert into onlinemall_species(parentid,speciesname) values(0,'服饰 鞋袜');#5
insert into onlinemall_species(parentid,speciesname) values(0,'宿舍 用品');#6
insert into onlinemall_species(parentid,speciesname) values(0,'美容 护理');#7
insert into onlinemall_species(parentid,speciesname) values(0,'代步 工具');#8
insert into onlinemall_species(parentid,speciesname) values(0,'珠宝 首饰');#9
insert into onlinemall_species(parentid,speciesname) values(0,'网络 虚拟');#10
insert into onlinemall_species(parentid,speciesname) values(0,'其 他');#11

insert into onlinemall_species(parentid,speciesname) values(1,'手机 ');#12
insert into onlinemall_species(parentid,speciesname) values(1,'平板 ');#13
insert into onlinemall_species(parentid,speciesname) values(2,'笔记本 ');#14
insert into onlinemall_species(parentid,speciesname) values(2,'台式电脑 ');#15
insert into onlinemall_species(parentid,speciesname) values(2,'单反相机');#16
insert into onlinemall_species(parentid,speciesname) values(2,'mp3/4/5');#17
insert into onlinemall_species(parentid,speciesname) values(3,'鼠标');#18
insert into onlinemall_species(parentid,speciesname) values(3,'键盘');#19
insert into onlinemall_species(parentid,speciesname) values(3,'数据线');#20
insert into onlinemall_species(parentid,speciesname) values(3,'耳机');#21
insert into onlinemall_species(parentid,speciesname) values(3,'充电器');#22
insert into onlinemall_species(parentid,speciesname) values(3,'单反镜头');#23
insert into onlinemall_species(parentid,speciesname) values(3,'U盘');#24
insert into onlinemall_species(parentid,speciesname) values(3,'音箱');#25
insert into onlinemall_species(parentid,speciesname) values(4,'哑铃');#26
insert into onlinemall_species(parentid,speciesname) values(4,'跑步拳击');#27
insert into onlinemall_species(parentid,speciesname) values(4,'球类器材');#28
insert into onlinemall_species(parentid,speciesname) values(5,'上衣');#29
insert into onlinemall_species(parentid,speciesname) values(5,'裤子');#30
insert into onlinemall_species(parentid,speciesname) values(5,'鞋子');#31
insert into onlinemall_species(parentid,speciesname) values(5,'袜子');#32

insert into onlinemall_species(parentid,speciesname) values(6,'吊床');#33
insert into onlinemall_species(parentid,speciesname) values(6,'椅子');#34
insert into onlinemall_species(parentid,speciesname) values(7,'洗发水');#35
insert into onlinemall_species(parentid,speciesname) values(7,'化妆品');#36
insert into onlinemall_species(parentid,speciesname) values(7,'化妆盒');#37
insert into onlinemall_species(parentid,speciesname) values(8,'电动车');#38
insert into onlinemall_species(parentid,speciesname) values(8,'自行车');#39
insert into onlinemall_species(parentid,speciesname) values(8,'越野车');#40
insert into onlinemall_species(parentid,speciesname) values(9,'玉佛');#41
insert into onlinemall_species(parentid,speciesname) values(9,'耳环');#42
insert into onlinemall_species(parentid,speciesname) values(9,'镯子');#43
insert into onlinemall_species(parentid,speciesname) values(9,'项链');#44
insert into onlinemall_species(parentid,speciesname) values(10,'游戏装备');#45
insert into onlinemall_species(parentid,speciesname) values(10,'游戏人物');#46
insert into onlinemall_species(parentid,speciesname) values(11,'小狗');#47
#用户发布的商品表
select * from onlinemall_goods;
insert into onlinemall_goods
(goodsid,parentid,speciesid,userid,goodstitle,goodsprice,goodsneworold,goodstelphone,  nowaddress,goodsregtime,goodsimg,goodsdetail,goodsstatus)
values('1',1,12,'1','魅族MX3',1000.0,'非全新','15112345678','致远园6栋406',now(),'10001.jpg','我这个宝贝很值，保护的很好，看起来就和新的一样','1');
insert into onlinemall_goods
(goodsid,parentid,speciesid,userid,goodstitle,goodsprice,goodsneworold,goodstelphone, nowaddress,goodsregtime,goodsimg,goodsdetail,goodsstatus)
values('2',1,12,'1','苹果5s',2500.0,'全新','15112345678','致远园6栋406',now(),'shouji5.png','我这个宝贝很值，保护的很好，看起来就和新的一样','1');
insert into onlinemall_goods
(goodsid,parentid,speciesid,userid,goodstitle,goodsprice,goodsneworold,goodstelphone, nowaddress,goodsregtime,goodsimg,goodsdetail,goodsstatus)
values('3',1,12,'1','华为',2000.0,'全新','15112345678','致远园6栋406',now(),'shouji6.png','我这个宝贝很值，保护的很好，看起来就和新的一样','1');
insert into onlinemall_goods
(goodsid,parentid,speciesid,userid,goodstitle,goodsprice,goodsneworold,goodstelphone, nowaddress,goodsregtime,goodsimg,goodsdetail,goodsstatus)
values('4',1,12,'1','小米',1500.0,'全新','15112345678','致远园6栋406',now(),'shouji7.png','我这个宝贝很值，保护的很好，看起来就和新的一样','1');
insert into onlinemall_goods
(goodsid,parentid,speciesid,userid,goodstitle,goodsprice,goodsneworold,goodstelphone, nowaddress,goodsregtime,goodsimg,goodsdetail,goodsstatus)
values('5',1,12,'1','htc',1000.0,'非全新','15112345678','致远园6栋406',now(),'shouji8.png','我这个宝贝很值，保护的很好，看起来就和新的一样','0');

insert into onlinemall_goods
(goodsid,parentid,speciesid,userid,goodstitle,goodsprice,goodsneworold,goodstelphone, nowaddress,goodsregtime,goodsimg,goodsdetail,goodsstatus)
values('6',1,12,'1','手机',800.0,'非全新','15112345678','致远园6栋406',now(),'shouji9.png','我这个宝贝很值，保护的很好，看起来就和新的一样','0');
insert into onlinemall_goods
(goodsid,parentid,speciesid,userid,goodstitle,goodsprice,goodsneworold,goodstelphone, nowaddress,goodsregtime,goodsimg,goodsdetail,goodsstatus)
values('7',1,12,'1','手机',900.0,'全新','15112345678','致远园6栋406',now(),'shouji10.png','我这个宝贝很值，保护的很好，看起来就和新的一样','0');
insert into onlinemall_goods
(goodsid,parentid,speciesid,userid,goodstitle,goodsprice,goodsneworold,goodstelphone, nowaddress,goodsregtime,goodsimg,goodsdetail,goodsstatus)
values('8',1,12,'1','手机',1200.0,'全新','15112345678','致远园6栋406',now(),'shouji11.png','我这个宝贝很值，保护的很好，看起来就和新的一样','1');
insert into onlinemall_goods
(goodsid,parentid,speciesid,userid,goodstitle,goodsprice,goodsneworold,goodstelphone, nowaddress,goodsregtime,goodsimg,goodsdetail,goodsstatus)
values('9',1,12,'1','苹果5',2000.0,'全新','15112345678','致远园6栋406',now(),'shouji13.png','我这个宝贝很值，保护的很好，看起来就和新的一样','1');
insert into onlinemall_goods
(goodsid,parentid,speciesid,userid,goodstitle,goodsprice,goodsneworold,goodstelphone, nowaddress,goodsregtime,goodsimg,goodsdetail,goodsstatus)
values('10',1,12,'1','手机',100.0,'非全新','15112345678','致远园6栋406',now(),'shouji14.png','我这个宝贝很值，保护的很好，看起来就和新的一样','1');
insert into onlinemall_goods
(goodsid,parentid,speciesid,userid,goodstitle,goodsprice,goodsneworold,goodstelphone, nowaddress,goodsregtime,goodsimg,goodsdetail,goodsstatus)
values('11',1,12,'1','手机',500.0,'非全新','15112345678','致远园6栋406',now(),'shouji15.png','我这个宝贝很值，保护的很好，看起来就和新的一样','1');
insert into onlinemall_goods
(goodsid,parentid,speciesid,userid,goodstitle,goodsprice,goodsneworold,goodstelphone, nowaddress,goodsregtime,goodsimg,goodsdetail,goodsstatus)
values('12',1,12,'2','手机',200.0,'非全新','15112345678','致远园6栋406',now(),'shouji17.png','我这个宝贝很值，保护的很好，看起来就和新的一样','1');
insert into onlinemall_goods
(goodsid,parentid,speciesid,userid,goodstitle,goodsprice,goodsneworold,goodstelphone, nowaddress,goodsregtime,goodsimg,goodsdetail,goodsstatus)
values('13',1,12,'1','小米',1000.0,'全新','15112345678','致远园6栋406',now(),'shouji18.png','我这个宝贝很值，保护的很好，看起来就和新的一样','1');
insert into onlinemall_goods
(goodsid,parentid,speciesid,userid,goodstitle,goodsprice,goodsneworold,goodstelphone, nowaddress,goodsregtime,goodsimg,goodsdetail,goodsstatus)
values('14',1,12,'1','小米',1000.0,'全新','15112345678','致远园6栋406',now(),'shouji19.png','我这个宝贝很值，保护的很好，看起来就和新的一样','1');
insert into onlinemall_goods
(goodsid,parentid,speciesid,userid,goodstitle,goodsprice,goodsneworold,goodstelphone, nowaddress,goodsregtime,goodsimg,goodsdetail,goodsstatus)
values('15',1,12,'1','华为',1000.0,'全新','15112345678','致远园6栋406',now(),'shouji20.png','我这个宝贝很值，保护的很好，看起来就和新的一样','1');

insert into onlinemall_goods
(goodsid,parentid,speciesid,userid,goodstitle,goodsprice,goodsneworold,goodstelphone,nowaddress,goodsregtime,goodsimg,goodsdetail,goodsstatus)
values('16',1,13,'3','平板',1100.0,'全新','15112345678','致远园6栋406',now(),'shouji1.png','我这个宝贝很值，保护的很好，看起来就和新的一样','1');
insert into onlinemall_goods
(goodsid,parentid,speciesid,userid,goodstitle,goodsprice,goodsneworold,goodstelphone,nowaddress,goodsregtime,goodsimg,goodsdetail,goodsstatus)
values('17',1,13,'3','ipad',2000.0,'全新','15112345678','致远园6栋406',now(),'shouji2.png','我这个宝贝很值，保护的很好，看起来就和新的一样','1');
insert into onlinemall_goods
(goodsid,parentid,speciesid,userid,goodstitle,goodsprice,goodsneworold,goodstelphone,nowaddress,goodsregtime,goodsimg,goodsdetail,goodsstatus)
values('18',1,13,'2','ipadmini',2000.0,'全新','15112345678','致远园6栋406',now(),'shouji3.png','我这个宝贝很值，保护的很好，看起来就和新的一样','1');
insert into onlinemall_goods
(goodsid,parentid,speciesid,userid,goodstitle,goodsprice,goodsneworold,goodstelphone,nowaddress,goodsregtime,goodsimg,goodsdetail,goodsstatus)
values('19',1,13,'1','ipad',2500.0,'全新','15112345678','致远园6栋406',now(),'shouji4.png','我这个宝贝很值，保护的很好，看起来就和新的一样','1');
insert into onlinemall_goods
(goodsid,parentid,speciesid,userid,goodstitle,goodsprice,goodsneworold,goodstelphone,nowaddress,goodsregtime,goodsimg,goodsdetail,goodsstatus)
values('20',1,13,'3','平板',1200.0,'全新','15112345678','致远园6栋413',now(),'pingban1.png','我这个宝贝很值，保护的很好，看起来就和新的一样','1');
insert into onlinemall_goods
(goodsid,parentid,speciesid,userid,goodstitle,goodsprice,goodsneworold,goodstelphone,nowaddress,goodsregtime,goodsimg,goodsdetail,goodsstatus)
values('21',1,13,'2','平板',1300.0,'全新','15112345678','致远园6栋413',now(),'pingban2.png','我这个宝贝很值，保护的很好，看起来就和新的一样','1');
insert into onlinemall_goods
(goodsid,parentid,speciesid,userid,goodstitle,goodsprice,goodsneworold,goodstelphone,nowaddress,goodsregtime,goodsimg,goodsdetail,goodsstatus)
values('22',1,13,'1','平板',1300.0,'全新','15112345678','致远园6栋413',now(),'pingban3.png','我这个宝贝很值，保护的很好，看起来就和新的一样','1');
insert into onlinemall_goods
(goodsid,parentid,speciesid,userid,goodstitle,goodsprice,goodsneworold,goodstelphone,nowaddress,goodsregtime,goodsimg,goodsdetail,goodsstatus)
values('23',1,13,'1','平板',1250.0,'全新','15112345678','致远园6栋413',now(),'pingban4.png','我这个宝贝很值，保护的很好，看起来就和新的一样','1');
insert into onlinemall_goods
(goodsid,parentid,speciesid,userid,goodstitle,goodsprice,goodsneworold,goodstelphone,nowaddress,goodsregtime,goodsimg,goodsdetail,goodsstatus)
values('24',1,13,'1','平板',1500.0,'非全新','15112345678','致远园6栋413',now(),'pingban5.png','我这个宝贝很值，保护的很好，看起来就和新的一样','1');
insert into onlinemall_goods
(goodsid,parentid,speciesid,userid,goodstitle,goodsprice,goodsneworold,goodstelphone,nowaddress,goodsregtime,goodsimg,goodsdetail,goodsstatus)
values('25',1,13,'3','平板',1200.0,'全新','15112345678','致远园6栋413',now(),'pingban6.png','我这个宝贝很值，保护的很好，看起来就和新的一样','1');
insert into onlinemall_goods
(goodsid,parentid,speciesid,userid,goodstitle,goodsprice,goodsneworold,goodstelphone,nowaddress,goodsregtime,goodsimg,goodsdetail,goodsstatus)
values('26',1,13,'1','平板',1200.0,'非全新','15112345678','致远园6栋413',now(),'pingban7.png','我这个宝贝很值，保护的很好，看起来就和新的一样','1');
insert into onlinemall_goods
(goodsid,parentid,speciesid,userid,goodstitle,goodsprice,goodsneworold,goodstelphone,nowaddress,goodsregtime,goodsimg,goodsdetail,goodsstatus)
values('27',1,13,'3','平板',1700.0,'全新','15112345678','致远园6栋413',now(),'pingban8.png','我这个宝贝很值，保护的很好，看起来就和新的一样','1');
insert into onlinemall_goods
(goodsid,parentid,speciesid,userid,goodstitle,goodsprice,goodsneworold,goodstelphone,nowaddress,goodsregtime,goodsimg,goodsdetail,goodsstatus)
values('28',1,13,'3','平板',1200.0,'全新','15112345678','致远园6栋413',now(),'pingban9.png','我这个宝贝很值，保护的很好，看起来就和新的一样','1');
insert into onlinemall_goods
(goodsid,parentid,speciesid,userid,goodstitle,goodsprice,goodsneworold,goodstelphone,nowaddress,goodsregtime,goodsimg,goodsdetail,goodsstatus)
values('29',1,13,'2','平板',1200.0,'全新','15112345678','致远园6栋413',now(),'pingban10.png','我这个宝贝很值，保护的很好，看起来就和新的一样','1');
insert into onlinemall_goods
(goodsid,parentid,speciesid,userid,goodstitle,goodsprice,goodsneworold,goodstelphone,nowaddress,goodsregtime,goodsimg,goodsdetail,goodsstatus)
values('30',3,25,'2','动感音箱',1200.0,'9成新','15112345678','致远园6栋413',now(),'ad3.jpg','吐血大甩卖','1');

#商品的图片表，多张图片

insert into onlinemall_goodsimages(imagename,goodsid) values('10001.jpg','1');
insert into onlinemall_goodsimages(imagename,goodsid) values('shouji5.png','2');
insert into onlinemall_goodsimages(imagename,goodsid) values('shouji6.png','3');
insert into onlinemall_goodsimages(imagename,goodsid) values('shouji7.png','4');
insert into onlinemall_goodsimages(imagename,goodsid) values('shouji8.png','5');
insert into onlinemall_goodsimages(imagename,goodsid) values('shouji9.png','6');
insert into onlinemall_goodsimages(imagename,goodsid) values('shouji10.png','7');
insert into onlinemall_goodsimages(imagename,goodsid) values('shouji11.png','8');
insert into onlinemall_goodsimages(imagename,goodsid) values('shouji13.png','9');
insert into onlinemall_goodsimages(imagename,goodsid) values('shouji14.png','10');
insert into onlinemall_goodsimages(imagename,goodsid) values('shouji15.png','11');
insert into onlinemall_goodsimages(imagename,goodsid) values('shouji17.png','12');
insert into onlinemall_goodsimages(imagename,goodsid) values('shouji18.png','13');
insert into onlinemall_goodsimages(imagename,goodsid) values('shouji19.png','14');
insert into onlinemall_goodsimages(imagename,goodsid) values('shouji20.png','15');
insert into onlinemall_goodsimages(imagename,goodsid) values('shouji1.png','16');
insert into onlinemall_goodsimages(imagename,goodsid) values('shouji2.png','17');
insert into onlinemall_goodsimages(imagename,goodsid) values('shouji3.png','18');
insert into onlinemall_goodsimages(imagename,goodsid) values('shouji4.png','19');
insert into onlinemall_goodsimages(imagename,goodsid) values('pingban1.png','20');
insert into onlinemall_goodsimages(imagename,goodsid) values('pingban2.png','21');
insert into onlinemall_goodsimages(imagename,goodsid) values('pingban3.png','22');
insert into onlinemall_goodsimages(imagename,goodsid) values('pingban4.png','23');
insert into onlinemall_goodsimages(imagename,goodsid) values('pingban5.png','24');
insert into onlinemall_goodsimages(imagename,goodsid) values('pingban6.png','25');
insert into onlinemall_goodsimages(imagename,goodsid) values('pingban7.png','26');
insert into onlinemall_goodsimages(imagename,goodsid) values('pingban8.png','27');
insert into onlinemall_goodsimages(imagename,goodsid) values('pingban9.png','28');
insert into onlinemall_goodsimages(imagename,goodsid) values('pingban10.png','29');
insert into onlinemall_goodsimages(imagename,goodsid) values('ad3.png','30');


#商品的交换物品表

insert into onlinemall_swap
(swapid, parentid,speciesid, userid, swaptitle, swapneworold, swaptelphone, swapregtime, swapimg, swapdetail, swapstatus, swaparea, swapaim)
values('30',2,14,'3','电脑','全新','15112345678',now(),'diannao3.png','我这个宝贝很值，保护的很好，看起来就和新的一样','1','致远园6栋413','锤子手机');
insert into onlinemall_swap
(swapid, parentid,speciesid, userid, swaptitle, swapneworold, swaptelphone, swapregtime, swapimg, swapdetail, swapstatus, swaparea, swapaim)
values('31',2,14,'2','笔记本1','全新','15112345678',now(),'bijiben1.png','我这个宝贝很值，保护的很好，看起来就和新的一样','1','致远园6栋413','锤子手机');
insert into onlinemall_swap
(swapid, parentid,speciesid, userid, swaptitle, swapneworold, swaptelphone, swapregtime, swapimg, swapdetail, swapstatus, swaparea, swapaim)
values('32',2,14,'1','游戏笔记本','全新','15112345678',now(),'bijiben2.png','我这个宝贝很值，保护的很好，看起来就和新的一样','1','致远园6栋413','锤子手机');
insert into onlinemall_swap
(swapid, parentid,speciesid, userid, swaptitle, swapneworold, swaptelphone, swapregtime, swapimg, swapdetail, swapstatus, swaparea, swapaim)
values('33',2,14,'4','戴尔笔记本','全新','15112345678',now(),'bijiben3.png','我这个宝贝很值，保护的很好，看起来就和新的一样','1','致远园6栋413','锤子手机');
insert into onlinemall_swap
(swapid, parentid,speciesid, userid, swaptitle, swapneworold, swaptelphone, swapregtime, swapimg, swapdetail, swapstatus, swaparea, swapaim)
values('34',2,14,'4','联想笔记本','全新','15112345678',now(),'bijiben4.png','我这个宝贝很值，保护的很好，看起来就和新的一样','1','致远园6栋413','锤子手机');
insert into onlinemall_swap
(swapid, parentid,speciesid, userid, swaptitle, swapneworold, swaptelphone, swapregtime, swapimg, swapdetail, swapstatus, swaparea, swapaim)
values('35',2,14,'3','macbook','全新','15112345678',now(),'bijiben5.png','我这个宝贝很值，保护的很好，看起来就和新的一样','1','致远园6栋413','锤子手机');
insert into onlinemall_swap
(swapid, parentid,speciesid, userid, swaptitle, swapneworold, swaptelphone, swapregtime, swapimg, swapdetail, swapstatus, swaparea, swapaim)
values('36',2,14,'2','鸿基笔记本','全新','15112345678',now(),'bijiben6.png','我这个宝贝很值，保护的很好，看起来就和新的一样','1','致远园6栋413','锤子手机');
insert into onlinemall_swap
(swapid, parentid,speciesid, userid, swaptitle, swapneworold, swaptelphone, swapregtime, swapimg, swapdetail, swapstatus, swaparea, swapaim)
values('37',2,14,'1','ibm笔记本','全新','15112345678',now(),'bijiben7.png','我这个宝贝很值，保护的很好，看起来就和新的一样','1','致远园6栋413','锤子手机');
insert into onlinemall_swap
(swapid, parentid,speciesid, userid, swaptitle, swapneworold, swaptelphone, swapregtime, swapimg, swapdetail, swapstatus, swaparea, swapaim)
values('38',2,14,'1','台式电脑','全新','15112345678',now(),'taishi1.png','我这个宝贝很值，保护的很好，看起来就和新的一样','1','致远园6栋413','锤子手机');


