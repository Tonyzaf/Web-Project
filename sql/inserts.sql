USE web;

/*Insert Users for Map testing*/
INSERT INTO users (isadmin,username,email,password) VALUES (false,"user1","user1","AAAaaa!1");
INSERT INTO users (isadmin,username,email,password) VALUES (false,"user2","user2","AAAaaa!1");
INSERT INTO users (isadmin,username,email,password) VALUES (false,"user3","user3","AAAaaa!1");
INSERT INTO users (isadmin,username,email,password) VALUES (false,"user4","user4","AAAaaa!1");
INSERT INTO users (isadmin,username,email,password) VALUES (false,"test","test","AAAaaa!1");
INSERT INTO users (isadmin,username,email,password) VALUES (true,"admin","admin","AAAaaa!1");

/*Insert Entries*/
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES (now(),"20",10,30);
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES (now(),"20",12,32);
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES (now(),"20",10,31);
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES (now(),"50",13,42);
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES (now(),"50",14,39);
INSERT INTO entries (entry_time,poi_id,user_id,attendance) VALUES (now(),"50",15,40);


INSERT INTO poitypes (id,poitype) VALUES ("20","type1");
INSERT INTO poitypes (id,poitype) VALUES ("20","type2");
INSERT INTO poitypes (id,poitype) VALUES ("20","type3");
INSERT INTO poitypes (id,poitype) VALUES ("50","type1");
INSERT INTO poitypes (id,poitype) VALUES ("50","type3");
INSERT INTO poitypes (id,poitype) VALUES ("50","type4");

INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Monday","00:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Monday","01:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Monday","02:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Monday","03:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Monday","04:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Monday","05:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Monday","06:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Monday","07:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Monday","08:00",5);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Monday","09:00",15);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Monday","10:00",25);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Monday","11:00",20);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Monday","12:00",30);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Monday","13:00",40);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Monday","14:00",36);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Monday","15:00",25);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Monday","16:00",20);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Monday","17:00",50);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Monday","18:00",40);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Monday","19:00",35);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Monday","20:00",20);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Monday","21:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Monday","22:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Monday","23:00",0);

INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Tuesday","00:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Tuesday","01:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Tuesday","02:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Tuesday","03:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Tuesday","04:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Tuesday","05:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Tuesday","06:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Tuesday","07:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Tuesday","08:00",6);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Tuesday","09:00",15);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Tuesday","10:00",26);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Tuesday","11:00",20);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Tuesday","12:00",32);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Tuesday","13:00",46);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Tuesday","14:00",36);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Tuesday","15:00",35);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Tuesday","16:00",21);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Tuesday","17:00",50);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Tuesday","18:00",40);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Tuesday","19:00",35);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Tuesday","20:00",22);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Tuesday","21:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Tuesday","22:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Tuesday","23:00",0);

INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Wednesday","00:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Wednesday","01:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Wednesday","02:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Wednesday","03:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Wednesday","04:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Wednesday","05:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Wednesday","06:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Wednesday","07:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Wednesday","08:00",4);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Wednesday","09:00",17);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Wednesday","10:00",29);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Wednesday","11:00",30);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Wednesday","12:00",37);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Wednesday","13:00",50);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Wednesday","14:00",28);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Wednesday","15:00",40);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Wednesday","16:00",45);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Wednesday","17:00",57);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Wednesday","18:00",35);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Wednesday","19:00",29);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Wednesday","20:00",19);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Wednesday","21:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Wednesday","22:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Wednesday","23:00",0);

INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Thursday","00:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Thursday","01:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Thursday","02:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Thursday","03:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Thursday","04:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Thursday","05:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Thursday","06:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Thursday","07:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Thursday","08:00",9);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Thursday","09:00",15);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Thursday","10:00",27);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Thursday","11:00",40);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Thursday","12:00",46);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Thursday","13:00",58);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Thursday","14:00",60);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Thursday","15:00",52);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Thursday","16:00",50);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Thursday","17:00",42);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Thursday","18:00",40);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Thursday","19:00",25);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Thursday","20:00",21);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Thursday","21:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Thursday","22:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Thursday","23:00",0);

INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Friday","00:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Friday","01:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Friday","02:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Friday","03:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Friday","04:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Friday","05:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Friday","06:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Friday","07:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Friday","08:00",7);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Friday","09:00",18);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Friday","10:00",23);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Friday","11:00",34);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Friday","12:00",42);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Friday","13:00",54);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Friday","14:00",67);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Friday","15:00",58);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Friday","16:00",55);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Friday","17:00",47);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Friday","18:00",42);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Friday","19:00",35);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Friday","20:00",26);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Friday","21:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Friday","22:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Friday","23:00",0);

INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Saturday","00:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Saturday","01:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Saturday","02:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Saturday","03:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Saturday","04:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Saturday","05:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Saturday","06:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Saturday","07:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Saturday","08:00",15);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Saturday","09:00",27);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Saturday","10:00",36);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Saturday","11:00",48);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Saturday","12:00",58);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Saturday","13:00",69);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Saturday","14:00",73);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Saturday","15:00",79);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Saturday","16:00",84);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Saturday","17:00",94);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Saturday","18:00",74);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Saturday","19:00",56);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Saturday","20:00",43);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Saturday","21:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Saturday","22:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Saturday","23:00",0);

INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Sunday","00:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Sunday","01:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Sunday","02:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Sunday","03:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Sunday","04:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Sunday","05:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Sunday","06:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Sunday","07:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Sunday","08:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Sunday","09:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Sunday","10:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Sunday","11:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Sunday","12:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Sunday","13:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Sunday","14:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Sunday","15:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Sunday","16:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Sunday","17:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Sunday","18:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Sunday","19:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Sunday","20:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Sunday","21:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Sunday","22:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("20","Sunday","23:00",0);








INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Monday","00:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Monday","01:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Monday","02:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Monday","03:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Monday","04:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Monday","05:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Monday","06:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Monday","07:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Monday","08:00",5);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Monday","09:00",15);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Monday","10:00",25);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Monday","11:00",20);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Monday","12:00",30);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Monday","13:00",40);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Monday","14:00",36);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Monday","15:00",25);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Monday","16:00",20);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Monday","17:00",50);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Monday","18:00",40);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Monday","19:00",35);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Monday","20:00",20);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Monday","21:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Monday","22:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Monday","23:00",0);

INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Tuesday","00:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Tuesday","01:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Tuesday","02:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Tuesday","03:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Tuesday","04:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Tuesday","05:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Tuesday","06:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Tuesday","07:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Tuesday","08:00",6);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Tuesday","09:00",15);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Tuesday","10:00",26);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Tuesday","11:00",20);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Tuesday","12:00",32);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Tuesday","13:00",46);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Tuesday","14:00",36);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Tuesday","15:00",35);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Tuesday","16:00",21);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Tuesday","17:00",50);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Tuesday","18:00",40);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Tuesday","19:00",35);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Tuesday","20:00",22);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Tuesday","21:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Tuesday","22:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Tuesday","23:00",0);

INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Wednesday","00:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Wednesday","01:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Wednesday","02:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Wednesday","03:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Wednesday","04:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Wednesday","05:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Wednesday","06:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Wednesday","07:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Wednesday","08:00",4);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Wednesday","09:00",17);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Wednesday","10:00",29);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Wednesday","11:00",30);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Wednesday","12:00",37);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Wednesday","13:00",50);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Wednesday","14:00",28);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Wednesday","15:00",40);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Wednesday","16:00",45);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Wednesday","17:00",57);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Wednesday","18:00",35);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Wednesday","19:00",29);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Wednesday","20:00",19);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Wednesday","21:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Wednesday","22:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Wednesday","23:00",0);

INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Thursday","00:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Thursday","01:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Thursday","02:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Thursday","03:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Thursday","04:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Thursday","05:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Thursday","06:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Thursday","07:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Thursday","08:00",9);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Thursday","09:00",15);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Thursday","10:00",27);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Thursday","11:00",40);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Thursday","12:00",46);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Thursday","13:00",58);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Thursday","14:00",60);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Thursday","15:00",52);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Thursday","16:00",50);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Thursday","17:00",42);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Thursday","18:00",40);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Thursday","19:00",25);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Thursday","20:00",21);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Thursday","21:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Thursday","22:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Thursday","23:00",0);

INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Friday","00:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Friday","01:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Friday","02:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Friday","03:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Friday","04:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Friday","05:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Friday","06:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Friday","07:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Friday","08:00",7);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Friday","09:00",18);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Friday","10:00",23);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Friday","11:00",34);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Friday","12:00",42);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Friday","13:00",54);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Friday","14:00",67);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Friday","15:00",58);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Friday","16:00",55);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Friday","17:00",47);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Friday","18:00",42);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Friday","19:00",35);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Friday","20:00",26);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Friday","21:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Friday","22:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Friday","23:00",0);

INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Saturday","00:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Saturday","01:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Saturday","02:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Saturday","03:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Saturday","04:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Saturday","05:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Saturday","06:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Saturday","07:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Saturday","08:00",15);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Saturday","09:00",27);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Saturday","10:00",36);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Saturday","11:00",48);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Saturday","12:00",58);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Saturday","13:00",69);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Saturday","14:00",73);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Saturday","15:00",79);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Saturday","16:00",84);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Saturday","17:00",94);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Saturday","18:00",74);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Saturday","19:00",56);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Saturday","20:00",43);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Saturday","21:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Saturday","22:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Saturday","23:00",0);

INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Sunday","00:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Sunday","01:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Sunday","02:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Sunday","03:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Sunday","04:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Sunday","05:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Sunday","06:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Sunday","07:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Sunday","08:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Sunday","09:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Sunday","10:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Sunday","11:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Sunday","12:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Sunday","13:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Sunday","14:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Sunday","15:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Sunday","16:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Sunday","17:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Sunday","18:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Sunday","19:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Sunday","20:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Sunday","21:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Sunday","22:00",0);
INSERT INTO poitimes (id,day,hour,popularity) VALUES ("50","Sunday","23:00",0);