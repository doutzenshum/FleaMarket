#用户表
create  table onlinemall_user(
	userid  varchar(100)  primary key, 
	username varchar(50),     
	userpass varchar(50),    	#用户是否通过审核
	userphonenumber varchar(50),#用户电话号码
	useremail varchar(50),		#用户邮箱
	userheadimg varchar(200),   #用户头像 
	userregtime date,			#用户注册时间
	useracticode varchar(50),	#用户邮箱属性(激活码)
	userstatus int,				#用户邮箱属性(激活状态)
	userisonline int,			#用户是否在线
	userrealname varchar(50),	#用户真实名称
	usersex varchar(50),		#用户的性别
	userbirthday date ,			#用户的生日
	userliveplace varchar(200),	#用户的现居地
	userhometown varchar(200),	#用户的家乡
	usera varchar(1000),
	userb varchar(1000),
	userc varchar(1000),
	userd varchar(1000),
	usere varchar(1000)
);


#类别表
create table onlinemall_species(
	speciesid int primary key auto_increment,#类别id
	parentid int,				#父类别id
	speciesname varchar(50),	#类别名字
	speciesa varchar(1000),
	speciesb  varchar(1000),
	speciesc  varchar(1000)
);


#用户发布的商品表
create table onlinemall_goods(
	goodsid varchar(100) primary key ,#商品id
	speciesid int,  #类别id,
	parentid int ,	#父类别id,这里用两个阶级可以让查询更加方便
	userid  varchar(100), #用户id
	goodstitle varchar(50),  #商品标题
	goodsprice  double(9,2), #商品现价
	goodsrealprice double(9,2), #商品原价
	goodsneworold varchar(50), #是否新旧
	goodsisbargain int , #是否接受讲价
	goodsissend int ,	#是否支持送货上门
	goodstelphone varchar(50), #商品联系
	goodsregtime  date ,	#商品发布时间
	goodsimg varchar(1000) , #商品默认缩略图
	goodsdetail varchar(3000),#商品详细
	goodsstatus varchar(10) , #商品状态
	nowaddress varchar(50),#商品所在地
	goodsedittime date,	#商品修改时间
	goodssuccesstime date,#商品成交时间
	goodsa  varchar(1000),
	goodsb  varchar(1000),
	goodsc varchar(1000)
);

#商品的图片表，多张图片
create table onlinemall_goodsimages(
    imageid int primary key auto_increment, #图片ID
	imagename varchar(100),	#图片名
    goodsid varchar(100)    #物品id
);

#商品的交换物品表
create table onlinemall_swap(
	swapid varchar(100) primary key ,#交换商品Id
	speciesid int, #类别id
	parentid int , #父类别id
	userid  varchar(100), #用户id
	swaptitle varchar(50),#商品标题
	swapneworold varchar(50), #商品新旧
	swaptelphone varchar(50), #电话
	swapregtime  date ,  #商品发布时间
	swapimg varchar(1000), #交换的商品缩略图
	swapdetail varchar(3000), #交换商品的详细
	swapstatus varchar(10) , #交换商品的状态
	swapedittime date, #交换商品的注册时间
    swaparea  varchar(200), #交换商品的地址
	swapaim  varchar(50), #交换的目标商品
	swapa  varchar(1000), 
	swapb  varchar(1000),
	swapc varchar(1000)
);

#心愿求购单
create table onlinemall_wish(
   wishid  int(11) primary key auto_increment,
   userid  varchar(100),  #用户id
   wishtitle varchar(50), #求购标题
   wishcontent varchar(1000),#心愿内容
   wishcontact varchar(1000),#心愿联系方式
   wishtime date,			 #求购时间
   wisha varchar(1000),
   wishb varchar(1000)		
);


#联系我们表
create table onlinemall_advice(
	adviceid int primary key auto_increment,
	advicename varchar(100),           #提建议人姓名
	adviceemail varchar(100),		   #提建议人邮箱
	adviceaddress varchar(100),		   #提建议人地址
	advicecontent varchar(500)		   #建议内容
);

#主题
create table onlinemall_topic(
	topicid int  primary key auto_increment,  
	userid  varchar(100),       #用户ID
	goodsid varchar(50),		#物品id
	topicdetail varchar(1000),  #主题描述
	topictime date ,			
	parentid  varchar(50),		#父类别id
	topica varchar(1000),
	topicb varchar(1000),
	topicc varchar(1000)
);

#好友
create table onlinemall_friend(		
	id varchar(50) primary key,		
	currentuserid varchar(50),		#当前的用户id
	friendid varchar(50)			#好友id
);

#聊天
create table onlinemall_chat(			
	chatid varchar(50) primary key,
	senduserid varchar(50),			 #发货人id
	receiveruserid varchar(50),		 #收货人id
	status int,                      #状态
	sendtime date,					 #发送时间
	sendcontent varchar(1000),       #发送内容
	remark varchar(2000)			 #备注(补充说明的提醒)
);


alter table onlinemall_swap
      add constraint FK_swap_userid
          foreign key(userid) references onlinemall_user(userid);
alter table onlinemall_wish
      add constraint FK_wish_userid
          foreign key(userid) references onlinemall_user(userid);
alter table onlinemall_goodsimages
      add constraint FK_goods_images
          foreign key(goodsid) references onlinemall_goods(goodsid);
alter table onlinemall_goods
      add constraint FK_goods_userid
          foreign key(userid) references onlinemall_user(userid);
alter table onlinemall_goods
		add constraint FK_goods_speciesid
			  foreign key(speciesid) references onlinemall_species(speciesid);
			  
alter table onlinemall_topic 
		add constraint FK_topic_topicid
			foreign key(userid) references onlinemall_user(userid);

alter table onlinemall_chat
		add constraint FK_chat_senduser
			  foreign key(senduserid) references onlinemall_user(userid);
			  			  
alter table onlinemall_chat
		add constraint FK_chat_receiveruser
			  foreign key(receiveruserid) references onlinemall_user(userid);

alter table onlinemall_friend
		add constraint FK_friendid_userid
			  foreign key(friendid) references onlinemall_user(userid);		  
alter table onlinemall_friend
		add constraint FK_user_userid
			  foreign key(currentuserid) references onlinemall_user(userid);

commit;
			
